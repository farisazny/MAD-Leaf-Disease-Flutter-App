# MAD-Leaf-Disease-Flutter-App

App Idea: Creating simple application in order to predict whether a leaf is infected with a disease or not. This is to accelerate the process of identifying the areas of plantations that are infected so that farmers can plan better on how to mitigate this issue. With the help of a Deep Learning model trained on VGG-16 architecture, this model will able to help to detect diseases on plants.

## Meet the Team
1. **Faris Farhan bin Azlan (2014177)**  :monocle_face:
   - Building Machine Learning model
   - Building Local API on Flask
   - Deploying API online to Railway

2. **Muhammad Faris bin Musa (2013259)** :sunglasses:
   - Flutter UI/UX Designer
   - Creating Widgets
   - Flutter Page Routing

3. **Muhammad Ikmal Hafiz bin Jauffery (2016329)** :cowboy_hat_face:
   - Flutter Page Routing
   - Handling HTTP Requests
   - Backend Developer


## Part 1: iTaleem Project Requirements Checklist :dart:
- The use of Widgets to create your own UI :white_check_mark:
- The use of HTTP library for fetching data/img online :white_check_mark:
- Use your own API or any free or paid API. You can rely on more than 1 API provider :white_check_mark:
- Use of page routing to navigate between pages of your app :white_check_mark:



## Part 2: App Development Roadmap :vertical_traffic_light:

1. **Leaf Disease API** :white_check_mark:
   - Utilizes the VGG16 pre-trained deep learning model by Keras.
   - The model is tuned to learn about numerous plants diseases.
   - Predicts the type of diseases based on an input image of a leaf.
   - Built locally using Flask; run "Leaf Disease API.py" first.
   - Accessible via Postman using the POST method through the `/predict` route.

2. **Flutter Predict Page** :white_check_mark:
   - Develop UI to call the API and display predictions. 
   - Prioritize development due to potential complexity in handling image data.
  
3. **Flutter Home Page** :white_check_mark:
   - Develop as the second step to establish the basics of the app.
   - Introduce users to the app's purpose and objectives.

4. **Flutter Welcome Page** :white_check_mark:
   - Authenticate users to access the application.
   - Develop last to ensure functionality of other features first.

## Part 3: Leaf Disease API (Local & Railway Web Deployment) :train2:
As seen from a-c below, we first built the API locally. Then, we realized that running it locally and developing the Flutter app at the same time will cost a lot of compute power onto our machine.
As seen from point d onwards, we have deployed the API using Railway and can be accessed online. We subscribed to the $5 plan and deployed using Flask framework. 

### a. Place the LeafModel.h5 into the Models folder.
   - Download the LeafModel.h5 [here](https://drive.google.com/file/d/1n6spyS4-AnUtszy1_JwU09VcoJ0VNTOT/view?usp=sharing) and place it under `Leaf Disease API`.

### b. Using Postman to test the API:
   1. Press the POST method.
   2. Click on Headers, add "Content-Type" as the Key, and "multipart/form-data" as the Value.
   3. Click on Body, add "img" as the Key, and upload the image as the Value.
   4. Press Send to initiate the POST request.

<img src="/Screenshot%20-%20Postman%20Test.png" alt="Screenshot - Postman Test" style="width: 550px; height: 360px;">
### c. Run the API.py and main.dart simulataneously
   1. Make sure that the terminal has a python and dart file running.
   2. Note that API.py will tell you to use "127.0.0.1"
   3. But we will be using "10.0.2.2" port in main.dart since we're using an emulator.

![Screenshot - Setup to Run](/Screenshot%20-%20Setup%20to%20Run.png)

### d. Deploying the API online
   1. We have created a separate Github repo to contain our API files there.
   2. We provide Railway with the Github repo link and it will find the @app route to configure the server.
   3. The API needs to install all libraries needed from the requirements.txt.
   4. We tested the /testConnection route of our API for simplicity to make sure that the API is actually deployed.
   5. The API can be accessed here: https://flask-production-4847.up.railway.app/testConnection

![Screenshot - Railway API Deployment](/Screenshot%20-%20Railway%20API%20Deployment.png)

## Part 4: Final Flutter Application
- After we have setup the needed Leaf Disease API, we can now focus on developing the Flutter app. 
- Some **dependencies** uses were path_provider 2.0.2, image_picker 0.8.4 and http 0.13.3. All of these are updated in pubspec.yaml.
- For building **custom widgets**, we have components such as Drawer, List_Tile, Text_list in the Components folder.
- For pages, the app comprises of **4 pages**, which are Welcome Page, Home Page, About Page and Prediction Page.
- We have also set up **HTTPS image selector** in Prediction Page.
- The screenshots were obtained through a **mobile emulator** of Pixel 4a.

### a. User Interface

<div style="display: flex; justify-content: space-between;">
  <img src="/Screenshot%20-%20Welcome%20Page.png" alt="Screenshot - Welcome Page" style="width: 220px; height: 490px;">
  <img src="/Screenshot%20-%20Drawer.png" alt="Screenshot - Drawer" style="width: 220px; height: 490px;">
   <img src="/Screenshot%20-%20Dashboard.png" alt="Screenshot - Dashboard" style="width: 220px; height: 490px;">

</div>
<div style="display: flex; justify-content: space-between;">
   
   <img src="/Screenshot%20-%20Prediction.png" alt="Screenshot - Prediction" style="width: 220px; height: 490px;">
   <img src="/Screenshot%20-%20Prediction2.png" alt="Screenshot - Prediction2" style="width: 220px; height: 490px;">
   <img src="/Screenshot%20-%20About.png" alt="Screenshot - About" style="width: 220px; height: 490px;">
   </div>
   




