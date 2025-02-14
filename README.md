Move,move,M,m: allows you to pick a row and column to place your piece in 
For example: if you do coulmn 1 row 3 it will place your piece here:
 
	
       	i | i | 0 | i | i
	    ------------------
	    i | i | i | i | i
		------------------
		i | i | i | i | i
		------------------
		i | i | i | i | i
		------------------
		i | i | i | i | i
		
 
Item,item,I,i: allows you to pick one of your items which are SwapOuterCorners, SwapInnerCorners, Destroy
 
SwapOuterCorners,swapoutercourners,SOC,soc: swaps one of the outer corners for another corner.
For example you have an 0 in colum 1 row 5 and an X in column 5 row 1 and you want to swap them:
 
       
                i | i | i | i | 0
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                X | i | i | i | i
                
 
You want to swap the two
 
       
                i | i | i | i | X
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                O | i | i | i | i
                
 
SwapInnerCorners,swapinnercorners,SIC,sic: swaps one of the inner corners with another inner corner.
 
       
                i | i | i | i | i
                ------------------
                i | i | i | O | i
                ------------------
                i | i | i | i | i
                ------------------
                i | X | i | i | i
                ------------------
                i | i | i | i | i
                
 
You want to swap the two
 
       
                i | i | i | i | i
                ------------------
                i | i | i | X | i
                ------------------
                i | i | i | i | i
                ------------------
                i | O | i | i | i
                ------------------
                i | i | i | i | i
		
 
Destroy,destroy,D,d: Destroys an entire row or column.
For example if you want to destroy row 3
 
       
                i | i | X | i | i
                ------------------
                i | i | i | i | i
                ------------------
                O | O | O | X | X
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | O | i
                
 
You want to destroy column three
 
       
                i | i | X | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | O | i
		
 
Back,back,B,b: Lets you choose a different move.
 
Quit,quit,Q,q: Exit the game. 
 
The bot can destroy large amounts of pieces and swap pieces around.

