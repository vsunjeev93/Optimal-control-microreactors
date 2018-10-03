function res=bang_bang_bc(Ya,Yb)

Da=2.65;gamma=20;B=-20;theta_a=0;Bi=0 ;
res=[Ya(1,1)-1; Ya(2,1);Ya(4,1)-Bi*(Ya(3,1)-theta_a);Ya(7,1)+Bi*Ya(8,1);...
    Ya(1,2)-Yb(1,1);Ya(2,2)-Yb(2,1);Ya(3,2)-Yb(3,1);Ya(4,2)-Yb(4,1);...
    Ya(5,2)-Yb(5,1);Ya(6,2)-Yb(6,1);Ya(7,2)-Yb(7,1);Ya(8,2);...
        
    Yb(4,2)+Bi*(Yb(3,2)-theta_a);Yb(5,2);Yb(6,2);Yb(7,2)-Bi*Yb(8,2)];
end


    
