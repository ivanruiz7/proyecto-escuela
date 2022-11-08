var pol = require('./bd');
var md5 = require('md5');
const pool = require('./bd');

async function getUserbyUsernameAndPassword(user, password) {
    try {
        var query = 'select * from usuarios where usuario = ? and password = ? limit 1';
        var rows = await pool.query(query, [user , md5 (password)]);
        return rows[0];
    } catch (error) {
        console.log(error);
    } 
}

    async function insertusuario(obj){
    try {
        var query = 'insert into usuarios set ? ';
        var rows = await pool.query (query,[obj])
        return rows;
    } catch (error) {
        console.log(error) ;
        throw error ; 
    }
}


    module.exports = {getUserbyUsernameAndPassword,insertusuario}