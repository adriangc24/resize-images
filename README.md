# Resize Images Processing API

This is an Image Processing API built with Nest.js that allows you to request image processing tasks to generate variants in different resolutions.

## Architecture

The project follows a modular architecture pattern provided by Nest.js framework. It utilizes Nest.js modules, controllers, services, and repositories to implement the image processing functionality. The image resizing is performed using the Sharp library.

The REST API exposes the following endpoints:

- `POST /task`: Creates a new image processing task. The image file to process should be included in the request body.

- `GET /task/:taskId`: Retrieves the status of a specific image processing task identified by its ID.

## Configuration

Before running the API, follow these steps for configuration:

1. Install the required dependencies by running `npm install`.

2. Configure the environment variables in the `.env` file (or rename `.env.example` to `.env`):
   - `PORT`: The port on which the API will run (default is 3000).
   - Other configuration parameters like database connection, if applicable.

## Usage

1. Start the server by running `npm start`.

2. Send an image processing request using the `POST /task` endpoint. Attach the image file in the request body.

3. Use the `GET /task/:taskId` endpoint to retrieve the status of a specific task. Replace `:taskId` with the actual task ID.

## Project Structure

- `src/controllers`: Contains the API controllers.
- `src/services`: Contains the business logic for processing tasks and resizing images.
- `src/modules`: Contains the Nest.js modules for organizing the application.
- `src/utils`: Contains utility functions and helper classes.
- `test`: Contains unit tests and integration tests.

## Testing

The project includes unit tests and integration tests to ensure the correctness of basic operations. The tests are located in the `test` directory and can be run using the command `npm test`.

## Contributing

If you want to contribute to this project, you can follow these steps:

1. Fork the repository.

2. Create a new branch for your feature (`git checkout -b feature/new-feature`).

3. Make the necessary changes and commit them (`git commit -am 'Add new feature'`).

4. Push the branch (`git push origin feature/new-feature`).

5. Create a pull request on GitHub for your changes to be reviewed and merged.

## Author

Adrián González