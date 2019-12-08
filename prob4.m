hi = input('Initial Height from the ground: ');
v0 = input('Magnitude of the Velocity: ');
theta = input('given angle above ground in degrees: ');
xa = input('Input HORIZONTAL acceleration: ');
ya = input('Input VERTICAL ACCELERATION [given that:free fall = -9.8]: ');

if ya >= 0
    error('ERROR! The inputed acceleration  is greater than or equal to zero.')
elseif h < 0
    error('ERROR! The inputed height is less than 0.')
end




t = (sqrt((v0*sind(theta))^2 - 2*ya*h) - v0*sind(theta))/ya;
if t<=0
    t = (-sqrt((v0*sind(theta))^2 - 2*ya*h) - v0*sind(theta))/ya;
end

T = 0:0.01:t;
x = (v0.*cosd(theta).*(T)) + ((1./2).*(xa).*(T.^2));
y = (h + v0.*sind(theta).*(T)) + ((1./2).*(ya).*(T.^2));

plot(x,y)
grid on
xlabel('Horizontal D')
ylabel('Vertical D')
title('Trajectory')