% filename:  TicTacToeDelete.m
% purpose:   Ends the first GUI
% author:    Christopher Tams


FigHandles = findobj('tag','TicTacToe1Fig');
close(FigHandles(FigHandles==gcf))