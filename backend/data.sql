\c family-feud

DROP TABLE IF EXISTS answer_options;
DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    question_main text NOT NULL PRIMARY KEY,
    question text NOT NULL
);
CREATE TABLE answers (
    id integer NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    answer text NOT NULL,
    question_main text NOT NULL REFERENCES questions ON DELETE CASCADE,
    vote integer NOT NULL
);
CREATE TABLE answer_options (
    id integer NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    answer_option text NOT NULL,
    answer_id integer NOT NULL REFERENCES answers ON DELETE CASCADE
);


INSERT INTO questions (question_main, question)

    VALUES ('pantry', 'Name one thing you always have in your pantry'),
           ('animal', 'Name an animal we eat that does not eat us'),
           ('late_work', 'What are the top reasons for being late to work?'),
           ('coffee', 'What might you put in your coffee?'),
           ('cabinet', 'What would you find in a home medicine cabinet?'),
           ('chore', 'Name a chore that people hate.'),
           ('food_bad', 'Name a food that frequently goes bad before you get the chance to eat it.'),
           ('number', 'Name an important number people often memorize.'),
           ('few_years', 'Name something that only happens once every few years.'),
           ('holidays', 'Things you don’t want to discuss during the holidays.'),
           ('out_of', 'Name something at home that people often run out of.'),
           ('invented', 'Name a way that people communicated before texting was invented.'),
           ('wedding', 'Name something guests do at a wedding reception.');


INSERT INTO answers (
              answer,
              question_main,
              vote
            )

    VALUES ('Beans','pantry', 28),
           ('Rice','pantry', 25),
           ('Potatoes','pantry', 21),
           ('Onions','pantry', 15),
           ('Flour','pantry', 10),
           ('Tigers','pantry', 1),
           ('Pig','animal', 30),
           ('Cow','animal', 25),
           ('Chicken','animal', 23),
           ('Lamb','animal', 18),
           ('Rabbit','animal', 10),
           ('DRAGON','animal', 1),
           ('Traffic','late_work', 30),
           ('Hit snooze too many times','late_work', 25),
           ('Car trouble ','late_work', 19),
           ('Bad weather','late_work', 13),
           ('Family obligations','late_work', 10),
           ('apocalypse','late_work', 1),
           ('Sugar','coffee', 26),
           ('Cream','coffee', 25),
           ('Ice','coffee', 18),
           ('Syrup','coffee', 15),
           ('Nothing','coffee', 10),
           ('tea','coffee', 1),
           ('Advil','cabinet', 29),
           ('Thermometer','cabinet', 25),
           ('Neosporin/antibacterial ointment','cabinet', 20),
           ('Bandages/Bandaid','cabinet', 11),
           ('grandma','cabinet', 1),
           ('Taking out the trash','chore', 30),
           ('Folding the laundry','chore', 21),
           ('Emptying the dishwasher','chore', 20),
           ('Cleaning the bathroom','chore', 17),
           ('Vacuuming','chore', 10),
           ('hand stands','chore', 1),
           ('Avocado','food_bad', 28),
           ('Banana','food_bad', 25),
           ('Fresh berries','food_bad', 23),
           ('Salad greens/lettuce','food_bad', 15),
           ('mushrooms','food_bad', 8),
           ('food','food_bad', 1),
           ('Phone number','number', 25),
           ('Social security number','number', 23),
           ('Driver’s license number','number', 20),
           ('Debit/credit card number','number', 15),
           ('Bank routing number','number', 8),
           ('Pie','number', 1),
           ('Eclipse','few_years', 27),
           ('Presidential election ','few_years', 25),
           ('Leap Year','few_years', 21),
           ('Olympics','few_years', 15),
           ('FIFA World Cup','few_years', 7),
           ('aliens','few_years', 1),
           ('Politics','holidays', 30),
           ('Religion','holidays', 25),
           ('Your love life','holidays', 19),
           ('Finances','holidays', 14),
           ('Parenting advice','holidays', 9),
           ('purple','holidays', 1),
           ('Milk','out_of', 30),
           ('Toilet paper ','out_of', 29),
           ('Bread','out_of', 18),
           ('Eggs','out_of', 13),
           ('Hand soap','out_of', 10),
           ('dogs','out_of', 1),
           ('Phone calls','invented', 30),
           ('Beeper/pager','invented', 24),
           ('Letters','invented', 20),
           ('Telegram','invented', 13),
           ('Carrier pigeon','invented', 10),
           ('mime','invented', 1),
           ('Dance','wedding', 30),
           ('Eat','wedding', 25),
           ('Drink','wedding', 20),
           ('Clap','wedding', 15),
           ('Take pictures','wedding', 10),
           ('run','wedding', 1);

INSERT INTO answer_options (
              answer_option,
              answer_id
            )

    VALUES ('onion', 4),
           ('rooster', 9),
           ('sheep', 10),
           ('bunny', 11),
           ('sleeping in', 14),
           ('snooze', 14),
           ('car', 15),
           ('car accident', 15),
           ('rain', 16),
           ('snow', 16),
           ('family', 17),
           ('milk', 20),
           ('creamer', 20),
           ('ice cube', 21),
           ('ice cubes', 21),
           ('ibuprofen', 25),
           ('neosporin', 27),
           ('antibacterial ointment', 27),
           ('bandages', 28),
           ('bandaid', 28),
           ('trash', 30),
           ('laundry', 31),
           ('doing the dishes', 32),
           ('dishwasher', 32),
           ('bathroom', 33),
           ('strawberries', 38),
           ('blueberries', 38),
           ('raspberries', 38),
           ('blackberries', 38),
           ('kale', 39),
           ('spinnach', 39),
           ('arugula', 39),
           ('cell phone number', 42),
           ('phone', 42),
           ('ssn', 43),
           ('license number', 44),
           ('license', 44),
           ('debit card', 45),
           ('credit card', 45),
           ('credit', 45),
           ('debit', 45),
           ('routing number', 46),
           ('election', 49),
           ('love', 56),
           ('love life', 56),
           ('beeper', 67),
           ('pager', 67),
           ('pigeon', 70),
           ('pictures', 76);

