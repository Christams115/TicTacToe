% filename:  TicTacToeNameCreate.m
% purpose:   Creates the GUI for the name
% author:    Christopher Tams




if Level ~= 0
    Comon = 1;
    Com = 1;
else
    Comon = 0;
    Com = 0;
end
FigHandles = findobj('tag','TicTacToeNameFig');
close(FigHandles(FigHandles~=gcf))

SBImage = imread('NameBackground.jpg','jpeg');
axes('position', [0 0 1 1])
image(SBImage)
set(gca,'visible','off')