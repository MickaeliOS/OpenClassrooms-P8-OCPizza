INSERT INTO oc_pizza.address
	(street_number, address, postal_code, city)
VALUES
	(11, 'Rue Paul Michel', 75002, 'Paris'),
    (2, 'Avenue Richelieu', 92220, 'Bagneux'),
    (19, 'Boulevard Martin', 94260, 'Fresnes'),
    (5, 'Rue Carles Dupont', 75004, 'Paris'),
    (77, 'Avenue Richard', 75014, 'Paris'),
    (1, 'Rue Velpeau', 92160, 'Antony'),
    (4, 'Rue Gustave Courbet', 75009, 'Paris'),
    (98, 'Boulevard Franklin Roosevelt', 92500, 'Rueil-Malmaison'),
    (30, 'Rue ilford', 92400, 'Courbevoie'),
    (3, 'Rue Barbès', 92300, 'Levallois-Perret'),
    (1, 'Rue Gustave Eiffel', 94000, 'Créteil'),
    (52, 'Boulevard Stalingrad', 94400, 'Paris'),
    (98, 'Boulevard Franklin Roosevelt', 92500, 'Vitry-sur-Seine'),
    (49, 'Rue de Gentilly', 94800, 'Villejuif'),
    (27, 'Rue Jules Guesde', 93140, 'Bondy'),
    (2, 'Rue Palatine', 75006, 'Paris'),
    (6, 'Rue du Père Guérin', 75013, 'Paris'),
    (119, 'Avenue de la République', 92120, 'Montrouge'),
    (78, 'Rue Général Leclerc', 94270, 'Le Kremlin-Bicêtre'),
    (44, 'Avenue de Verdun', 94200, 'Ivry-sur-Seine'),
    (72, 'Avenue Mahieu', 94100, 'St-Maur-des-Fossés'),
    (40, 'Avenue Jean d\'Estienne d\'Orves', 94340, 'Joinville-le-Pont'),
    (2, 'Rue de Romainville', 93100, 'Montreuil'),
    (125, 'Rue d\'Avron', 75020, 'Paris'),
    (53, 'Avenue des Terroirs de France', 75012, 'Paris'),
    (22, 'bis Rue Gabriel Péri', 93200, 'Saint-Denis'),
    (14, 'Avenue Edouard Vaillant', 93500, 'Pantin'),
    (23, 'Rue Melingue', 75019, 'Paris'),
    (28, 'Rue des Partants', 75020, 'Paris'),
    (1, 'Rue des Jardins', 94240, 'L\'Haÿ-les-roses'),
    (261, 'Boulevard Raspail', 75014, 'Paris'),
    (31, 'Rue de Tolbiac', 75013, 'Paris'),
    (330, 'Rue des Pyrénées', 75020, 'Paris'),
    (18, 'Avenue Henri Barbusse', 94400, 'Vitry-sur-Seine'),
    (1, 'Rue des Mathurins', 92220, 'Bagneux');


INSERT INTO oc_pizza.restaurant
    (name, address_id)
VALUES
    ('OCPIZZA Opéra', 1),
    ('OCPIZZA Bagneux', 2),
    ('OCPIZZA Fresnes', 3),
    ('OCPIZZA St Paul', 4),
    ('OCPIZZA Alésia', 5);


INSERT INTO oc_pizza.employee
    (last_name, first_name, password, address_id, restaurant_id)
VALUES
    ('Dupont', 'Paul', MD5('eUHUiA1h??ijfe'), 6, 1),
    ('Martin', 'Julie', MD5('ziejf;IHZBà-Y7'), 7, 1),
    ('Hadad', 'Karim', MD5('nbAAy5!è'), 8, 1),
    ('Petit', 'Estelle', MD5(',vnSSssu7!!'), 9, 1),
    ('Dubois', 'Richard', MD5('kSfo;9'), 10, 2),
    ('Martin', 'Cécile', MD5('kCfnbj00;'), 11, 2),
    ('Ngoma', 'Kenjo', MD5('infFV!!88'), 12, 2),
    ('Okala', 'Sébastien', MD5('if))neNB66'), 13, 2),
    ('Li', 'Jing', MD5('vknbj656be(FF'), 14, 3),
    ('Girard', 'Clarisse', MD5('kznuUYfb°))à3'), 15, 3),
    ('Vasseur', 'Didier', MD5('finf7JBF))'), 16, 3),
    ('Sanchez', 'Mélodie', MD5('zjb675FF(('), 17, 3),
    ('Lopez', 'Frédéric', MD5('zoiefjbIHDBU99è)'), 18, 4),
    ('Lambert', 'Sarah', MD5('zfeijNHBFEU§§5'), 19, 4),
    ('Biya', 'Grégoire', MD5('fzin78fzZ0)'), 20, 4),
    ('Hamoua', 'Nembo', MD5('zefh,,7GG'), 21, 4),
    ('Messaoudi', 'Altair', MD5('zkn00çe)FFf'), 22, 5),
    ('Moulin', 'Tiphaine', MD5('zejZnf56('), 23, 5),
    ('Huet', 'Pauline', MD5('ifheZNF88è§'), 24, 5),
    ('Ménard', 'Sophie', MD5('zfeijUZDH77à)'), 25, 5);


INSERT INTO oc_pizza.pizza_maker
    (employee_id)
VALUES
    (1),
    (5),
    (9),
    (13),
    (17);


INSERT INTO oc_pizza.delivery_man
    (employee_id)
VALUES
    (2),
    (6),
    (10),
    (14),
    (18);


INSERT INTO oc_pizza.manager
    (employee_id)
VALUES
    (3),
    (7),
    (11),
    (15),
    (19);


INSERT INTO oc_pizza.receptionist
    (employee_id)
VALUES
    (4),
    (8),
    (12),
    (16),
    (20);


INSERT INTO oc_pizza.recipe
    (name, steps)
VALUES
    ('Pizza 4 Fromages',
    'Étalez la pâte à pizza dans un moule à pizza. 
    Versez le coulis de tomate et répartissez-le sur la pâte à l\’aide du dos d’une cuillère à soupe, en laissant environ 1 cm sans garniture tout autour de la pizza.
    Coupez les quatre fromages en dés et répartissez-les sur la pizza. 
    Saupoudrez de basilic.'),
    ('Pizza Reine',
    'Préchauffer le four à 220°C (thermostat 7/8).
    Faire revenir les champignons à la poêle sur feu doux quelques minutes, sans les laisser griller.
    Étaler la pâte et la badigeonner de sauce tomate.
    Disposer dessus le jambon et les champignons.
    Recouvrir de gruyère râpé.
    Enfourner pendant 30 ou 35 minutes à four chaud en surveillant de temps à autre.'),
    ('Pizza Napolitaine',
    'Pelez et hachez les oignons et l\'ail. Pelez et épépinez les tomates, découpez-les en dés.
    Faites chauffer 2 cuillères à soupe d\'huile d\'olive. Mettez-les l\'ail et l\'oignon, laissez-les dorer. RAjoutez les tomates, salez, poivrez et ajoutez le thym.
    Laissez cuire 20 minutes à feu moyen, jusqu\'à ce que le liquide soit évaporé.
    Laissez refroidir.
    Préchauffez le four à 240°C (thermostat 8).
    Etalez la pâte sur une plaque huilée ou farinée. Etalez la sauce tomate dessus. Répartissez les anchois et les olives.
    Faites cuire 15 minutes environ.'),
    ('Pizza Saumon', 
    'Étaler la crème fraîche.
    Mettre le saumon fumé.
    Mettre l\'huile d\'olive sur le saumon.
    Rajouter de l\'aneth.
    Finir par des petits morceaux de mozzarella bien répartis.
    Cuire à 200°C pendant 20 min.'),
    ('Pizza Margherita', 
    'Préchauffez le four à 210 °C (th.7). Lavez les tomates et coupez-les en rondelles. Détaillez la mozzarella en tranches. Étalez la pâte à pizza et disposez-la sur une plaque à pâtisserie recouverte de papier cuisson.
    Badigeonnez la pâte de coulis de tomate puis répartissez les rondelles de tomate et les tranches de mozzarella. Salez, poivrez, arrosez d\’huile d\’olive et enfournez pour 15 min environ.
    Parsemez de basilic ciselé et servez.');


INSERT INTO oc_pizza.ingredient
    (name)
VALUES
    ('Farine'),
    ('Sel'),
    ('Poivre'),
    ('Levure'),
    ('Huile d\'olive'),
    ('Tomate'),
    ('Coulis de tomate'),
    ('Sauce tomate'),
    ('Cheddar'),
    ('Comté'),
    ('Bleu'),
    ('Boule de Mozzarella'),
    ('Basilic'),
    ('Champignon de Paris'),
    ('Jambon'),
    ('Gruyère râpé'),
    ('Oignon'),
    ('Ail'),
    ('Thym'),
    ('Crème fraîche'),
    ('Saumon fumé'),
    ('Eau'),
    ('Aneth');


INSERT INTO oc_pizza.ingredient_quantity
    (recipe, ingredient, quantity, quantity_type)
VALUES
    ('Pizza 4 Fromages', 'Farine', 175, 'gram'),
    ('Pizza 4 Fromages', 'Sel', 5, 'gram'),
    ('Pizza 4 Fromages', 'Levure', 5, 'gram'),
    ('Pizza 4 Fromages', 'Huile d\'olive', 15, 'milliliter'),
    ('Pizza 4 Fromages', 'Eau', 125, 'milliliter'),
    ('Pizza 4 Fromages', 'Coulis de tomate', 200, 'gram'),
    ('Pizza 4 Fromages', 'Cheddar', 65, 'gram'),
    ('Pizza 4 Fromages', 'Comté', 40, 'gram'),
    ('Pizza 4 Fromages', 'Bleu', 50, 'gram'),
    ('Pizza 4 Fromages', 'Boule de Mozzarella', 125, 'gram'),
    ('Pizza 4 Fromages', 'Basilic', 10, 'gram'),
    ('Pizza Reine', 'Farine', 175, 'gram'),
    ('Pizza Reine', 'Sel', 5, 'gram'),
    ('Pizza Reine', 'Levure', 5, 'gram'),
    ('Pizza Reine', 'Huile d\'olive', 15, 'milliliter'),
    ('Pizza Reine', 'Eau', 125, 'milliliter'),
    ('Pizza Reine', 'Sauce tomate', 150, 'gram'),
    ('Pizza Reine', 'Champignon de Paris', 100, 'gram'),
    ('Pizza Reine', 'Jambon', 150, 'gram'),
    ('Pizza Reine', 'Gruyère râpé', 100, 'gram'),
    ('Pizza Napolitaine', 'Farine', 175, 'gram'),
    ('Pizza Napolitaine', 'Sel', 6, 'gram'),
    ('Pizza Napolitaine', 'Levure', 5, 'gram'),
    ('Pizza Napolitaine', 'Huile d\'olive', 20, 'milliliter'),
    ('Pizza Napolitaine', 'Eau', 125, 'milliliter'),
    ('Pizza Napolitaine', 'Tomate', 400, 'gram'),
    ('Pizza Napolitaine', 'Oignon', 150, 'gram'),
    ('Pizza Napolitaine', 'Ail', 80, 'gram'),
    ('Pizza Napolitaine', 'Thym', 10, 'gram'),
    ('Pizza Napolitaine', 'Poivre', 1, 'gram'),
    ('Pizza Saumon', 'Farine', 175, 'gram'),
    ('Pizza Saumon', 'Sel', 5, 'gram'),
    ('Pizza Saumon', 'Levure', 5, 'gram'),
    ('Pizza Saumon', 'Huile d\'olive', 30, 'milliliter'),
    ('Pizza Saumon', 'Eau', 125, 'milliliter'),
    ('Pizza Saumon', 'Crème fraîche', 100, 'milliliter'),
    ('Pizza Saumon', 'Saumon fumé', 200, 'gram'),
    ('Pizza Saumon', 'Boule de Mozzarella', 125, 'gram'),
    ('Pizza Saumon', 'Aneth', 10, 'gram'),
    ('Pizza Margherita', 'Sel', 6, 'gram'),
    ('Pizza Margherita', 'Levure', 5, 'gram'),
    ('Pizza Margherita', 'Huile d\'olive', 30, 'milliliter'),
    ('Pizza Margherita', 'Eau', 125, 'milliliter'),
    ('Pizza Margherita', 'Coulis de tomate', 200, 'gram'),
    ('Pizza Margherita', 'Tomate', 200, 'gram'),
    ('Pizza Margherita', 'Boule de Mozzarella', 250, 'gram'),
    ('Pizza Margherita', 'Basilic', 10, 'gram'),
    ('Pizza Margherita', 'Poivre', 1, 'gram');


INSERT INTO oc_pizza.stock
    (restaurant_id, ingredient, quantity, quantity_type, add_date)
VALUES
    (1, 'Farine', 5000, 'gram', '2022-02-25'),
    (1, 'Sel', 4000, 'gram', '2022-02-24'),
    (1, 'Poivre', 4000, 'gram', '2022-02-21'),
    (1, 'Levure', 3000, 'gram', '2022-02-21'),
    (1, 'Huile d\'olive', 10000, 'milliliter', '2022-02-21'),
    (1, 'Tomate', 5000, 'gram', '2022-02-21'),
    (1, 'Coulis de tomate', 5000, 'milliliter', '2022-02-20'),
    (1, 'Sauce tomate', 15000, 'milliliter', '2022-02-19'),
    (1, 'Cheddar', 7000, 'gram', '2022-02-21'),
    (1, 'Comté', 4500, 'gram', '2022-02-22'),
    (1, 'Bleu', 2000, 'gram', '2022-02-22'),
    (1, 'Boule de Mozzarella', 5000, 'gram', '2022-02-25'),
    (1, 'Basilic', 2100, 'gram', '2022-02-25'),
    (1, 'Champignon de Paris', 9000, 'gram', '2022-02-25'),
    (1, 'Jambon', 5000, 'gram', '2022-02-26'),
    (1, 'Gruyère râpé', 3300, 'gram', '2022-02-26'),
    (1, 'Oignon', 1000, 'gram', '2022-02-14'),
    (1, 'Ail', 1200, 'gram', '2022-02-11'),
    (1, 'Thym', 8000, 'gram', '2022-02-09'),
    (1, 'Crème fraîche', 5000, 'milliliter', '2022-02-22'),
    (1, 'Saumon fumé', 3000, 'gram', '2022-02-25'),
    (1, 'Eau', null, null, null),
    (1, 'Aneth', 5000, 'gram', '2022-02-21'),
    (2, 'Farine', 1000, 'gram', '2022-02-20'),
    (2, 'Sel', 1100, 'gram', '2022-02-26'),
    (2, 'Poivre', 4000, 'gram', '2022-02-22'),
    (2, 'Levure', 9000, 'gram', '2022-02-21'),
    (2, 'Huile d\'olive', 11000, 'milliliter', '2022-02-22'),
    (2, 'Tomate', 900, 'gram', '2022-02-23'),
    (2, 'Coulis de tomate', 5000, 'milliliter', '2022-02-20'),
    (2, 'Sauce tomate', 20000, 'milliliter', '2022-02-23'),
    (2, 'Cheddar', 17000, 'gram', '2022-02-25'),
    (2, 'Comté', 4500, 'gram', '2022-02-21'),
    (2, 'Bleu', 1000, 'gram', '2022-02-08'),
    (2, 'Boule de Mozzarella', 9000, 'gram', '2022-02-21'),
    (2, 'Basilic', 3300, 'gram', '2022-02-22'),
    (2, 'Champignon de Paris', 7000, 'gram', '2022-02-20'),
    (2, 'Jambon', 1000, 'gram', '2022-02-21'),
    (2, 'Gruyère râpé', 3900, 'gram', '2022-02-26'),
    (2, 'Oignon', 2000, 'gram', '2022-02-14'),
    (2, 'Ail', 4400, 'gram', '2022-02-12'),
    (2, 'Thym', 1000, 'gram', '2022-02-19'),
    (2, 'Crème fraîche', 15000, 'milliliter', '2022-02-20'),
    (2, 'Saumon fumé', 9000, 'gram', '2022-02-21'),
    (2, 'Eau', null, null, '2022-02-25'),
    (2, 'Aneth', 6000, 'gram', '2022-02-21'),
    (3, 'Farine', 2000, 'gram', '2022-02-22'),
    (3, 'Sel', 8000, 'gram', '2022-02-22'),
    (3, 'Poivre', 1000, 'gram', '2022-02-21'),
    (3, 'Levure', 9000, 'gram', '2022-02-20'),
    (3, 'Huile d\'olive', 7000, 'milliliter', '2022-02-04'),
    (3, 'Tomate', 1000, 'gram', '2022-02-21'),
    (3, 'Coulis de tomate', 2000, 'milliliter', '2022-02-16'),
    (3, 'Sauce tomate', 11000, 'milliliter', '2022-02-17'),
    (3, 'Cheddar', 6000, 'gram', '2022-02-11'),
    (3, 'Comté', 1500, 'gram', '2022-02-18'),
    (3, 'Bleu', 1200, 'gram', '2022-02-10'),
    (3, 'Boule de Mozzarella', 4000, 'gram', '2022-02-01'),
    (3, 'Basilic', 2100, 'gram', '2022-02-25'),
    (3, 'Champignon de Paris', 9000, 'gram', '2022-02-25'),
    (3, 'Jambon', 6000, 'gram', '2022-02-24'),
    (3, 'Gruyère râpé', 3600, 'gram', '2022-02-27'),
    (3, 'Oignon', 7000, 'gram', '2022-02-12'),
    (3, 'Ail', 2200, 'gram', '2022-02-15'),
    (3, 'Thym', 3000, 'gram', '2022-02-16'),
    (3, 'Crème fraîche', 9000, 'milliliter', '2022-02-22'),
    (3, 'Saumon fumé', 6000, 'gram', '2022-02-25'),
    (3, 'Eau', null, null, '2022-02-21'),
    (3, 'Aneth', 1000, 'gram', '2022-02-21'),
    (4, 'Farine', 12000, 'gram', '2022-02-10'),
    (4, 'Sel', 8000, 'gram', '2022-02-15'),
    (4, 'Poivre', 7000, 'gram', '2022-02-21'),
    (4, 'Levure', 3000, 'gram', '2022-02-22'),
    (4, 'Huile d\'olive', 17000, 'milliliter', '2022-02-04'),
    (4, 'Tomate', 7000, 'gram', '2022-02-26'),
    (4, 'Coulis de tomate', 3000, 'milliliter', '2022-02-25'),
    (4, 'Sauce tomate', 1000, 'milliliter', '2022-02-19'),
    (4, 'Cheddar', 7000, 'gram', '2022-02-12'),
    (4, 'Comté', 1500, 'gram', '2022-02-11'),
    (4, 'Bleu', 1200, 'gram', '2022-02-10'),
    (4, 'Boule de Mozzarella', 4000, 'gram', '2022-02-25'),
    (4, 'Basilic', 6100, 'gram', '2022-02-21'),
    (4, 'Champignon de Paris', 3000, 'gram', '2022-02-25'),
    (4, 'Jambon', 5000, 'gram', '2022-02-21'),
    (4, 'Gruyère râpé', 7100, 'gram', '2022-02-20'),
    (4, 'Oignon', 2000, 'gram', '2022-02-26'),
    (4, 'Ail', 2600, 'gram', '2022-02-20'),
    (4, 'Thym', 1000, 'gram', '2022-02-11'),
    (4, 'Crème fraîche', 6000, 'milliliter', '2022-02-21'),
    (4, 'Saumon fumé', 6000, 'gram', '2022-02-20'),
    (4, 'Eau', null, null, '2022-02-21'),
    (4, 'Aneth', 1000, 'gram', '2022-02-25'),
    (5, 'Farine', 12000, 'gram', '2022-02-11'),
    (5, 'Sel', 10000, 'gram', '2022-02-16'),
    (5, 'Poivre', 17000, 'gram', '2022-02-22'),
    (5, 'Levure', 4000, 'gram', '2022-02-22'),
    (5, 'Huile d\'olive', 11000, 'milliliter', '2022-02-22'),
    (5, 'Tomate', 4000, 'gram', '2022-02-22'),
    (5, 'Coulis de tomate', 13000, 'milliliter', '2022-02-25'),
    (5, 'Sauce tomate', 10000, 'milliliter', '2022-02-19'),
    (5, 'Cheddar', 3000, 'gram', '2022-02-13'),
    (5, 'Comté', 3500, 'gram', '2022-02-13'),
    (5, 'Bleu', 4200, 'gram', '2022-02-11'),
    (5, 'Boule de Mozzarella', 7000, 'gram', '2022-02-19'),
    (5, 'Basilic', 9100, 'gram', '2022-02-09'),
    (5, 'Champignon de Paris', 4000, 'gram', '2022-02-09'),
    (5, 'Jambon', 15000, 'gram', '2022-02-14'),
    (5, 'Gruyère râpé', 4100, 'gram', '2022-02-24'),
    (5, 'Oignon', 12000, 'gram', '2022-02-24'),
    (5, 'Ail', 3600, 'gram', '2022-02-21'),
    (5, 'Thym', 9000, 'gram', '2022-02-10'),
    (5, 'Crème fraîche', 3000, 'milliliter', '2022-02-20'),
    (5, 'Saumon fumé', 1000, 'gram', '2022-02-21'),
    (5, 'Eau', null, null, '2022-02-21'),
    (5, 'Aneth', 3000, 'gram', '2022-02-25');


INSERT INTO oc_pizza.article
    (name, price, recipe)
VALUES
    ('4 Fromages', 12.50, 'Pizza 4 Fromages'),
    ('Reine', 12, 'Pizza Reine'),
    ('Napolitaine', 13, 'Pizza Napolitaine'),
    ('Saumon', 11, 'Pizza Saumon'),
    ('Margherita', 10, 'Pizza Margherita');


INSERT INTO oc_pizza.client
    (last_name, first_name, phone_number, email_address, password, address_id)
VALUES
    ('Horn', 'Mickaël', '0612345678', 'horn.micka@gmail.com', MD5('pass123,,'), 31),
    ('Deslauriers', 'Marcel', '0687530055', 'deslauriers.marcel@hotmail.fr', MD5('pass1234;'), 32),
    ('Audet', 'Eugène', '0634229056', 'audet.eugene@gmail.com', MD5('ezffs11,'), 33),
    ('Bler', 'Nicole', '0687654540', 'bler.nicole@gmail.com', MD5('9hyzb)ez'), 34),
    ('Artemyeva', 'Frida', '0654555340', 'artemyeva.frida@gmail.com', MD5('ijhfbeyHH787-8'), 35),
    ('Denisova', 'Elina', '0699899763', 'denisova.elina@gmail.com', MD5(',fozjj00'), 26),
    ('Ikraam Asghar', 'Anan', '0699554544', 'ikraamasghar.Anan@gmail.com', MD5('ijfh77§'), 27),
    ('Kiganda', 'Abraham', '0600900871', 'kiganda.abraham@gmail.com', MD5('ijfb77667;'), 28),
    ('Akashabe', 'Tiffany', '0687667652', 'akashabe.tiffany@gmail.com', MD5('knbvv0090,'), 29),
    ('Kagambira', 'Philip', '0677677650', 'kagambira.philip@gmail.com', MD5('kihbNNGV)'), 30);


INSERT INTO oc_pizza.order
    (is_paid, order_notes, order_date, is_online, delivery_notes, order_status, delivery_mode, payment_type, pizza_maker_id, delivery_man_id, client_id)
VALUES
    (true, 'Pourriez-vous enlever le bleu svp ?', '2022-02-11', true, 'Appelez-moi quand vous serez arrivé svp, merci !', 'finished', 'delivery', 'online_credit_card', 1, 2, 1),
    (false, null, '2022-02-20', true, 'Appelez-moi svp, merci !', 'preparing', 'delivery', null, 5, null, 2),
    (false, null, '2022-02-21', true, 'La sonnette est cassée, appelez-moi svp', 'delivering', 'delivery', null, 5, 6, 3),
    (true, null, '2022-02-21', true, null, 'finished', 'pickup', 'cash', 9, null, 4),
    (true, null, '2022-02-21', false, null, 'preparing', 'pickup', 'cash', 13, null, null),
    (true, 'Je voudrais enlever l\'Aneth svp', '2022-02-22', false, 'Appelez-moi svp, merci !', 'finished', 'delivery', 'offline_credit_card', 13, 14, null),
    (false, null, '2022-02-22', false, null, 'waiting', 'pickup', null, null, null, null),
    (true, null, '2022-02-22', true, null, 'delivering', 'delivery', 'online_credit_card', 17, 18, 8),
    (false, null, '2022-02-24', false, null, 'waiting', 'delivery', null, null, null, null),
    (false, null, '2022-02-26', true, null, 'delivering', 'delivery', null, 9, 10, 10);


INSERT INTO oc_pizza.article_quantity
    (order_id, article, quantity)
VALUES
    (1, '4 Fromages', 2),
    (2, '4 Fromages', 1),
    (2, 'Napolitaine', 1),
    (3, 'Margherita', 1),
    (4, 'Saumon', 1),
    (5, 'Reine', 2),
    (5, 'Napolitaine', 3),
    (6, 'Saumon', 1),
    (7, 'Napolitaine', 1),
    (8, 'Margherita', 1),
    (9, '4 Fromages', 1),
    (10, 'Napolitaine', 1),
    (10, 'Reine', 1);