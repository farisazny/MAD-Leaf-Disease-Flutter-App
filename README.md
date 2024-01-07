# MAD-Leaf-Disease-Flutter-App

## Progress:

1. **Leaf Disease API**
   - Utilizes the VGG16 Deep Learning model, pre-trained on numerous plants.
   - Predicts the type of diseases based on an input image of a leaf.
   - Built locally using Flask; run "Leaf Disease API.py" first.
   - Accessible via Postman using the POST method through the `/predict` route.

## Running the files:

### a. Place the LeafModel.h5 into the Models folder.
   - Download the LeafModel.h5 [here](https://drive.google.com/file/d/1n6spyS4-AnUtszy1_JwU09VcoJ0VNTOT/view?usp=sharing) and place it under `Leaf Disease API > Models`.

### b. Using Postman to test the API:
   1. Press the POST method.
   2. Click on Headers, add "Content-Type" as the Key, and "multipart/form-data" as the Value.
   3. Click on Body, add "img" as the Key, and upload the image as the Value.
   4. Press Send to initiate the GET request.

![Screenshot - Postman Test](/Screenshot%20-%20Postman%20Test.png)

## Things to add:

1. **Flutter Predict Page**
   - Develop UI to call the API and display predictions.
   - Prioritize development due to potential complexity in handling image data.

2. **Flutter Home Page**
   - Develop as the second step to establish the basics of the app.
   - Introduce users to the app's purpose and objectives.

3. **Flutter Login Page**
   - Authenticate users to access the application.
   - Develop last to ensure functionality of other features first.
