# NKRGO
## Que es React
Libreria orientada al disenio de interfaces de usuario el cual permite la rendizacion inmediata.

### Ventajas
* Facilita el desarrollo de Single page Application(SPA's).

* Gran rendimiento.

* Gestiona el dom de una manera optima, para la actualizacion automatica.

* Permite crear aplicaciones web complejas que utilizan un gran intercambio de datos

* Libreria basa en componentes 

* Comunidad creciente

### Como funciona?
1. Render

```
..
```



### Herramientas complementarias
#### Plugins Browser
1. React Developer Tools
Herramienta oficial de facebook para trabajar con react

2. React Detector
Herramienta que me permite detectar si una web fue creada con react


3. Show me the react
Muestra que componentes estan hechos directamente en pantalla


### Instalacion y Configuracion
1. Instalar eslint
    
    *Instalar paquetes

   `yarn add eslint eslint-plugin-import eslint-plugin-react eslint-plugin-jsx-a11y  --dev`
    
    *Copiar archivo .eslitrc.json

    `cp .conf-fold/.eslitrc.json .eslitrc.json`

2. Instalar React

    *Instalar paquetes

    `yarn add react react-dom`

3. Instalar Babel
* Instalacion de paquetes de babel

  `yarn add babel-core babel-loader --dev`

* Instalacion de presets

  `yarn add babel-preset-env babel-preset-react --dev`

* Instalacion de loaders
   - Instalacion de loaders para css y json
    
     `yarn add css-loader json-loader style-loader --dev`
    
    - Instalacion de loader para sass
    
      `yarn add sass-loader node-sass --dev`
    
    - **Soporte para hot loader**

      `yarn add react-hot-loader@^3.0.0-beta.6 --dev`

    
      ## Tener cuidado con este loader ya que si no se especifica la version, se instala la version ^1.3.1 y no funciona


4. Instalar webpack
    *Instalacion de paquetes 
    
    `yarn add webpack webpack-dev-server --dev`


#### Configuracion de webpack
+ **Resolve:** *Bloque en el cual se especifica cada una de las extenciones de los archivos que web pack tiene que resolver*
    ```  
    resolve: {
        extensions: ['.js', '.jsx', '.json', '.css', 'scss']
    },

    ```
+ **cache:** *Bloque en el cual se especifica si va a estar activado el cache. Es conveniente dejarla activa para que se mas velos la recarga*
    ```  
    cache: true,

    ```

+ **cache:** *Bloque en el cual se especifica si va a estar activado el cache. Es conveniente dejarla activa para que se mas velos la recarga*
    - **react-hot-loader/patch:**  *Activa Hot Module Reloading para react*
    - **webpack-dev-server/client?http://localhost:3000':**  *Activa Hot Module Reloading para react*
    - **react-hot-loader/patch:**  *Para que webpack enlace el servidor con el bundle final*

    ```  
    entry: [
        'react-hot-loader/patch', 
        'webpack-dev-server/client?http://localhost:3000', 
        'webpack/hot/only-dev-server', 
        './src/app.jsx'
    ],

    ```

+ **output:** *Bloque en el cual se define la ruta absoluta en donde se almacenara los archivos procesados*
    
    ```  
  output: {
    path: path.resolve(__dirname, 'build'),
    filename: 'app.js',
    publicPath: '/' /*  */
  },
    ```
    ### publicPath es un parametro necesario para el Hot Reloading

+ **rulers:** *Bloque en el cual se define las transformaciones, por cada transformacion que se requiera debera crearse una regla
   - **test:**  *Exprecion regular que apunte a las extenciones de archivos que queremos transformar*
   - **loader:**  *Nombre del loader necesario para hacer la transformacion* 
    
    ```  
    module:{
        rulers:{
            {
                test: /$/, 
                use: {
                        loader: 'nombre-loader'    
                }
            }
        }
        rulers:{
            {
                test: /$/, 
                use: {
                        loader: 'nombre-loader'    
                }
            }
        }
    }
     
    ```
+ **plugins:** *Plugins necesarios para usar el reload automatico*
    
    ```  
    plugins: [
        new webpack.HotModuleReplacementPlugin(),
        new webpack.NamedModulesPlugin
    ],
    devtool: 'inline-source-map',
    ```
+ **devServer:** *Parametros para el servidor*
   - **hot:**  *Especifica que vamo a utilizar el modulo de hot reload* 
   - **contentBase:**  *Defines donde va a estar la carpeta de archivos transformados* 

    ```  
    devServer: {
        hot: true,
        contentBase: endPath, /* */
        inline: true,/**/
        compress: true,
        port: port,
        publicPath: '/'
    }`
    ```


    