
exports.name = 'init';
exports.usage = '';
exports.desc = 'init fis server';

exports.registry = function(commander){

    process.stdout.write('init cloud server : ');

    commander.action(function(){
        fis.server.init();
    });
}