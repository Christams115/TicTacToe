% filename:  GamePlayer1ScoreCB.m
% purpose:   Keeps track of score for player 1
% author:    Christopher Tams


Player1ScoreHandle = findobj('tag', 'GamePlayer1Score');
set(Player1ScoreHandle, 'string', [win1, '-', tie1, '-', loss1])
set(Player1ScoreHandle, 'enable', 'off')