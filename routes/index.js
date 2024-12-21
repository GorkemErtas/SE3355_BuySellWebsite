const express = require('express');
const router = express.Router();
const Product = require('../models/Product');

// Home Page
router.get('/', (req, res) => {
    Product.getAll((err, results) => {
        if (err) throw err;

        const categories = {};
        results.forEach(product => {
            categories[product.category] = (categories[product.category] || 0) + 1;
        });

        res.render('home', { categories, products: results });
    });
});


// Search Page
router.get('/search', (req, res) => {
    const query = req.query.q;
    if (query) {
        Product.search(query, (err, results) => {
            if (err) throw err;
            res.render('search', { products: results, query });
        });
    } else {
        res.render('search', { products: [], query: '' });
    }
});

// Detail Page
router.get('/product/:id', (req, res) => {
    const id = req.params.id;
    Product.getById(id, (err, results) => {
        if (err) throw err;
        if (results.length > 0) {
            res.render('detail', { product: results[0] });
        } else {
            res.send('Product not found');
        }
    });
});

module.exports = router;