function [result]=checkMove(my_Board,currentCol,currentRow,move_Type_Values,numbr)
    values=[move_Type_Values(numbr,1) move_Type_Values(numbr,2)];
    result= moveValidility(my_Board,currentCol,currentRow,values);
end