var fs = require('fs');
var xml2js = require('xml2js');

var parser = new xml2js.Parser();

var file = process.argv[2];
console.log("XML file: "+file);

fs.readFile(__dirname + '/' + file, function(err, data) {
        parser.parseString(data, function (err, result) {
                if (err){
                        console.log(err);
                        console.log("Done: not well-formed XML document.");
                }else{
                        console.log(result);
                        console.log('File successfully parsed: well-formed XML document.');
                }
    });
});