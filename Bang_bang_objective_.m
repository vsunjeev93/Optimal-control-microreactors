function cost=Bang_bang_objective_(z)
options = bvpset('SingularTerm',[],'AbsTol',10^-25,'RelTol',10^-25);
xint=[linspace(0,z(1),250)  linspace(z(1),1,250)];
temp=xint(:);
solinit=bvpinit(temp(:)',[1 0 0 0 0 0 0 0]);
sol=bvp4c(@bang_bang,@bang_bang_bc,solinit,options);
y=deval(sol,temp(:)');
cost=[trapz(temp(:)',(y(2,:).^2))];
end
