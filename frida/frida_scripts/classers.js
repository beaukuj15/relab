Java.perform(() => {

  var obj = Java.enumerateMethods('*com.twitter*!*') // com.example.demotest is application package name
  console.log("obj length: " + obj.length);
///var methods= JSON.stringify(groups, null," ")
///console.log(methods)

///var common =JSON.stringify(obj[0].classes[0],null," ")
///console.log("\x1b[32m","class-name "+" "+JSON.parse(common).name,"\n"+"\x1b[35m","Methods name"+" "+JSON.parse(common).methods)
///console.log("\x1b[32m", common);
var i =0;
//console.log(obj.length)
for (i=0;i<obj.length;i++){
  console.log("obj" +"::"+i)
var common =JSON.stringify(obj[i].classes[i],null," ")
console.log("\x1b[32m","class-name "+" "+JSON.parse(common).name)
var x;
for (x=0;x<JSON.parse(common).methods.length;x++)
{
  //console.log("methods"+ "::>"+x)
  //console.log("df")
console.log("\x1b[34m",JSON.parse(common).methods[x])


}

}
});
