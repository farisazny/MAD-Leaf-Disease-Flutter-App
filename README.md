# MAD-Leaf-Disease-Flutter-App

## Progress:

1. **Leaf Disease API**
   - The API we are currently using utilizes the VGG16 Deep Learning model, pre-trained on numerous plants.
   - It can predict the type of diseases based on an input image of a leaf.
   - Built locally using Flask, the API can be accessed via Postman using the POST method through the `/predict` route.

## Things to add:

1. Handle image data from Flutter and send it through the API.
2. Build multiple page endpoints with a Login Page.

## Running the files:

### a. Place the LeafModel.h5 into the Models folder.
   - Download the LeafModel.h5 [here](https://drive.google.com/file/d/1n6spyS4-AnUtszy1_JwU09VcoJ0VNTOT/view?usp=sharing) and place it under `Leaf Disease API > Models`.

### b. Using Postman to test the API:
   1. Press the POST method.
   2. Click on Headers, add "Content-Type" as the Key, and "multipart/form-data" as the Value.
   3. Click on Body, add "img" as the Key, and upload the image as the Value.
   4. Press Send to initiate the GET request.
