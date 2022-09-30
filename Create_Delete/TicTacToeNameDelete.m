% filename:  TicTacToeNameDelete.m
% purpose:   Ends the GUI
% author:    Christopher Tams


FigHandles = findobj('tag','TicTacToeNameFig');
close(FigHandles(FigHandles==gcf))