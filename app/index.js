'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');
var yosay = require('yosay');

var PybottleGenerator = yeoman.generators.Base.extend({

    promptUserDialog: function() {
        var done = this.async();

        this.log(yosay(
            'Welcome to the great PyBottle generator!'
        ));

        var prompts = [{
            name: 'appName',
            message: 'What is your app\'s name ?'
        }];

        this.prompt(prompts, function (props) {
            this.appName = props.appName;
            done();
        }.bind(this));
    },

    scaffoldFolders: function(){
        this.mkdir("app");
        this.mkdir("views");
        this.mkdir("static");
        this.mkdir("static/css");
        this.mkdir("static/fonts");
        this.mkdir("static/img");
        this.mkdir("static/js");
    },

    copyNeededFiles: function(){
        this.copy("_app.py", "app/app.py");
        this.copy("_main.css", "static/css/main.css");

        this.copy('gitignore', '.gitignore')

        this.copy("_bootstrap.sh", "bootstrap.sh");
        this.copy("_run.sh", "run.sh");
        this.copy("_in-venv.sh", "in-venv.sh");
        this.copy("_requirements.txt", "requirements.txt");

        this.copy("_yeoman.png", "static/img/yeoman.png");

        var context = {
            site_name: this.appName
        };

        this.template("_bower.json", "bower.json", context);
        this.template("_index.tpl", "views/index.tpl", context);
    },

    end: function () {
        var done = this.async();
        this.bowerInstall("", function(){
        console.log("\nPlease run bootstrap.sh to install the python libs!\n");
        done();
    })
    }
});

module.exports = PybottleGenerator;
