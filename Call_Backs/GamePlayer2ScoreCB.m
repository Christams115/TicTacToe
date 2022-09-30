% filename:  GamePlayer2ScoreCB.m
% purpose:   Keeps track of score for player 2
% author:    Christopher Tams


Player2ScoreHandle = findobj('tag', 'GamePlayer2Score');
set(Player2ScoreHandle, 'string', [win2, '-', tie2, '-', loss2])
set(Player2ScoreHandle, 'enable', 'off')