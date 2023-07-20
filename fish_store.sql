SELECT * FROM fish_db.fish;
ALTER TABLE fish_db.fish RENAME COLUMN  ï»¿Species TO Species;
SELECT * FROM fish_db.fish;
/*1. Company has sold too many fish everyday. Each fish has a different 
weight. Company wants to know each species maximum and 
minimum of each fish.*/

SELECT Species, max(Weight) as Maximum_Weight, min(Weight) as Min_Weight from fish_db.fish group by (Species);

/*2. The Company has many sold to much different fish and they want to 
see fish which height more than 15 and also width has to be more 
than 5.*/

SELECT Species, Height, Width from fish_db.fish where Height>15 and Width >5;

/*3. The company store has too many fish and each fish has its own 3 
lengths. Company wants to see each species fish average lengths.*/

Select Species, round(avg(Vertical_length),2) as avg_vertical_length, round(avg(Diagonal_length),2) as avg_diagonal_length, 
round(avg(Cross_length),2) as avg_cross_length from fish_db.fish group by Species;

/*4. Company sees that some species sell too much. Company knows 
that species of fish start at “B” and height is more than 10 and smaller 
than 13. They want to all information about these fishes*/

Select Species, Height from fish_db.fish where Species  like('B%') and  Height between 10 and 13
