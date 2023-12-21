
CREATE TABLE users(
    UserID TEXT PRIMARY KEY,
    Username VARCHAR(100),
    Email TEXT UNIQUE
);

CREATE TABLE events(
    EventID INTEGER PRIMARY KEY,
    Title VARCHAR(50),
    Description TEXT,
    Date DATE,
    Location VARCHAR(100)
);

CREATE TABLE bookings (
    BookingID INTEGER PRIMARY KEY,
    EventID INTEGER,
    Booking_Date DATE,
    Description TEXT,
    Location VARCHAR(100) NOT NULL,
    FOREIGN KEY (EventID) REFERENCES events (EventID)
);

CREATE TABLE mixes (
    TrackID INTEGER PRIMARY KEY,
    Title VARCHAR(100),
    PlaylistID INTEGER,
    Playlist_Title VARCHAR(100),
    Release_Date DATE,
    Genre TEXT
);

CREATE TABLE SocialPosts (
    PostID INTEGER PRIMARY KEY,
    UserID INTEGER,
    Content TEXT,
    PostData DATE,
    Platform VARCHAR(50) 
);


CREATE TABLE Images (
    ImageID INTEGER PRIMARY KEY,
    UserID INTEGER,
    Image_URL TEXT,
    Description TEXT,
    UploadDate DATE
);

CREATE TABLE Merchandise (
    MerchID INTEGER PRIMARY Key,
    Name VARCHAR(100),
    Description TEXT,
    Price DECIMAL (10, 2),
    Size VARCHAR(50),
    Image_URL VARCHAR(255),
    StockQuantity INTEGER,
    Category VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    MerchID INTEGER,
    FOREIGN KEY (MerchID) REFERENCES Merchandise (MerchID)
);

CREATE TABLE ContactMessages (
    MessageID INTEGER PRIMARY KEY,
    Name VARCHAR(100),
    UserID INTEGER,
    Email VARCHAR(100),
    Message TEXT,
    ReceivedDate DATE,
    FOREIGN KEY (UserID) REFERENCES users (UserID)

);