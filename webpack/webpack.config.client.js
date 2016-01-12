var path = require('path');
var webpack = require('webpack');
ExtractTextPlugin = require('extract-text-webpack-plugin');

module.exports = {
  context: __dirname,
  entry: [
    './lib/core-js-no-number',
    'regenerator/runtime',
    '../app/main_client',
  ],
  output: {
    path: path.join(__dirname, 'assets'),
    filename: 'client.bundle.js',
    publicPath: '/assets/',
  },
  resolve: {
    extensions: ['', '.js', '.cjsx', '.sass', '.scss'],
    root: path.join(__dirname, '../app'),
  },
  module: {
    loaders: [
      {
        test: /\.jsx?$/,
        loader: 'babel?stage=0',
        exclude: /node_modules|lib/,
      },
      {
        test: /\.cjsx$/,
        loader: 'coffee!cjsx',
        exclude: /node_modules|lib/,
      },
      {
        test: /\.sass$/,
        loader: ExtractTextPlugin.extract('style', 'css!sass?indentedSyntax=true')
      },
      {
        test: /\.css$/,
        loader: 'style-loader!css-loader'
      },
    ],
  },
  plugins: [
    new webpack.PrefetchPlugin("react"),
    new webpack.PrefetchPlugin("react/lib/ReactComponentBrowserEnvironment"),
    new ExtractTextPlugin("client.bundle.css")
  ]
};
