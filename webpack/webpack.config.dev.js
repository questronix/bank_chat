const path = require('path');
const webpack = require('webpack');

const CleanWebpackPlugin = require('clean-webpack-plugin');
const { VueLoaderPlugin } = require('vue-loader');

const BASE_DIR = path.resolve(__dirname, '../');
const BUILD_DIR = path.resolve(__dirname, '../', 'dist/public');
const APP_DIR = path.resolve(__dirname, '../../', 'src/pages');

const js = require('../pipeline');

console.log(BASE_DIR);

let cleanOptions = {
  root:     BASE_DIR,
  verbose:  true,
  dry:      false
}

module.exports = {
  mode: 'development',
  watch: true,
  entry: js.entries,
  output: {
    filename: '[name]/[name]-bundle.js',
    path: BUILD_DIR
  },
  plugins: [
    new CleanWebpackPlugin(['dist'], cleanOptions),
    new VueLoaderPlugin()
  ],
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: 'vue-loader'
      },
      {
          test: /\.js$/,
          exclude: /node_modules/,
          include: APP_DIR,
          use: {
            loader: 'babel-loader',
            query: {
                presets: ['env']
            }
          }
      },
      {
        test:/\.(s*)css$/,
        use: [
          'vue-style-loader',
          'css-loader',
          'sass-loader'
        ]
      },
      {
          test: /\.(png|jp(e*)g|svg)$/,  
          use: [{
              loader: 'url-loader',
              options: { 
                  // limit: 8000, // Convert images < 8kb to base64 strings
                  name: './src/pages/img/[hash]-[name].[ext]'
              } 
          }]
      },
      {
         test: /\.(woff|woff2|eot|ttf|otf)$/,
         use: [
           'file-loader'
         ]
      }
    ]
  },
  stats: {
      colors: true
  }
};
