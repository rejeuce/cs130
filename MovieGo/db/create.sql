CREATE TABLE Users (
    UserID VARCHAR(20),
    PRIMARY KEY (UserID)
);

CREATE TABLE Movies (
	Title VARCHAR(255),
	Genre VARCHAR(255),
    PRIMARY KEY (Title)
);

CREATE TABLE Theaters (
    TheaterID VARCHAR(20),
	Name VARCHAR(255),
	Latitude FLOAT(10,6),
    Longitude FLOAT(10,6),
    PRIMARY KEY (TheaterID)
);

CREATE TABLE UserMovies (
    UserID VARCHAR(20),
    Movie VARCHAR(255),
    PRIMARY KEY (UserID, Movie),
    FOREIGN KEY (Movie) REFERENCES Movies(Title)
);
