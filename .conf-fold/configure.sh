
####################################
#Inicializar proyecto
    yarn init -y

####################################
# Instalar eslint
##### Instalacion de paquetes
    yarn global add eslint
    yarn add eslint eslint-config-standard eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-promise eslint-plugin-react eslint-plugin-standard --dev
##### Copiar archivo .eslitrc.json
    cp ./.conf-fold/.eslintrc .eslintrc



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
##########Instalar webpack
        yarn add webpack webpack-dev-server --dev


####################################
# Copiar codigo base y configuraciones
##### copiar archivo babelr
    cp ./.conf-fold/.babelrc .babelrc
##### Copiar archivo de configuracion de wbpack
    cp ./.conf-fold/webpack.config.js webpack.config.js
##### Copiar archivo .gitignore
    cp .conf-fold/.gitignore .gitignore
##### Copiar codigo base
    cp -rf ./.conf-fold/src ./src
    cp -rf ./.conf-fold/build ./build

##### Solicitar al usuario que copie y pegue bloque de codigo de package.json
echo "Porfavor copie el bloque de codigo en su package.json\n"
    cat .conf-fold/package.json

echo "\nDespues de copiar el bloque de codigo ejecutar"
echo "\nyarn run serve\n"
echo "Para inicializar el proyecto"

