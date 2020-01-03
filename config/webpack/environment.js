const { environment } = require("@rails/webpacker");
const webpack = require("webpack");
const coffee = require("./loaders/coffee");
environment.plugins.append(
"Provide",
new webpack.ProvidePlugin({
$: "jquery",
jQuery: "jquery",
Popper: ["popper.js", "default"]
})
);

const aliasConfig = {
jquery_ui: 'jquery-ui-dist/jquery-ui.js'
};

environment.config.set('resolve.alias', aliasConfig);

environment.loaders.prepend('coffee', coffee)
module.exports = environment;
