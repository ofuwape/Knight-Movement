function [n_currentRow,n_currentCol,n_acessibilityValues,n_my_Board]= moveAndUpdate(acessibilityValues,currentRow,currentCol,numbr,move_Type_Values,my_Board)
currentRow=currentRow+move_Type_Values(numbr,1);
currentCol=currentCol+move_Type_Values(numbr,2);
acessibilityValues(currentRow,currentCol)=acessibilityValues(currentRow,currentCol)-1;
my_Board(currentRow,currentCol)=1;
%disp(my_Board);

n_currentRow=currentRow;
n_currentCol=currentCol;
n_acessibilityValues=acessibilityValues;
n_my_Board=my_Board;
end