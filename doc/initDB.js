//初始化数据库
//root用户的 _id, name不能修改，password和email可以修改

 var fis = require('fis-cloud-kernel');
 var Base64 = require('js-base64').Base64;
 var user = {_id:"root", name:"root", password:"1111", email:"zhangying3210@gmail.com"};
 
 addUser(user);
 
 function addUser(user){
 	user._auth = Base64.encode(user.name + user.password);
	console.log(user._auth);
 	delete user.password;
 	fis.db.insert(fis.db.COLLECTION_LIST.user, user, user, {}, function(err, result){
 	if(err){
 		console.log(err);
 		process.exit();
 	}else{
 		console.log("db init success!");
 		process.exit();
 	}
	});
 };
 