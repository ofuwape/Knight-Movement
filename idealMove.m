function[result] =idealMove(my_Board,currentCol,currentRow,move_Type_Values,acessibilityValues)
acessibilityComparison=[];
for i=1:1:8
    if (checkMove(my_Board,currentCol,currentRow,move_Type_Values,i)==0)
        fprintf('Thought about Move: %d \n',i);
        acessibilityComparison(i)=acessibilityValues((move_Type_Values(i,1)+currentRow),(move_Type_Values(i,2)+currentCol));
    end
end
 all =find(acessibilityComparison==max(acessibilityComparison));
 result=all(1);
 fprintf('Picked Move: %d as the most ideal move',result); 
end