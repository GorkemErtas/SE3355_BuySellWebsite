const db = require('../config/db');

class Product {
    static getAll(callback) {
        db.query('SELECT * FROM products', callback);
    }

    static search(query, callback) {
        const sql = `SELECT * FROM products WHERE 
                     ad_no LIKE ? OR 
                     description LIKE ? OR 
                     price LIKE ? OR 
                     city LIKE ? OR 
                     category LIKE ?`;
        const searchTerm = `%${query}%`;
        db.query(sql, [searchTerm, searchTerm, searchTerm, searchTerm, searchTerm], callback);
    }

    static getById(id, callback) {
        db.query('SELECT * FROM products WHERE id = ?', [id], callback);
    }
}

module.exports = Product;