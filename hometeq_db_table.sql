drop table if exists Product;


CREATE TABLE Product(
    prodId                  INT auto_increment,
    prodName                VARCHAR(200) not null,
    prodPicNameSmall        VARCHAR(200) not null,
    prodPicNameLarge        VARCHAR(200) not null,
    prodDescripShort        VARCHAR(1000), 
    prodDescripLong         VARCHAR(3000),
    prodPrice               DECIMAL(8,2) not null,
    prodQuantity            INT           not null,
    constraint              pr_pid_pk PRIMARY KEY (prodId)

);

INSERT INTO Product (prodName, prodPicNameSmall, prodPicNameLarge, prodDescripShort, prodDescripLong, prodPrice, prodQuantity)
VALUES 
('MacBook Air M1 2020', 'macbooksmall.jpg', 'macbook.jpg', 'Apples newest 13inch Macbook Air', 'All-Day Battery Life — Go longer than ever with up to 18 hours of battery life depending on use.
Powerful Performance — Take on everything from professional-quality editing to action- packed gaming with ease. 
The Apple M1 chip with an 8-core CPU delivers up to 3.5x faster performance than the previous generation while using far less power.
Superfast Memory — 8GB of unified memory makes your entire system speedy and responsive. 
That way, it can support tasks like memory-hogging multi-tab browsing and opening a huge graphic file quickly and easily.', '899.00', '10');

('Sony SRS-XE300 Speakers', 'speakerssmall.jpg', 'speakers.jpg' , 'Best selling Sony Wireless Speakers', 'The XE300 is easy to grab and take with you wherever you go. 
Its portable size and 24-hour battery make it the perfect partner for your next party. Power through any party with 24 hours of play time. 
Plus, our Ambient Noise Sensing technology helps save battery when you use your speaker outdoors. 
If you find yourself strapped for time, you do not need to worry. 
Just 10 minutes of quick charging will give you 70 minutes of play.', '139.00', '20');

('Toshiba UF3D 43 Inch Smart Fire TV', 'tvsmall.jpg', 'tv.jpg', 'Smooth, upscaled and more detailed viewing whatever you’re watching.', 'Watch 4K HDR content in all its glory on the all-new Ultra HD with Fire TV built-in. 
Dolby Vision HDR transforms your TV experience with ultra vivid picture quality.
Toshiba TRU picture technology provides smooth, upscaled and more detailed viewing whatever you’re watching.
With Dolby Atmos combined with Toshiba’s integrated speakers, designed by Onkyo, this 4K Ultra HD with 
Fire TV built-in Series has everything you need for a cinematic sound experience.', '239.00', '15')

('Razer Cynosa V2 Keyboard', 'keyboardsmall.jpg', 'keyboard.jpg', 'Keyboard with Soft Spring-Loaded Keys and RGB Chroma Lighting', 'For the true taste of full-blown RGB gaming, 
look no further than the Razer Cynosa V2. With individually backlit gaming keys powered by Razer Chroma RGB, 
customize the keyboard to your heart’s content and enjoy a new level of gaming immersion made possible by dynamic lighting effects. 
The Razer Cynosa V2’s sturdy build is tanky enough for those intense gaming sessions, 
and can shrug off the effects of any unfortunate spills.', '49.60', '30')

('Sony Playstation 5', 'ps5small.jpg', 'ps5.jpg', 'Newest cutting-edge console by Sony', 'The PS5 console unleashes new gaming possibilities that you never anticipated
Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers and 3D Audio, and an all-new generation of incredible PlayStation games
Lightning Speed - Harness the power of a custom CPU, GPU and SSD with Integrated I/O that rewrite the rules of what a PlayStation console can do
Stunning Games - marvel at incredible graphics and experience new PS5 features: Breathtaking Immersion - discover a deeper gaming experience with support for haptic feedback, 
adaptive triggers, and 3D Audio technology', '479.99', '20')
