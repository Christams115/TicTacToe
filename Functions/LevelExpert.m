%LevelExpert

function[Turn, GameCom] = LevelExpert(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level, Com)

z = 0;
Conners = [1, 3, 7, 9];
if Ran == 1
    if Turn == 1
        Random_Element = randi(4, 1);
        First_Conner = Conners(Random_Element);
        %The middle is the best spot to go fir
        Handle = findobj('tag', Display(First_Conner));
        GameCom(First_Conner) = num;
        %Put the symbol in the right spot
        set(Handle, 'string', ComSymbol)
        set(Handle, 'enable', 'off')
        z = 1;
    elseif Turn == 3
        Current = 0;
        CurrentTup = [2, 2];
       
        if Open(1) == 1
            OtherConner = 9;
            Current = 1;
            CurrentTup = [1, 1];
        elseif Open(7) == 1
            OtherConner = 3;
            Current = 7;
            CurrentTup = [1, 3];
        elseif Open(9) == 1
            OtherConner = 1;
            Current = 9;
            CurrentTup = [3, 3];
        elseif Open(3) == 1
            OtherConner = 7;
            Current = 3;
            CurrentTup = [3, 1];
        end
        if Open(5) ~= 0
            Handle = findobj('tag', Display(OtherConner));
            GameCom(OtherConner) = num;
            %Put the symbol in the right spot
            set(Handle, 'string', ComSymbol)
            set(Handle, 'enable', 'off')
            z = 1;
        else
            Place = 2;
            if Current == 3 || Current == 7
                if sum(Open(:, CurrentTup(2))) == 3
                    if Current == 3
                        Place = 9;
                    else
                        Place = 1;
                    end
                elseif sum(Open(CurrentTup(1), :), 2) == 3
                    if Current == 3
                        Place = 1;
                    else
                        Place = 9;
                    end
                elseif sum(Open(2, :), 2) == 2
                    if Current == 3
                        Place = 1;
                    else
                        Place = 9;
                    end
                    elseif sum(Open(2, :), 2) == 0
                    if Current == 3
                        Place = 9;
                    else
                        Place = 1;
                    end
                    
                end
            else
                
                if sum(Open(:, CurrentTup(2))) == 3
                    if Current == 1
                        Place = 7;
                    else
                        Place = 3;
                    end
                elseif sum(Open(CurrentTup(1), :), 2) == 3
                    if Current == 1
                        Place = 3;
                    else
                        Place = 7;
                    end
                elseif sum(Open(2, :), 2) == 2
                    if Current == 1
                        Place = 3;
                    else
                        Place = 7;
                    end
                elseif sum(Open(2, :), 2) == 0
                    if Current == 1
                        Place = 7;
                    else
                        Place = 3;
                    end
                    
                    end
                end
            
                      
            Handle = findobj('tag', Display(Place));
            GameCom(Place) = num;
            %Put the symbol in the right spot
            set(Handle, 'string', ComSymbol)
            set(Handle, 'enable', 'off')
            z = 1;
        end
        
        
   elseif Turn == 5
      
       
       
        [Turn, GameCom, z] = LevelModerate(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level);
        %pause(10)
        
        if z == 0
            if (Open(1) + Open(3) + Open(7) + Open(9)) == 2
                Handle = findobj('tag', Display(5));
                GameCom(5) = num;
                %Put the symbol in the right spot
                set(Handle, 'string', ComSymbol)
                set(Handle, 'enable', 'off')
                z = 1;
            else
                if Open(1) == 0
                    Pos = 1;
                elseif Open(3) == 0
                    Pos = 3;
                elseif Open(7) == 0
                    Pos = 7;
                elseif Open(9) == 0
                    Pos = 9;
                end
                Handle = findobj('tag', Display(Pos));
                GameCom(Pos) = num;
                %Put the symbol in the right spot
                set(Handle, 'string', ComSymbol)
                set(Handle, 'enable', 'off')
                z = 1;
             end
        end
        

    end


elseif Ran == 0 && Turn == 2 && z == 0
    if Open(5) == 0
        Handle = findobj('tag', Display(5));
        GameCom(5) = num;
        %Put the symbol in the right spot
        set(Handle, 'string', ComSymbol)
        set(Handle, 'enable', 'off')
        z = 1;
    else
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
elseif Ran == 0 && Turn == 4 && z == 0
    [Turn, GameCom, z] = LevelModerate(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level);
    if z == 0
        Middles = [2, 4, 6, 8];
        Place = 1;
        k = 0;
        while Place ~= 0
            k = randi(4, 1);
            Place = Open(Middles(k));    
        end
        Handle = findobj('tag', Display(Middles(k)));
        GameCom(Middles(k)) = num;
        %Put the symbol in the right spot
        set(Handle, 'string', ComSymbol)
        set(Handle, 'enable', 'off')
        z = 1;
    end
end
if z == 0
    [Turn, GameCom, z] = LevelModerate(Turn, ComSymbol, GameCom, num, numHuman, Open, Display, Ran, Level);

end       
end

