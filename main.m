acessibilityValues = [2 3 4 4 4 4 3 2 ;
    3 4 6 6 6 6 4 3;
    4 6 8 8 8 8 6 4;
    4 6 8 8 8 8 6 4;
    4 6 8 8 8 8 6 4;
    4 6 8 8 8 8 6 4;
    3 4 6 6 6 6 4 3;
    2 3 4 4 4 4 3 2];
move_Type_Values=[-1 2; -2 1; -2 -1; -1 -2; 1 -2;  2 -1; 2 1; 1 2];
my_Board=zeros(8);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('Welcome! :) ');
disp('Enter the start position of the knight');
currentRow=input('Please enter the x Component as an integer between 1 and 8: ');
currentCol=input('Please enter the y Component as an integer between 1 and 8:  ');
numberofTries=input('Enter the number of tries the knight should try making a move: ');
my_Board(currentRow,currentCol)=1;
disp('');
disp('The Board');
disp(my_Board);
disp('Acessibility Table');
disp(acessibilityValues);

for counter=1:1:numberofTries
    
    fprintf('Attempting to move the knight...\n');
    num=idealMove(my_Board,currentCol,currentRow,move_Type_Values,acessibilityValues);
    [currentRow,currentCol,acessibilityValues,my_Board]=moveAndUpdate(acessibilityValues,currentRow,currentCol,num,move_Type_Values,my_Board);
    fprintf('\n');
    disp('The Board');
    fprintf('\n');
    disp(my_Board);
    fprintf('\n');
    fprintf('Moved the knight %d time(s)\n',counter);
end
disp('Acessibility Table');
fprintf('\n');
disp(acessibilityValues);


