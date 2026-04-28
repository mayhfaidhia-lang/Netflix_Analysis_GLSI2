Analyse du catalogue de films et séries Netflix
Membres du groupe
	•	May Hfaidhia
	•	Ranim Dridi
	•	Feten Lachheb



Sujet choisi

Sujet 3 : Analyse du catalogue Netflix

Ce projet a été réalisé dans le cadre du module Bases de Données (TEST I), avec pour objectif l’analyse du catalogue de films et de séries disponibles sur Netflix à partir d’un dataset téléchargé depuis Kaggle.




Description du dataset

Le dataset utilisé est netflix_titles.csv, téléchargé depuis la plateforme Kaggle.

Il contient des informations sur les films et séries TV disponibles sur Netflix, notamment :
	•	l’identifiant du contenu (show_id)
	•	le type (Movie ou TV Show)
	•	le titre
	•	le réalisateur
	•	les acteurs principaux
	•	le pays de production
	•	la date d’ajout sur Netflix
	•	l’année de sortie
	•	la classification d’âge (rating)
	•	la durée
	•	le genre (listed_in)
	•	la description du contenu

Ce dataset permet d’effectuer plusieurs analyses statistiques et décisionnelles sur le catalogue Netflix.




Outils utilisés

Pour la réalisation de ce projet, nous avons utilisé :
	•	Kaggle : téléchargement du dataset
	•	Docker : exécution de SQL Server sur macOS
	•	Microsoft SQL Server : gestion et analyse de la base de données
	•	Visual Studio Code : exécution des scripts SQL et développement du projet
	•	Git et GitHub : gestion de version et partage du projet






Étapes d’exécution du projet

1. Téléchargement du dataset

Le fichier netflix_titles.csv a été téléchargé depuis Kaggle.

2. Création de la base de données

Création de la base de données NetflixDB dans SQL Server.

3. Création de la table

Création de la table principale netflix_titles contenant les colonnes du dataset.

4. Importation des données

Le fichier CSV a été importé dans SQL Server à l’aide de Docker et de la commande BULK INSERT.

5. Nettoyage des données

Certaines vérifications ont été réalisées pour éviter les erreurs de format et assurer la cohérence des données.

6. Requêtes SQL d’analyse

Des requêtes SQL de base et avancées ont été exécutées afin d’analyser le dataset et produire des statistiques pertinentes.

7. Présentation finale

Une présentation professionnelle a été préparée afin d’expliquer la démarche, les résultats obtenus et l’interprétation des analyses.



Principales requêtes SQL

Affichage des premières lignes : SELECT TOP 10 * FROM netflix_titles;

Nombre total de contenus : SELECT COUNT(*) AS total_titles
FROM netflix_titles;

Nombre de films et séries : SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

Top pays producteurs : SELECT TOP 10 country, COUNT(*) AS total
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total DESC;

Genres les plus fréquents : SELECT TOP 10 listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC;

Évolution des publications par année : SELECT
TRY_CAST(release_year AS INT) AS year,
COUNT(*) AS total
FROM netflix_titles
WHERE TRY_CAST(release_year AS INT) IS NOT NULL
GROUP BY TRY_CAST(release_year AS INT)
ORDER BY year;

Résultats obtenus : L’analyse a permis d’identifier :
	•	la répartition entre films et séries TV
	•	les pays les plus producteurs de contenus
	•	les genres les plus présents sur Netflix
	•	l’évolution du nombre de publications selon les années
	•	plusieurs indicateurs clés (KPI) permettant de mieux comprendre la structure du catalogue Netflix

Ces résultats permettent une meilleure visualisation de la stratégie de contenu de la plateforme Netflix.

Conclusion : Ce projet nous a permis de mettre en pratique les notions de bases de données relationnelles, l’utilisation de SQL, la manipulation de datasets réels ainsi que l’analyse de données.

Il nous a également permis de travailler avec Docker, GitHub et Visual Studio Code dans un environnement professionnel de développement orienté base de données.


