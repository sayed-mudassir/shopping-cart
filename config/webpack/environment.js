const { webpackConfig, merge } = require('@rails/webpacker')
const customConfig = require('./custom')

module.exports = merge(webpackConfig, customConfig)

// config/webpack/custom.js

const webpack = require('webpack')

module.exports = {
  plugins: [
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery'
    })
  ]
}
