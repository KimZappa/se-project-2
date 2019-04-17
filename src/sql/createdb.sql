CREATE TABLE 'Post' (
	PostID INTEGER NOT NULL PRIMARY KEY,
	PostTitle VARCHAR(50) NOT NULL,
	PostBody VARCHAR(8000) NOT NULL,
	VoteCount INTEGER,
	PostDate DATE NOT NULL
);


CREATE TABLE 'Image'(
	ImageID INTEGER NOT NULL PRIMARY KEY,
	ImageName VARCHAR(8000) NOT NULL
);

CREATE TABLE 'PostImage'(
	PostID INTEGER NOT NULL,
	ImageID	INTEGER	NOT NULL,
	
	CONSTRAINT PostImageID PRIMARY KEY(PostID, ImageID),
	FOREIGN KEY(PostID)	REFERENCES Post(PostID),
	FOREIGN KEY(ImageID) REFERENCES Image(ImageID)
);

CREATE TABLE 'Comment' (
	CommentID INTEGER NOT NULL PRIMARY KEY,
	CommentBody VARCHAR(140), 
	VoteCount INTEGER,
	CommentGif VARCHAR(255)
);

CREATE TABLE 'PostComment'(
	PostID INTEGER NOT NULL,
	CommentID INTEGER NOT NULL,

	CONSTRAINT PostCommentID PRIMARY KEY(PostID,CommentID),
	FOREIGN KEY(PostID) REFERENCES Post(PostID),
	FOREIGN KEY(CommentID) REFERENCES Comment(CommentID)
);

CREATE TABLE 'Video'(
	VideoURL VARCHAR(500) NOT NULL PRIMARY KEY
);

CREATE TABLE 'PostVideo'(
	PostID INTEGER NOT NULL,
	VideoURL INTEGER NOT NULL,

	CONSTRAINT PostVideoID PRIMARY KEY(PostID,VideoURL),
	FOREIGN KEY(PostID) REFERENCES Post(PostID),
	FOREIGN KEY(VideoURL) REFERENCES Video(VideoURL)
);