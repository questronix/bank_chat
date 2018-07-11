const chassicommands = require('../../ChassiCommands/model/ChassiCommands');

module.exports.run = (context)=>{
  return chassicommands.getChassiCommands(context.input);
};
