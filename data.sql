

DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS categories (
            ID SERIAL PRIMARY KEY,
            category VARCHAR(200) NOT NULL,
            UNIQUE (category)
            );

CREATE TABLE IF NOT EXISTS videos (
            ID SERIAL PRIMARY KEY,
            link VARCHAR(200) NOT NULL,
            title VARCHAR(200) NOT NULL,
            author VARCHAR(200) NOT NULL,
            categoryid INT NOT NULL,
            duration VARCHAR(200) NOT NULL,
            ranking INT NOT NULL,
            FOREIGN KEY (categoryID) REFERENCES categories(ID),
            UNIQUE (link)
            );
            
CREATE TABLE IF NOT EXISTS users (
            ID SERIAL PRIMARY KEY,
            pseudo VARCHAR(200) NOT NULL,
            email VARCHAR(200) NOT NULL,
            pwd VARCHAR(200) NOT NULL,
            UNIQUE (pseudo, email)
            );



INSERT INTO categories (category) VALUES
                        ('Python'),
                        ('Javascript'),
                        ('HTML'),
                        ('CSS'),
                        ('Docker'),
                        ('Bash'),
                        ('Cloud'),
                        ('Cryptographie');

INSERT INTO videos (link, title, author, categoryid, duration, ranking) VALUES
    ('https://www.youtube.com/embed/NmM9HA2MQGI', 'Secret Key Exchange (Diffie-Hellman) - Computerphile', 'Computerphile', 8, '00:08:40', 4.94),
    ('https://www.youtube.com/embed/lsMQRaeKNDk', 'What is a REST API?', 'IBM Cloud', 7, '00:09:12', 4.89),
    ('https://www.youtube.com/embed/QJ4fODH6DXI', 'Kubernetes Concepts Explained in 9 minutes!', 'KodeKloud', 5, '00:09:50', 4.94),
    ('https://www.youtube.com/embed/Pt9LelJ0fL0', 'AZ-900 Episode 1 | Cloud Computing and Vocabulary | Microsoft Azure Fundamentals Full Course', 'Adam Marczak - Azure for Everyone', 7, '00:09:40', 4.99),
    ('https://www.youtube.com/embed/vsXMMT2CqqE', 'Key Exchange Problems - Computerphile', 'Computerphile', 8, '00:09:17', 4.98),
    ('https://www.youtube.com/embed/cqgtdkURzTE', 'Cryptography For Beginners', 'Coding Tech', 8, '00:45:17', 4.91),
    ('https://www.youtube.com/embed/h33Srr5J9nY', 'JavaScript ES6 Arrow Functions Tutorial', 'Web Dev Simplified', 2, '00:09:32', 4.95),
    ('https://www.youtube.com/embed/DHvZLI7Db8E', 'JavaScript Promises In 10 Minutes', 'Web Dev Simplified', 2, '00:11:31', 4.94),
    ('https://www.youtube.com/embed/s22eJ1eVLTU', 'What are Digital Signatures? - Computerphile', 'Computerphile', 8, '00:10:17', 4.96),
    ('https://www.youtube.com/embed/0TLDTodL7Lc', 'Transport Layer Security (TLS) - Computerphile', 'Computerphile', 8, '00:15:33', 4.96),
    ('https://www.youtube.com/embed/7MT1F0O3_Yw', 'DNS Cache Poisoning - Computerphile', 'Computerphile', 8, '00:11:04', 4.97),
    ('https://www.youtube.com/embed/uOfonONtIuk', 'How DNS Works - Computerphile', 'Computerphile', 8, '00:08:04', 4.95),
    ('https://www.youtube.com/embed/ciNHn38EyRc', 'Running an SQL Injection Attack - Computerphile', 'Computerphile', 8, '00:17:11', 4.93),
    ('https://www.youtube.com/embed/1S0aBV-Waeo', 'Buffer Overflow Attack - Computerphile', 'Computerphile', 8, '00:17:30', 4.96),
    ('https://www.youtube.com/embed/WIgCowf2rHE', 'Python : Chiffrement | Code César (Tuto Débutant / Intermédiaire)', 'Arthurus', 8, '00:08:25', 4.89),
    ('https://www.youtube.com/embed/QMhciTigcVM', 'Brute force | Python | Tuto débutant / intermédiaire', 'Arthurus', 8, '00:07:28', 4.94),
    ('https://www.youtube.com/embed/V9bTy0gbXIQ', 'Sécurité 1 : Introduction à la Cryptographie', 'L informateur', 8, '00:12:04', 4.96),
    ('https://www.youtube.com/embed/bKtFYnrDXFk', 'La Blockchain expliquée en emojis', 'Cookie connecté', 8, '00:12:45', 4.96),
    ('https://www.youtube.com/embed/RwbIMBSr8o8', 'Le cloud computing expliqué en 7 minutes', 'Cookie connecté', 7, '00:07:00', 4.93),
    ('https://www.youtube.com/embed/Al-E4C69UmQ', 'Comprendre les modèles de Cloud (IaaS, PaaS, SaaS, CaaS, FaaS)', 'Cookie connecté', 7, '00:10:09', 4.98),
    ('https://www.youtube.com/embed/suruNl8rupU', 'Why you need to learn Azure RIGHT NOW!! (become a cloud engineer) ft. The Packet Thrower', 'NetworkChuck', 7, '00:46:20', 4.73),
    ('https://www.youtube.com/embed/7KEygnLtRyE', 'AZ-900 Episode 3 | CapEx vs OpEx and their differences | Microsoft Azure Fundamentals Full Course', 'Adam Marczak - Azure for Everyone', 7, '00:05:13', 4.99),
    ('https://www.youtube.com/embed/TMynEWIE3SM', 'AZ-900 Episode 2 | Principle of economies of scale | Microsoft Azure Fundamentals Full Course', 'Adam Marczak - Azure for Everyone', 7, '00:04:21', 4.98),
    ('https://www.youtube.com/embed/MUVFMF9DgM0', 'AZ-900 Episode 24 | Azure DDoS Protection | Distributed Denial of Service', 'Adam Marczak - Azure for Everyone', 7, '00:05:00', 4.99),
    ('https://www.youtube.com/embed/9CVBohl6w0Q', 'AZ-900 Episode 5 | IaaS vs PaaS vs SaaS cloud service models | Microsoft Azure Fundamentals Course', 'Adam Marczak - Azure for Everyone', 7, '00:07:58', 4.99),
    ('https://www.youtube.com/embed/C-nNw1mGwzE', 'AZ-900 Episode 7 | Geographies, Regions & Availability Zones | Microsoft Azure Fundamentals Course', 'Adam Marczak - Azure for Everyone', 7, '00:14:51', 4.98),
    ('https://www.youtube.com/embed/NKEFWyqJ5XA', 'Microsoft Azure Fundamentals Certification Course (AZ-900) - Pass the exam in 3 hours!', 'freeCodeCamp.org', 7, '03:10:25', 4.95),
    ('https://www.youtube.com/embed/bgPuPSPZe2U', 'you need to learn AWS RIGHT NOW!! (Amazon Web Services)', 'NetworkChuck', 7, '00:07:37', 4.95),
    ('https://www.youtube.com/embed/3XFODda6YXo', 'AWS In 5 Minutes | What Is AWS? | AWS Tutorial For Beginners | AWS Training | Simplilearn', 'Simplilearn', 7, '00:05:29', 4.92),
    ('https://www.youtube.com/embed/-OBrKIlSt_Q', 'Oracle Cloud Infrastructure Overview - The true enterprise cloud', 'Oracle Cloud Infrastructure', 7, '00:04:34', 5.0),
    ('https://www.youtube.com/embed/qEU7OlE7MbQ', 'Créer et gérer des projets dans Google Cloud Platform - Démonstration Google Cloud Platform', 'SFEIR TV', 7, '00:05:41', 4.76),
    ('https://www.youtube.com/embed/NChhdOZV4sY', 'Kubernetes : l essentiel en 7 minutes', 'Cookie connecté', 5, '00:07:21', 4.94),
    ('https://www.youtube.com/embed/caXHwYC3tq8', 'Docker : comprendre l essentiel en 7 minutes', 'Cookie connecté', 5, '00:07:11', 4.93),
    ('https://www.youtube.com/embed/eGz9DS-aIeY', 'you need to learn Docker RIGHT NOW!! // Docker Containers 101', 'NetworkChuck', 5, '00:23:19', 4.94),
    ('https://www.youtube.com/embed/SXB6KJ4u5vg', 'Docker: Débuter de zéro avec Docker en français - Tutoriel 1/3', 'cocadmin', 5, '00:05:50', 4.95),
    ('https://www.youtube.com/embed/2vMEQ5zs1ko', 'Kubernetes vs. Docker: It s Not an Either/Or Question', 'IBM Cloud', 5, '00:08:03', 4.92),
    ('https://www.youtube.com/embed/eZpLjKv9xvA', 'run Linux on Windows Docker containers!!', 'NetworkChuck', 5, '00:37:58', 4.88),
    ('https://www.youtube.com/embed/LQjaJINkQXY', 'What is Dockerfile | How to create and build Dockerfile | Dockerfile Basic Commands', 'Automation Step by Step - Raghav Pal', 5, '00:10:09', 4.89),
    ('https://www.youtube.com/embed/Qw9zlE3t8Ko', 'Docker Compose in 12 Minutes', 'Jake Wright', 5, '00:12:00', 4.97),
    ('https://www.youtube.com/embed/Utf-A4rODH8', 'Building a container from scratch in Go - Liz Rice (Microscaling Systems)', 'Container Camp', 5, '00:19:03', 4.91),
    ('https://www.youtube.com/embed/iCGXtmVzzBk', 'Container Orchestration and Benefits', 'Oracle Linux', 5, '00:06:35', 5.0),
    ('https://www.youtube.com/embed/IvQDAc4fADU', 'Docker Volumes -  Create & Attach Volumes vs  Bind Mounts', 'Coded Tribe', 5, '00:14:36', 3.4),
    ('https://www.youtube.com/embed/YcAWluYkVXc', 'DOCKER -11. LES RÉSEAUX', 'xavki', 5, '00:12:57', 4.98),
    ('https://www.youtube.com/embed/3Ay2Vk4jySI', 'Python......when should you learn it?', 'NetworkChuck', 1, '00:06:25', 4.95),
    ('https://www.youtube.com/embed/qEr9iRX4K0o', '6 Python Tips and Tricks YOU Should Know', 'Kite', 1, '00:08:03', 4.79),
    ('https://www.youtube.com/embed/NE97ylAnrz4', 'Python Functions  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:09:27', 4.92),
    ('https://www.youtube.com/embed/JeznW_7DlB0', 'Python Object Oriented Programming (OOP) - For Beginners', 'Tech With Tim', 1, '00:53:05', 4.97),
    ('https://www.youtube.com/embed/XCcpzWs-CI4', 'Python Dictionaries  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:06:09', 4.91),
    ('https://www.youtube.com/embed/AhSvKGTh28Q', 'List Comprehension  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:07:43', 4.95),
    ('https://www.youtube.com/embed/KOdfpbnWLVo', 'Hello World in Python ||  Python Tutorial  ||  Python Programming', 'Socratica', 1, '00:02:47', 4.9),
    ('https://www.youtube.com/embed/NI26dqhs2Rk', 'Python Tuples  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:07:43', 4.93),
    ('https://www.youtube.com/embed/sBvaPopWOmQ', 'Sets in Python  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:06:34', 4.96),
    ('https://www.youtube.com/embed/25ovCm9jKfA', 'Lambda Expressions & Anonymous Functions ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:06:07', 4.92),
    ('https://www.youtube.com/embed/Qk0zUZW-U_M', 'Recursion, the Fibonacci Sequence and Memoization  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:08:01', 4.94),
    ('https://www.youtube.com/embed/ohCDWZgNIU0', 'Python Lists  ||  Python Tutorial  ||  Learn Python Programming', 'Socratica', 1, '00:05:43', 4.94),
    ('https://www.youtube.com/embed/4mX0uPQFLDU', 'Text Files in Python || Python Tutorial || Learn Python Programming', 'Socratica', 1, '00:06:19', 4.89),
    ('https://www.youtube.com/embed/c-I5S_zTwAc', 'Learn JAVASCRIPT in just 5 MINUTES (2020)', 'Aaron Jack', 2, '00:05:15', 4.9),
    ('https://www.youtube.com/embed/hdI2bqOjy3c', 'JavaScript Crash Course For Beginners', 'Traversy Media', 2, '01:40:30', 4.96),
    ('https://www.youtube.com/embed/j59qQ7YWLxw', 'Build A Calculator With JavaScript Tutorial', 'Web Dev Simplified', 2, '00:38:49', 4.94),
    ('https://www.youtube.com/embed/XF1_MlZ5l6M', 'Learn JavaScript Event Listeners In 18 Minutes', 'Web Dev Simplified', 2, '00:18:03', 4.98),
    ('https://www.youtube.com/embed/y17RuWkWdn8', 'Learn DOM Manipulation In 18 Minutes', 'Web Dev Simplified', 2, '00:18:37', 4.97),
    ('https://www.youtube.com/embed/HnXmI2UVZlU', 'This Is the Only Way to Truly Learn JavaScript', 'Chris Hawkes', 2, '00:15:42', 4.82),
    ('https://www.youtube.com/embed/e-5obm1G_FY', 'Learning Functional Programming with JavaScript - Anjana Vakil - JSUnconf', 'JSConf', 2, '00:29:57', 4.87),
    ('https://www.youtube.com/embed/3gKhcPLOFdA', '5 Vanilla JavaScript Projects for Beginners', 'Online Tutorials', 2, '00:03:13', 4.93),
    ('https://www.youtube.com/embed/02Xs2ySaXcs', 'JavaScript #1 - introduction', 'FormationVidéo', 2, '00:12:04', 4.99),
    ('https://www.youtube.com/embed/BvJYXl2ywUE', 'Introduction to HTML || Your First Web Page || Part 1', 'Web Dev Simplified', 3, '00:04:46', 4.95),
    ('https://www.youtube.com/embed/PypMN-yui4Y', 'Introduction to HTML || Basic HTML Elements || Part 2', 'Web Dev Simplified', 3, '00:10:28', 4.96),
    ('https://www.youtube.com/embed/8FqZZrbnwkM', 'Cours Complet HTML CSS - Tutoriel pour Débutants et Confirmés [Partie 1/3]', 'Pierre Giraud', 3, '01:23:03', 4.91),
    ('https://www.youtube.com/embed/HN4-7k0zC-Y', 'Cours Complet HTML CSS - Tutoriel pour Débutants et Confirmés [Partie 2/3]', 'Pierre Giraud', 3, '01:15:31', 4.93),
    ('https://www.youtube.com/embed/RUFK0mT0q2E', 'Cours Complet HTML CSS - Tutoriel pour Débutants et Confirmés [Partie 3/3]', 'Pierre Giraud', 3, '01:42:10', 4.94),
    ('https://www.youtube.com/embed/UB1O30fR-EE', 'HTML Crash Course For Absolute Beginners', 'Traversy Media', 3, '01:00:42', 4.96),
    ('https://www.youtube.com/embed/PlxWf493en4', 'HTML Tutorial - How to Make a Super Simple Website', 'freeCodeCamp.org', 3, '00:33:23', 4.92),
    ('https://www.youtube.com/embed/KgRENOnSCxE', 'How To Create A Complete Personal Portfolio Website Just using HTML And CSS | Pure HTML And CSS', 'Going-To Internet', 3, '00:39:16', 4.94),
    ('https://www.youtube.com/embed/srvUrASNj0s', 'Introduction To Responsive Web Design - HTML & CSS Tutorial', 'freeCodeCamp.org', 3, '04:11:04', 4.97),
    ('https://www.youtube.com/embed/XXrpsQqAlIQ', '3: Learn About HTML Elements and Attributes | Learn HTML and CSS | HTML Tutorial', 'Dani Krossing', 3, '00:05:38', 4.93),
    ('https://www.youtube.com/embed/1YO_5jXC-bo', '5: We Use Boxes in Websites | Learn HTML and CSS | HTML Tutorial | CSS Tutorial', 'Dani Krossing', 3, '00:07:04', 4.74),
    ('https://www.youtube.com/embed/8bZ4RPjOPYE', '4: Learn to Create Titles and Text Using HTML | Learn HTML and CSS | HTML Tutorial', 'Dani Krossing', 3, '00:07:11', 4.94),
    ('https://www.youtube.com/embed/jx5jmI0UlXU', 'Learn CSS Position In 9 Minutes', 'Web Dev Simplified', 4, '00:09:26', 4.96),
    ('https://www.youtube.com/embed/1PnVor36_40', 'Learn CSS in 20 Minutes', 'Web Dev Simplified', 4, '00:23:44', 4.95),
    ('https://www.youtube.com/embed/YNSnugnQYiI', '6: How Do We Include CSS In Our HTML | Basics Of CSS | Learn HTML and CSS | HTML Tutorial', 'Dani Krossing', 4, '00:18:03', 4.93),
    ('https://www.youtube.com/embed/Hwq_Mr12bcI', '10: How to Import New Fonts | Basics of CSS | Learn HTML and CSS | HTML Tutorial', 'Dani Krossing', 4, '00:09:30', 4.91),
    ('https://www.youtube.com/embed/qTN9bNaBCK8', '1 CSS les bases à connaître', 'CodeRocks & Apprendre', 4, '00:14:05', 4.95),
    ('https://www.youtube.com/embed/nzNE3ORMMmA', '2 CSS - Propriétés utiles pour le texte', 'CodeRocks & Apprendre', 4, '00:07:46', 4.97),
    ('https://www.youtube.com/embed/_-KEFeWLVtY', 'TUTO CSS - #1 Les bases', 'PrimFX', 4, '00:10:16', 4.82),
    ('https://www.youtube.com/embed/LNqBKTeeiWo', 'Tutoriel CSS : Flexbox', 'Grafikart.fr', 4, '00:33:37', 4.91),
    ('https://www.youtube.com/embed/2H602-zG62w', 'Tutoriel CSS : display: grid;', 'Grafikart.fr', 4, '00:30:33', 4.95),
    ('https://www.youtube.com/embed/33IinMVJf-M', 'HTML & CSS for Beginners Part 13: Background Images', 'Kevin Powell', 4, '00:11:18', 4.82),
    ('https://www.youtube.com/embed/PE8FQ6zihhw', 'Découverte du CSS (1/31) : Présentation', 'Grafikart.fr', 4, '00:07:04', 4.97),
    ('https://www.youtube.com/embed/EM8UlPeBfuk', 'Découverte du CSS (2/31) : Les sélecteurs', 'Grafikart.fr', 4, '00:30:36', 4.96),
    ('https://www.youtube.com/embed/m5vKQ7ATBNc', 'Je corrige les scripts d Ubuntu - Conseils et bonnes pratiques en BASH', 'cocadmin', 6, '00:16:29', 4.88),
    ('https://www.youtube.com/embed/Zl7npywCB84', 'Bash Shell Scripting Tutorial For Beginners - Bash Basics in 20 Minutes', 'NovelTech Media', 6, '00:24:38', 5.0),
    ('https://www.youtube.com/embed/Fiz3lMZhWKM', 'Bash[#1] - Comprendre ce qu est Bash', 'c0d3r sk1llz', 6, '00:07:08', 5.0),
    ('https://www.youtube.com/embed/3CR7tS56Obo', 'Scripts 2.1 - Bash : objectifs et entête de scripts | tutos fr', 'xavki', 6, '00:17:47', 5.0),
    ('https://www.youtube.com/embed/t7_7-BK66Xs', 'Scripts 2.2 - Bash : condition If et arguments de CLI | tutos fr', 'xavki', 6, '00:18:55', 5.0),
    ('https://www.youtube.com/embed/XGxtbcAzk-g', 'GNU/Linux #30 - introduction bash', 'FormationVidéo', 6, '00:15:15', 4.86),
    ('https://www.youtube.com/embed/AL381YJmvIs', 'Bash[#5] - Tester des fichiers avec Bash', 'c0d3r sk1llz', 6, '00:10:00', 5.0),
    ('https://www.youtube.com/embed/t5CBRm2Hm88', 'Bash[#6] - Comparer et tester des nombres avec Bash', 'c0d3r sk1llz', 6, '00:05:50', 5.0),
    ('https://www.youtube.com/embed/7d9pW2AzcJw', 'BASH SCRIPTING POUR LES HACKERS | PART 1', 'HackinGeeK', 6, '00:10:17', 5.0),
    ('https://www.youtube.com/embed/2hz7-v2f1sA', 'What is Bash Scripting?', 'Pikuma', 6, '00:09:52', 4.95),
    ('https://www.youtube.com/embed/4Q9adopz82E', 'Gnu / Linux : mesurer simplement le temps d exécution dans un script BASH', 'Christophe Casalegno', 6, '00:09:01', 5.0);





