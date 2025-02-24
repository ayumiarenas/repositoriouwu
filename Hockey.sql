CREATE TABLE RoundStats (
    id int(16) NOT NULL,
    numShutouts int(13) NOT NULL,
    goalLeaderld int(13) NOT NULL,
    assistLeaderld int(13) NOT NULL,
    penaltyLeaderld int(13) NOT NULL,
    plusMinusLeaderld int(13) NOT NULL,
    facesoffsWonLeaderld int(13) NOT NULL,
    sogLeaderld int(13) NOT NULL,
    PRIMARY KEY (id, numShutouts)
);

CREATE TABLE HockeyTable (
    id int(16) NOT NULL,
    name varchar(25) NOT NULL,
    logo text(35) NOT NULL,
    PRIMARY KEY(id, name)
);

CREATE TABLE HockeyTeamPlayer (
    id int(16) NOT NULL,
    hockeyTeamid int(13) NOT NULL,
    firtsName text(13) NOT NULL,
    lastName text(13) NOT NULL,
    jerseyNum int(13) NOT NULL,
    position varchar(16) NOT NULL,
    PRIMARY KEY(id, hockeyTeamid)
);

CREATE TABLE UserInfo (
    id int(16) NOT NULL,
    firtsName text(13) NOT NULL,
    lastName text(13) NOT NULL,
    email varchar(13) NOT NULL,
    round1Points int(13) NOT NULL,
    round2Points int(13) NOT NULL,
    round3Points int(13) NOT NULL,
    round4Points int(13) NOT NULL,
    PRIMARY KEY (id, email)
);

CREATE TABLE User (
    id int(16) NOT NULL,
    username varchar(13) NOT NULL,
    password varchar(13) NOT NULL,
    PRIMARY KEY(id, username)
);

CREATE TABLE UserStatsPicks (
    id int(16) NOT NULL,
    roundid int(13) NOT NULL,
    goalLeaderld int(13) NOT NULL,
    assistLeaderld int(13) NOT NULL,
    penaltyLeaderld int(13) NOT NULL,
    plusMinusLeaderld int(13) NOT NULL,
    facesoffsWonLeaderld int(13) NOT NULL,
    sogLeaderld int(13) NOT NULL,
    numShutouts int(13) NOT NULL,
    userid int(13) NOT NULL,
    PRIMARY KEY (id, roundid)
);

CREATE TABLE UserScorePicks (
    id int(13) NOT NULL,
    HockeyGameId int(13) NOT NULL,
    team1Score int(13) NOT NULL,
    team2Score int(13) NOT NULL,
    userid int(13) NOT NULL,
    PRIMARY KEY (id, HockeyGameId)
);