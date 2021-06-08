# Cocktail App

## Development

Getting started on the full-fledged app development

### Things to download

1. `Python` - Get miniconda and install the required packages with the `env.yaml` in the server submodule
2. `Nodejs` - Get the latest LTS version
3. `Docker` - You need this to run coontainerized versions of the application/databases during development
4. `Caddy`  - This is used to reverse proxy traffic locally and potentially when the app is deployed on a machine

### Setting up Caddy

1. After downloading caddy
   1. Put it in a folder and rename it `caddy.exe`
   2. Add the folder to path
2. The command to run caddy is in the `Makefile`
   1. Open a terminal/shell
   2. Execute the following line `caddy run -watch -config caddy.json`

Your caddy is now listening on port 5000 and ready to reverse proxy to your backend and frontend app.

### Running the Frontend App

1. Go into the client folder
2. Run `npm install`
3. Once the packages have downloaded, run `npm start`
4. The development server should be running on port 3000 (`http://localhost:3000`). However, if you've set up caddy correctly just now, you can access the app via `http://localhost:5000`
   1. You should use the http://localhost:5000 address
   2. This will mitigate the CORS problem later when you need to interface with the backend app

### Running the Backend App

1. Open a shell/terminal
2. `cd` / Go into the server folder
3. Create the conda environment with the command `conda env create -f env.yaml -y`
4. After you're done, type `conda activate cocktail`
   1. The environment name based on the `env.yaml` file is `cocktail`
5. Open your pycharm and hit the debug button in the main.py
   1. You will find on the left side of pycharm on the line `if __name__ == '__main__'`
   2. Alternatively, you can just `python main.py` - but this won't have debug functionality, which means you can't set breakpoints.
