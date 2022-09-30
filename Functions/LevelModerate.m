%LevelModerate

function[Turn, GameCom, z] = LevelModerate(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level)

points = [num, numHuman];
z = 0;
for count = 1:2
    if z == 0
        point = points(count);
        %First Collium
        if Open(1) == point && Open(2) == point && Open(3) == 0
            Place = 3;
            z = 1;
        elseif Open(3) == point && Open(2) == point && Open(1) == 0
            Place = 1;
            z = 1;
        elseif Open(3) == point && Open(1) == point && Open(2) == 0
            Place = 2;
            z = 1;
        %First Row
        elseif Open(1) == point && Open(4) == point && Open(7) == 0
            Place = 7;
            z = 1;
        elseif Open(4) == point && Open(7) == point && Open(1) == 0
            Place = 1;
            z = 1;
        elseif Open(7) == point && Open(1) == point && Open(4) == 0
            Place = 4;
            z = 1;
        %Second Collium
        elseif Open(5) == point && Open(4) == point && Open(6) == 0
            Place = 6;
            z = 1;
        elseif Open(4) == point && Open(6) == point && Open(5) == 0
            Place = 5;
            z = 1;
        elseif Open(5) == point && Open(6) == point && Open(4) == 0
            Place = 4;
            z = 1;
        %Second Row
        elseif Open(2) == point && Open(5) == point && Open(8) == 0
            Place = 8;
            z = 1;
        elseif Open(8) == point && Open(5) == point && Open(2) == 0
            Place = 2;
            z = 1;
        elseif Open(8) == point && Open(2) == point && Open(5) == 0
            Place = 5;
            z = 1;
        %Third Collium
        elseif Open(7) == point && Open(8) == point && Open(9) == 0
            Place = 9;
            z = 1;
        elseif Open(9) == point && Open(8) == point && Open(7) == 0
            Place = 7;
            z = 1;
        elseif Open(9) == point && Open(7) == point && Open(8) == 0
            Place = 8;
            z = 1;
        %Third Row
        elseif Open(3) == point && Open(6) == point && Open(9) == 0
            Place = 9;
            z = 1;
        elseif Open(3) == point && Open(9) == point && Open(6) == 0
            Place = 6;
            z = 1;
        elseif Open(6) == point && Open(9) == point && Open(3) == 0
            Place = 3;
            z = 1;
        %Diagonal
         elseif Open(1) == point && Open(5) == point && Open(9) == 0
            Place = 9;
            z = 1;
         elseif Open(1) == point && Open(9) == point && Open(5) == 0
             Place = 5;
             z = 1;
         elseif Open(9) == point && Open(5) == point && Open(1) == 0
             Place = 1;
             z = 1;
         %Other Diagonal
         elseif Open(7) == point && Open(5) == point && Open(3) == 0
            Place = 3;
            z = 1;
         elseif Open(5) == point && Open(3) == point && Open(7) == 0
             Place = 7;
             z = 1;
         elseif Open(3) == point && Open(7) == point && Open(5) == 0
             Place = 5;
             z = 1;

        end
    end
if z == 1
    Handle = findobj('tag', Display(Place));
    GameCom(Place) = num;
    %Put the symbol in the right spot
    set(Handle, 'string', ComSymbol)
    set(Handle, 'enable', 'off')
end
end
if z == 0 && Level == 3 && ((Ran == 1 && Turn ~= 5) || Ran == 0)
    %Finds a random open spot
    Nums = find(Open == 0)';
    RandomPlacement = randi(numel(Nums), 1);
    RandomElement = Nums(RandomPlacement);
    %uses the display to place the spot there
    Handle = findobj('tag', Display(RandomElement));
    GameCom(RandomElement) = num;
    %Put the symbol in the right spot
    set(Handle, 'string', ComSymbol)
    set(Handle, 'enable', 'off')
    z = 1;

end
end

            
            
            
            
