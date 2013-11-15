//初始化数据库

 var fis = require('fis-cloud-kernel');
 var user = {_id:"root", name:"root", _auth:"emhhbmd5aW5nMTExMQ=="};
 fis.db.insert(fis.db.COLLECTION_LIST.user, user, user, {}, function(err, result){
 	if(err){
 		console.log(err);
 		process.exit();
 	}else{
 		console.log("db init success!");
 		process.exit();
 	}
 });