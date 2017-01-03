
createListFromRange(Min,Max,List):- addElement(Min,Max,[],List).
addElement(Min,Max,_,[]):- Min > Max.
addElement(Min,Max,List,[Max|List]):- Min = Max. 
addElement(Min,Max,List,ListF):- N is Max-1, addElement(Min, N, [Max|List],ListF).