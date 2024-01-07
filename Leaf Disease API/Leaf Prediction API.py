from flask import Flask, request, jsonify
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing.image import load_img, img_to_array
from tensorflow.keras.applications.vgg16 import preprocess_input
import numpy as np
from io import BytesIO

app = Flask(__name__)

# Load the model with the correct input shape
# Adjust target_size according to the input size expected by your LeafModel
leaf_disease_model = load_model('Model/LeafModel.h5')

label_names = ['Scab', 'Black rot', 'Cedar apple rust', 'Healthy',
               'Powdery mildew', 'healthy', 'Cercospora ',
               'Common rust', 'Leaf Blight', 'Healthy', 'Black rot',
               'Esca', 'Leaf blight', 'healthy', 'Bacterial spot', 'Healthy',
               'Bacterial spot', 'healthy', 'Early blight', 'Late blight',
               'healthy', 'Leaf scorch', 'healthy', 'Bacterial spot',
               'Early blight', 'Late blight', 'Leaf Mold', 'Septoria leaf spot',
               'Spider mites', 'Target Spot', 'Yellow Leaf Curl Virus', 'mosaic virus',
               'Healthy']

@app.route("/predict", methods=['POST'])
def predict_leaf_disease():
    try:
        print(request.files)
        img = request.files.get('img')
        print("Content Type:", img.content_type)
        print("Filename:", img.filename)

        if img is not None:
            # Debug: Print file content type and filename
            print("Content Type:", img.content_type)
            print("Filename:", img.filename)

            # Read the image bytes using io.BytesIO
            img_bytes = BytesIO(img.read())

            # Resize and preprocess the image
            img_array = img_to_array(load_img(img_bytes, target_size=(150, 150, 3)))
            img_array = np.expand_dims(img_array, axis=0)
            img_array = preprocess_input(img_array)

            # Make prediction
            predictions = leaf_disease_model.predict(img_array)

            # Get the predicted label and accuracy
            predicted_label = label_names[np.argmax(predictions)].title()
            accuracy = predictions[0][np.argmax(predictions)] * 100

            return jsonify({"Label Name": predicted_label, "Accuracy": accuracy})
        else:
            return jsonify({"error": "No image file found in the request."})

    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == "__main__":
    app.run(debug=True)
