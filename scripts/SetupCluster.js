var dbPass = "123456"
var clusterName = "dev01"

try {
  print('===============================> \n');
  print('Setting up InnoDB cluster \n');

  shell.connect(`root:${dbPass}@pm1:3306`)
  var cluster = dba.createCluster(clusterName);
  print('Adding instances to the cluster.');
  cluster.addInstance({ user: "root", host: "pm2", password: dbPass, port: "3306" })

  print('===============================> \n');
  print('.\nInstances successfully added to the cluster.');
  print('\nInnoDB cluster deployed successfully. \n');

} catch (e) {
  print('\nThe InnoDB cluster could not be created.\n\nError: ' + e.message + '\n');
}