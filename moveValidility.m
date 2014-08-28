function [result]=moveValidility(my_Board,currentCol,currentRow,position)
col=currentCol+position(1,2);
row=currentRow+position(1,1);
if((row>=1 && row<=8)&&(col>=1 && col<=8))
    if( my_Board(row,col)==0 )
        result= 0;
    else
        result=1;
    end
    
else
    result= 1;
end