% filename:  TicTacToeCreate.m
% purpose:  Starts the GUI
% author:    Christopher Tams

clear


Level = 0;
NameOne = "";
NameTwo = "";
FigHandles = findobj('tag','TicTacToe1Fig');
close(FigHandles(FigHandles~=gcf))
win1 = 0;
win2 = 0;
loss1 = 0;
loss2 = 0;
tie1 = 0;
tie2 = 0;
Turn =1;
Ran = 2;

GameX = [0 0 0; 0 0 0; 0 0 0];
GameY = [0 0 0; 0 0 0; 0 0 0];

SBImage = imread('TitleBackground.jpg','jpeg');
axes('position', [0 0 1 1])
image(SBImage)
set(gca,'visible','off')

