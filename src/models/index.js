const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: false,
  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.airport = require("./dataitem/airport.js")(sequelize, Sequelize);
db.audit = require("./audit/audit.js")(sequelize, Sequelize);
db.auditEvaluate = require("./audit/audit_evaluate.js")(sequelize, Sequelize);
db.auditMethod = require("./dataitem/audit_method.js")(sequelize, Sequelize);
db.checklist = require("./checklist/checklist.js")(sequelize, Sequelize);
db.checklistItem = require("./checklist/checklist_item.js")(sequelize, Sequelize);
db.company = require("./company/company.js")(sequelize, Sequelize);
db.file = require("./file/file.js")(sequelize, Sequelize);
db.correctiveMeasures = require("./finding/corrective_measures.js")(sequelize, Sequelize);
db.finding = require("./finding/finding.js")(sequelize, Sequelize);
db.findingType = require("./dataitem/finding_type.js")(sequelize, Sequelize);
db.followMeasures = require("./finding/follow_measures.js")(sequelize, Sequelize);
db.riskAnalyzeEvaluate = require("./finding/risk_analyze_evaluate.js")(sequelize, Sequelize);
db.process = require("./dataitem/process.js")(sequelize, Sequelize);
db.riskSource = require("./dataitem/risk_source.js")(sequelize, Sequelize);
db.rootAnalyze = require("./dataitem/root_analyze.js")(sequelize, Sequelize);
db.department = require("./dataitem/department.js")(sequelize, Sequelize);
db.role = require("./user/role.js")(sequelize, Sequelize);
db.rolePermission = require("./user/role_permission.js")(sequelize, Sequelize);
db.permission = require("./user/permission.js")(sequelize, Sequelize);
db.user = require("./user/user.js")(sequelize, Sequelize);






module.exports = db;
