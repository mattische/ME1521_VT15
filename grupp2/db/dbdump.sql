DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`username`, `password`) VALUES
('admin',   'sabel'),
('kent',    'kentkent'),
('morran',  'morranmorran');

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `heading` varchar(50) NOT NULL COMMENT 'Heading for blogpost',
  `body` text NOT NULL COMMENT 'The body of the blog-post',
  `created_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when blog-post was created',
  `username` varchar(20) NOT NULL COMMENT 'FK - references users.username (PK)',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `posts` (`id`, `heading`, `body`, `created_at`, `username`) VALUES
(1,    'Vilken bra heading',        'Bacon ipsum dolor amet pancetta short ribs corned beef pork chop tenderloin. Salami sirloin ball tip rump, pork shank boudin t-bone frankfurter ham hock. Shank spare ribs short loin ham hock, short ribs picanha andouille tail ball tip t-bone sirloin rump beef ribs cupim. Kielbasa venison tail, jerky beef swine tri-tip alcatra frankfurter. Ham hock tongue drumstick sirloin, biltong fatback ribeye tri-tip tenderloin swine hamburger meatball bacon shank kevin. Filet mignon prosciutto doner fatback pork loin capicola flank picanha.\r\n\r\nBrisket salami pig pork chop porchetta short loin capicola shank tenderloin turducken. Boudin pastrami flank swine, tongue pork shank landjaeger turducken filet mignon tenderloin. Bresaola cupim drumstick sirloin, spare ribs turkey shank pork loin boudin fatback corned beef doner ground round. Filet mignon fatback doner ribeye, meatball flank prosciutto pork loin salami rump chuck brisket. Meatloaf landjaeger porchetta biltong chicken frankfurter. Pork chop ground round salami t-bone frankfurter, tongue meatball.', '2015-02-06 09:50:45', 'kent'),
(2,    'Hej',  'Bacon ipsum dolor amet pancetta short ribs corned beef pork chop tenderloin. Salami sirloin ball tip rump, pork shank boudin t-bone frankfurter ham hock. Shank spare ribs short loin ham hock, short ribs picanha andouille tail ball tip t-bone sirloin rump beef ribs cupim. Kielbasa venison tail, jerky beef swine tri-tip alcatra frankfurter. Ham hock tongue drumstick sirloin, biltong fatback ribeye tri-tip tenderloin swine hamburger meatball bacon shank kevin. Filet mignon prosciutto doner fatback pork loin capicola flank picanha.\r\n\r\nBrisket salami pig pork chop porchetta short loin capicola shank tenderloin turducken. Boudin pastrami flank swine, tongue pork shank landjaeger turducken filet mignon tenderloin. Bresaola cupim drumstick sirloin, spare ribs turkey shank pork loin boudin fatback corned beef doner ground round. Filet mignon fatback doner ribeye, meatball flank prosciutto pork loin salami rump chuck brisket. Meatloaf landjaeger porchetta biltong chicken frankfurter. Pork chop ground round salami t-bone frankfurter, tongue meatball.\r\n\r\nBacon ipsum dolor amet pancetta short ribs corned beef pork chop tenderloin. Salami sirloin ball tip rump, pork shank boudin t-bone frankfurter ham hock. Shank spare ribs short loin ham hock, short ribs picanha andouille tail ball tip t-bone sirloin rump beef ribs cupim. Kielbasa venison tail, jerky beef swine tri-tip alcatra frankfurter. Ham hock tongue drumstick sirloin, biltong fatback ribeye tri-tip tenderloin swine hamburger meatball bacon shank kevin. Filet mignon prosciutto doner fatback pork loin capicola flank picanha.\r\n\r\nBrisket salami pig pork chop porchetta short loin capicola shank tenderloin turducken. Boudin pastrami flank swine, tongue pork shank landjaeger turducken filet mignon tenderloin. Bresaola cupim drumstick sirloin, spare ribs turkey shank pork loin boudin fatback corned beef doner ground round. Filet mignon fatback doner ribeye, meatball flank prosciutto pork loin salami rump chuck brisket. Meatloaf landjaeger porchetta biltong chicken frankfurter. Pork chop ground round salami t-bone frankfurter, tongue meatball.', '2015-02-06 09:51:05', 'kent'),
(3,    'LOLLIPOP',    '\r\n\r\nBrisket salami pig pork chop porchetta short loin capicola shank tenderloin turducken. Boudin pastrami flank swine, tongue pork shank landjaeger turducken filet mignon tenderloin. Bresaola cupim drumst',   '2015-02-06 09:51:26',   'morran'),
(4,    'OPEL',        'Bacon ipsum dolor amet pancetta short ribs corned beef pork chop tenderloin. Salami sirloin ball tip rump, pork shank boudin t-bone frankfurter ham hock. Shank spare ribs short loin ham hock, short ribs picanha andouille tail ball tip t-bone sirloin rump beef ribs cupim. Kielbasa venison tail, jerky beef swine tri-tip alcatra frankfurter. Ham hock tongue drumstick sirloin, biltong fatback ribeye tri-tip tenderloin swine hamburger meatball bacon shank kevin. Filet mignon prosciutto doner fatback pork loin capicola flank picanha.\r\n\r\nBrisket salami pig pork chop porchetta short loin capicola shank tenderloin turducken. Boudin pastrami flank swine, tongue pork shank landjaeger turducken filet mignon tenderloin. Bresaola cupim drumstick sirloin, spare ribs turkey shank pork loin boudin fatback corned beef doner ground round. Filet mignon fatback doner ribeye, meatball flank prosciutto pork loin salami rump chuck brisket. Meatloaf landjaeger porchetta biltong chicken frankfurter. Pork chop ground round salami t-bone frankfurter, tongue meatball.', '2015-02-06 09:51:39', 'morran');


DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` tinytext NOT NULL,
  `username` varchar(20) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comments` (`id`, `body`, `username`, `post_id`, `created_at`) VALUES
(1,    'den var inte bra den.',	      'kent',	  1,	     '2015-02-06 09:52:55'),
(2,    'Fy vad ful den var fast kanske',	  'kent',    2,		 '2015-02-06 09:53:14'),
(3,    'du e dum', 'morran',	3,		  '2015-02-06 09:53:29');


