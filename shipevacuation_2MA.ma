[top]
components : cubierta

[cubierta]
type : cell
dim : (18,18,2)
delay : INERTIAL
defaultDelayTime  : 1
border : wrapped
initialvalue : 0
initialCellsValue : shipevacuation_2.val
localtransition : EvaRule

% Vecindad en el mismo plano
neighbors : cubierta(-1,-1,0) cubierta(-1,0,0) cubierta(-1,1,0) 
neighbors : cubierta(0,-1,0)  cubierta(0,0,0)  cubierta(0,1,0)
neighbors : cubierta(1,-1,0)  cubierta(1,0,0)  cubierta(1,1,0)

% Vecindad en el plano inferior
neighbors : cubierta(-1,-1,1) cubierta(-1,0,1) cubierta(-1,1,1) 
neighbors : cubierta(0,-1,1)  cubierta(0,0,1)  cubierta(0,1,1)
neighbors : cubierta(1,-1,1)  cubierta(1,0,1)  cubierta(1,1,1)

[EvaRule]

% Reglas para controlar la decicion de movimiento de un individuo
rule : {trunc((0,0,0)/10)*10+1} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((0,-1,0)=0 OR (0,-1,0)=-2) AND cellPos(2)=0 )AND (((0,-1,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((0,-1,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+3} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((1,0,0)=0 OR (1,0,0)=-2) AND cellPos(2)=0 )AND (((1,0,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((1,0,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+5} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((0,1,0)=0 OR (0,1,0)=-2) AND cellPos(2)=0 )AND (((0,1,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((0,1,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+7} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((-1,0,0)=0 OR (-1,0,0)=-2) AND cellPos(2)=0 )AND (((-1,0,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((-1,0,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+2} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((1,-1,0)=0 OR (1,-1,0)=-2) AND cellPos(2)=0 )AND (((1,-1,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((1,-1,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+4} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((1,1,0)=0 OR (1,1,0)=-2) AND cellPos(2)=0 )AND (((1,1,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((1,1,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+6} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((-1,1,0)=0 OR (-1,1,0)=-2) AND cellPos(2)=0 )AND (((-1,1,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ) AND ((-1,1,1) <= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1 OR (randint(5)=0) ))}
rule : {trunc((0,0,0)/10)*10+8} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) =0 AND ((-1,-1,0)=0 OR (-1,-1,0)=-2) AND cellPos(2)=0 )AND (((-1,-1,1) <= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1 OR (randint(5)=0) ) AND ((-1,-1,1) <= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1 OR (randint(5)=0) ))}

% Reglas para controlar la decicion de movimiento en estado de pánico
rule : {trunc((0,0,0)/10)*10+1} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((0,-1,0)=0 OR (0,-1,0)=-2) AND cellPos(2)=0 )AND (((0,-1,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((0,-1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((0,-1,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((0,-1,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((0,-1,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((0,-1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((0,-1,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+3} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((1,0,0)=0 OR (1,0,0)=-2) AND cellPos(2)=0 )AND (((1,0,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((1,0,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((1,0,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((1,0,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((1,0,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((1,0,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((1,0,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+5} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((0,1,0)=0 OR (0,1,0)=-2) AND cellPos(2)=0 )AND (((0,1,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((0,1,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((0,1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((0,1,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((0,1,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((0,1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((0,1,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+7} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((-1,0,0)=0 OR (-1,0,0)=-2) AND cellPos(2)=0 )AND (((-1,0,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((-1,0,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((-1,0,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((-1,0,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((-1,0,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((-1,0,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((-1,0,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+2} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((1,-1,0)=0 OR (1,-1,0)=-2) AND cellPos(2)=0 )AND (((1,-1,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((1,-1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((1,-1,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((1,-1,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((1,-1,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((1,-1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((1,-1,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+4} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((1,1,0)=0 OR (1,1,0)=-2) AND cellPos(2)=0 )AND (((1,1,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((1,1,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((1,1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((1,1,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((1,1,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((1,1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((1,1,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+6} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((-1,1,0)=0 OR (-1,1,0)=-2) AND cellPos(2)=0 )AND (((-1,1,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((-1,1,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((-1,1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((-1,1,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((-1,1,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((-1,1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1) AND ((-1,1,1) >= (-1,-1,1) OR (-1,-1,0)>0 OR (-1,-1,0)=-1))}
rule : {trunc((0,0,0)/10)*10+8} {1000 /  remainder(trunc((0,0,0)/10),10) } {((0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =0 AND  remainder(trunc((0,0,0)/100000),10) >0 AND ((-1,-1,0)=0 OR (-1,-1,0)=-2) AND cellPos(2)=0 )AND (((-1,-1,1) >= (0,-1,1) OR (0,-1,0)>0 OR (0,-1,0)=-1) AND ((-1,-1,1) >= (1,-1,1) OR (1,-1,0)>0 OR (1,-1,0)=-1) AND ((-1,-1,1) >= (1,0,1) OR (1,0,0)>0 OR (1,0,0)=-1) AND ((-1,-1,1) >= (1,1,1) OR (1,1,0)>0 OR (1,1,0)=-1) AND ((-1,-1,1) >= (0,1,1) OR (0,1,0)>0 OR (0,1,0)=-1) AND ((-1,-1,1) >= (-1,1,1) OR (-1,1,0)>0 OR (-1,1,0)=-1) AND ((-1,-1,1) >= (-1,0,1) OR (-1,0,0)>0 OR (-1,0,0)=-1))}

% Reglas para controlar la ejecucion de un movimiento
rule : {trunc((0,1,0)/1000000)*1000000 + ( if( remainder(trunc((0,1,0)/100000),10)  > 0,  remainder(trunc((0,1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((0,1,0)/1000),10)  OR  remainder(trunc((0,1,0)/10000),10)  >  remainder(trunc((0,1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((0,1,0)/100000),10)  > 0, 0, if((0,1,1)<=(0,0,1), if( remainder(trunc((0,1,0)/10000),10) <9, remainder(trunc((0,1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((0,1,0)/1000),10) *1000 + remainder(trunc((0,1,0)/1),10) *100 + remainder(trunc((0,1,0)/10),10) *10 } {1} { remainder(trunc((0,1,0)/1),10) =1 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((-1,1,0)/1000000)*1000000 + ( if( remainder(trunc((-1,1,0)/100000),10)  > 0,  remainder(trunc((-1,1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((-1,1,0)/1000),10)  OR  remainder(trunc((-1,1,0)/10000),10)  >  remainder(trunc((-1,1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((-1,1,0)/100000),10)  > 0, 0, if((-1,1,1)<=(0,0,1), if( remainder(trunc((-1,1,0)/10000),10) <9, remainder(trunc((-1,1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((-1,1,0)/1000),10) *1000 + remainder(trunc((-1,1,0)/1),10) *100 + remainder(trunc((-1,1,0)/10),10) *10 } {1} { remainder(trunc((-1,1,0)/1),10) =2 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((-1,0,0)/1000000)*1000000 + ( if( remainder(trunc((-1,0,0)/100000),10)  > 0,  remainder(trunc((-1,0,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((-1,0,0)/1000),10)  OR  remainder(trunc((-1,0,0)/10000),10)  >  remainder(trunc((-1,0,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((-1,0,0)/100000),10)  > 0, 0, if((-1,0,1)<=(0,0,1), if( remainder(trunc((-1,0,0)/10000),10) <9, remainder(trunc((-1,0,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((-1,0,0)/1000),10) *1000 + remainder(trunc((-1,0,0)/1),10) *100 + remainder(trunc((-1,0,0)/10),10) *10 } {1} { remainder(trunc((-1,0,0)/1),10) =3 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((-1,-1,0)/1000000)*1000000 + ( if( remainder(trunc((-1,-1,0)/100000),10)  > 0,  remainder(trunc((-1,-1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((-1,-1,0)/1000),10)  OR  remainder(trunc((-1,-1,0)/10000),10)  >  remainder(trunc((-1,-1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((-1,-1,0)/100000),10)  > 0, 0, if((-1,-1,1)<=(0,0,1), if( remainder(trunc((-1,-1,0)/10000),10) <9, remainder(trunc((-1,-1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((-1,-1,0)/1000),10) *1000 + remainder(trunc((-1,-1,0)/1),10) *100 + remainder(trunc((-1,-1,0)/10),10) *10 } {1} { remainder(trunc((-1,-1,0)/1),10) =4 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((0,-1,0)/1000000)*1000000 + ( if( remainder(trunc((0,-1,0)/100000),10)  > 0,  remainder(trunc((0,-1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((0,-1,0)/1000),10)  OR  remainder(trunc((0,-1,0)/10000),10)  >  remainder(trunc((0,-1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((0,-1,0)/100000),10)  > 0, 0, if((0,-1,1)<=(0,0,1), if( remainder(trunc((0,-1,0)/10000),10) <9, remainder(trunc((0,-1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((0,-1,0)/1000),10) *1000 + remainder(trunc((0,-1,0)/1),10) *100 + remainder(trunc((0,-1,0)/10),10) *10 } {1} { remainder(trunc((0,-1,0)/1),10) =5 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((1,-1,0)/1000000)*1000000 + ( if( remainder(trunc((1,-1,0)/100000),10)  > 0,  remainder(trunc((1,-1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((1,-1,0)/1000),10)  OR  remainder(trunc((1,-1,0)/10000),10)  >  remainder(trunc((1,-1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((1,-1,0)/100000),10)  > 0, 0, if((1,-1,1)<=(0,0,1), if( remainder(trunc((1,-1,0)/10000),10) <9, remainder(trunc((1,-1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((1,-1,0)/1000),10) *1000 + remainder(trunc((1,-1,0)/1),10) *100 + remainder(trunc((1,-1,0)/10),10) *10 } {1} { remainder(trunc((1,-1,0)/1),10) =6 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((1,0,0)/1000000)*1000000 + ( if( remainder(trunc((1,0,0)/100000),10)  > 0,  remainder(trunc((1,0,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((1,0,0)/1000),10)  OR  remainder(trunc((1,0,0)/10000),10)  >  remainder(trunc((1,0,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((1,0,0)/100000),10)  > 0, 0, if((1,0,1)<=(0,0,1), if( remainder(trunc((1,0,0)/10000),10) <9, remainder(trunc((1,0,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((1,0,0)/1000),10) *1000 + remainder(trunc((1,0,0)/1),10) *100 + remainder(trunc((1,0,0)/10),10) *10 } {1} { remainder(trunc((1,0,0)/1),10) =7 AND (0,0,0)=0 AND cellPos(2)=0 }
rule : {trunc((1,1,0)/1000000)*1000000 + ( if( remainder(trunc((1,1,0)/100000),10)  > 0,  remainder(trunc((1,1,0)/100000),10) - 1, (if(randint(1000) <  remainder(trunc((1,1,0)/1000),10)  OR  remainder(trunc((1,1,0)/10000),10)  >  remainder(trunc((1,1,0)/1000),10) , randint(9), 0))) *100000 ) +( if( remainder(trunc((1,1,0)/100000),10)  > 0, 0, if((1,1,1)<=(0,0,1), if( remainder(trunc((1,1,0)/10000),10) <9, remainder(trunc((1,1,0)/10000),10)  + 1, 9) ,0)) *10000 )+ remainder(trunc((1,1,0)/1000),10) *1000 + remainder(trunc((1,1,0)/1),10) *100 + remainder(trunc((1,1,0)/10),10) *10 } {1} { remainder(trunc((1,1,0)/1),10) =8 AND (0,0,0)=0 AND cellPos(2)=0 }

% Reglas para limpiar una persona que ya se movio
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =1 AND cellPos(2)=0 AND (((0,-1,0)=-2 ) OR ( remainder(trunc((0,-1,0)/100),10) =1))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =2 AND cellPos(2)=0 AND (((1,-1,0)=-2 ) OR ( remainder(trunc((1,-1,0)/100),10) =2))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =3 AND cellPos(2)=0 AND (((1,0,0)=-2 ) OR ( remainder(trunc((1,0,0)/100),10) =3))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =4 AND cellPos(2)=0 AND (((1,1,0)=-2 ) OR ( remainder(trunc((1,1,0)/100),10) =4))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =5 AND cellPos(2)=0 AND (((0,1,0)=-2 ) OR ( remainder(trunc((0,1,0)/100),10) =5))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =6 AND cellPos(2)=0 AND (((-1,1,0)=-2 ) OR ( remainder(trunc((-1,1,0)/100),10) =6))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =7 AND cellPos(2)=0 AND (((-1,0,0)=-2 ) OR ( remainder(trunc((-1,0,0)/100),10) =7))}
rule : {0}{1} { (0,0,0)>0 AND  remainder(trunc((0,0,0)/1),10) =8 AND cellPos(2)=0 AND (((-1,-1,0)=-2 ) OR ( remainder(trunc((-1,-1,0)/100),10) =8))}

% Reglas por defecto para todos los otros casos
rule : {(0,0,0)} {100} {t}
