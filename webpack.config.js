/* eslint-disable */
const webpack = require('webpack')
/* eslint-disable */
const path = require('path')
/* eslint-disable */
const endPath = path.resolve(__dirname, 'build')
const port = 9001;
module.exports = {
  /* Que extenciones va resolviendo */
  resolve: {
    extensions: ['.js', '.jsx', '.json', '.css', 'scss']
  },
  /* Se le asigna a true para que sea mas veloz librareload  */
  cache: true,
  entry: [
    'react-hot-loader/patch', /* Activa Hot Module Reloading para react */
    'webpack-dev-server/client?http://localhost:'+port, /* Para que webpack enlace el servidor con el bundle final*/
    'webpack/hot/only-dev-server', 
    './src/app.jsx'
  ],
  output: {
    path: endPath,
    filename: 'app.js',
    publicPath: '/' /* Necesario para el Hot reloading */
  },
  /* module en lugar de louders de la version 1 */
  module:{
    /**
     * Por cada transformacion tenemos que definir una regla
     * {
     *   test: /$/, #exprecion regular
     *   use: '***-loader'    #transformacion que va a usar
     * }
     */
    rules: [
      /*babel*/
      {
        test: /\.(js|jsx)$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['env']
          }
        }
      },
    
      /*json*/
      {
        test: /\.json$/,
        use: {
          loader: 'json-loader'
        }
      },
      {
        test: /\.css$/,
        use: [
          'style-loader',
          {
            loader: 'css-loader',
            options: { modules:true }
          }
        ]
      },
      /*scss*/
      {
        test: /\.scss$/,
        exclude: /(node_modules|bower_components)/,
        use: [{
            loader: "style-loader" // creates style nodes from JS strings 
        }, {
            loader: "css-loader" // translates CSS into CommonJS 
        }, {
            loader: "sass-loader" // compiles Sass to CSS 
        }]
      },
      
    ]
  },
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NamedModulesPlugin
  ],
  devtool: 'inline-source-map',
  /* Configuracion del servidor */
  devServer: {
    hot: true, /* Especifica que vamo a utilizar el modulo de hot reload */
    contentBase: endPath, /* Defines donde va a estar la carpeta final*/
    inline: true,/* Permite hacer los cambios realizados al momento*/
    compress: true,
    port: port,
    publicPath: '/'
  }
}
