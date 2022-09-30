%LevelFunction

function[Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn)
%This Maxtrix will be used to get the tags of the push buttons
%Display = ["A1", "A2", "A3"; "B1", "B2", "B3"; "C1", "C2", "C3"];
Display = ["A1", "B1", "C1"; "A2", "B2", "C2"; "A3", "B3", "C3"];
rng('shuffle')

%These varibles will hold the amount of spots taken by X and 0 individually
%And will be used later to find spots that are about to have three in a row
SumVX = sum(GameX);
SumHX = sum(GameX, 2);

SumVHuman = sum(GameY);
SumH_Human = sum(GameY, 2);

%Open will be used to see the whole playing feild and dectect which spots
%are open
Open = GameX + GameY;
OpenV = sum(Open);
OpenH = sum(Open, 2);
%This will be used to see which symbol the computer should use
ComSymbolOptions = ["X", "0"];

%Ran decides who goes first so it will help the computer choose the symbol
%If Ran = 0 the computer goes first
if Ran == 0
    ComSymbol = ComSymbolOptions(2);
    GameCom = GameY;
    HumanPlayer = GameX;
    HumanSymbol = ComSymbolOptions(1);
    
    SumVCom = sum(GameCom);
    SumHCom = sum(GameCom, 2);
    SumVHuman = sum(HumanPlayer);
    SumH_Human = sum(HumanPlayer, 2);
   %Num sets the GameX and/or GameY to it's value
    num = 2;
    numHuman = 1;
else
    ComSymbol = ComSymbolOptions(1);
    GameCom = GameX;
    HumanPlayer = GameY;
    HumanSymbol = ComSymbolOptions(2);
    
    SumVCom = sum(GameCom);
    SumHCom = sum(GameCom, 2);
    SumVHuman = sum(HumanPlayer);
    SumH_Human = sum(HumanPlayer, 2);
    
    num = 1;
    numHuman = 2;
end
if Com == 1 && Turn ~= 10
    switch Level
        case 1
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
            Turn = Turn + 1;
        case 2
            [Turn, GameCom, z] = LevelModerate(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level);
            if z == 0
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
            Turn = Turn + 1;
        case 3
            [Turn, GameCom] = LevelExpert(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level, Com);
            Turn = Turn + 1;
    end

end

if Ran == 0
    GameY = GameCom;
    GameX = HumanPlayer;
else
    GameX = GameCom;
    GameY = HumanPlayer;
end
Choice = 0;

pause(.25)