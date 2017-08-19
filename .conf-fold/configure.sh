####################################
#Inicializar proyecto
    yarn init -y
##### Copiar archivo .gitignore
    cp .conf-fold/.gitignore .gitignore

####################################
# Instalar eslint
##### Instalacion de paquetes
    yarn add eslint eslint-plugin-import eslint-plugin-react eslint-plugin-jsx-a11y  --dev
##### Copiar archivo .eslitrc.json
    cp .conf-fold/.eslitrc.json .eslitrc.json

####################################
# Instalar React
    yarn add react react-dom

####################################
# Instalar Babel
##### Instalacion de paquetes de babel
    yarn add babel-core babel-loader --dev
##### Instalacion de presets
    yarn add babel-preset-env babel-preset-react --dev
##### Instalacion de loaders
########## Instalacion de loader para css json react y style ... loaders
        yarn add css-loader json-loader style-loader --dev
########## Tener cuidado con este loader ya que si no se especifica la version, se instala la version ^1.3.1 y no funciona
        yarn add react-hot-loader@^3.0.0-beta.6 --dev
########## Instalacion de loader para sass
        yarn add sass-loader node-sass --dev


####################################
# Instalar webpack
yarn add webpack webpack-dev-server --dev
