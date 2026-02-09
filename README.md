# Sample Web UI for Xentara
This project contains a sample Web UI for Xentara. It requires Xentara, as well as a Xentara licence. You can get a Xentara trial licence under [Xentara Trail](https://try.xentara.io/).

The documentation for Xentara can be found at https://docs.xentara.io/xentara

This Web UI uses the Xentara Websocket connection. Docs can be found here:

- https://docs.xentara.io/xentara-websocket-api/


## Functionality
This Web UI reads values fron Xentara and displays it.

## Prerequisites
You need these tools to run the project:
- **Xentara**: Install the Xentara software. Xentara can be downloaded at https://download.xentara.io/
- **Web Server**: Install Python. Python can be downloaded at https://www.python.org/downloads/

## Running Xentara
Follow these steps to set up the project:

1. **Setup the Xentara configuration**:
   - Copy the content of the Xentara Config folder to one of the [default Config folders](https://docs.xentara.io/xentara/xentara_model_file_location.html).

2. **Create TLS Certificate**:
   - Open a terminal or command prompt
   - run the command `openssl req -nodes -x509 -newkey rsa:4096 -keyout xentara.key.pem -out xentara.pem -sha256 -days 36500` 
   - Copy the xentara.pem to the certs folder of the config
   - Copy the xentara.key.pem to the private folder of the config

3. **Configure WebSocket Settings**:
   - Open or create websocket-config.json in the mvp-ui-main folder.
   - Update the WebSocket credentials and connection details as needed.
   - Save the file. Update these values (username, password, host, port) whenever you need to change the WebSocket connection settings.

4. **Run Xentara**:
   - Open a terminal or command prompt.
   - navigate to your installation Folder of Xentara for example (C:\Program Files\Xentara\app)
   - Run Xentara.exe

## Running the Web UI Application
Follow these steps to start the web ui:

1. **Go to Project Folder**:
   - Open a terminal or command prompt.
   - Navigate to the project folder, then go to the `mvp-ui-main` folder.
   - Example command: `cd path\to\mvp-ui-main`.
   
2. **Start the Server**:
   - If Python is not installed, download and install it from python.org.
   - In the terminal, run: `python -m http.server 8008`.
   - This starts a web server on port 8008.

3. **Handle WebSocket Certificate**:
   - Open a browser and go to https://localhost:8080 (or https://<server-ip>:8080 for remote servers, e.g., https://192.168.2.45:8080).
   - Accept the Xentara certificate when prompted.
   - This step is required each time you use a new browser or clear browser data.

4. **Open the Application**:
   - Open a web browser (e.g., Google Chrome).
   - Go to: http://localhost:8008.
