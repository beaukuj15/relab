console.log("Enumerating methods of MainActivity");
Java.perform(function() {
  const groups = Java.enumerateMethods('*com.movistarmx*!*');
  console.log(JSON.stringify(groups, null, 2));
});
