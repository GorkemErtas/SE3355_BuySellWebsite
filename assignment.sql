CREATE DATABASE buysell;

USE buysell;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad_no VARCHAR(200) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    city VARCHAR(200) NOT NULL,
    image VARCHAR(200) NOT NULL,
    category VARCHAR(200) NOT NULL
);

INSERT INTO products (ad_no, description, price, city, image, category)
VALUES 
('AD001', 'iPhone 14 128 Gb Siyah', 41999, 'İstanbul', '/images/iphone14.jpg', 'Electronics'),
('AD002', 'Asus Tuf Gaming A15 7.Nesil Ryzen 7 7435HS-RTX4050 6Gb-16Gb-512Gb Ssd-15.6inc-W11', 42753, 'Ankara', '/images/asustuf.jpg', 'Electronics'),
('AD003', 'Karşıyaka Deniz Manzaralı 2+1 Kiralık Daire', 17500, 'İzmir', '/images/kiralıkdaire.jpg', 'Real Estate'),
('AD004', '1400 m2 tarla', 1500000, 'Aydın', '/images/arsa.jpg', 'Real Estate'),
('AD005', 'Sehpalı Beyaz-Krem Koltuk Takımı', 45500, 'İstanbul', '/images/koltuktakımı.jpg', 'Furniture'),
('AD006', 'Bosch 4 Kapaklı No-Frost Buzdolabı', 99000, 'İzmir', '/images/bosch.jpg', 'Furniture'),
('AD007', '2024 SEAT LEON 1.0 eTSI 110 HP STYLE DSG', '1450000', 'İzmir', '/images/seat.jpg', 'Vehicles'),
('AD008', 'HATASIZ DEĞİŞENSİZ FIRSAT ARACI', 970000, 'İstanbul', '/images/ford.jpg', 'Vehicles'),
('AD009', '180 Kg Z Bar Halter Seti ve Dambıl Seti', 2500, 'Ankara', '/images/dambıl.jpg', 'Sport'),
('AD010', 'Az Kullanılmış Koşu Bandı', 10000, 'Bursa', '/images/koşubandı.jpg', 'Sport');
