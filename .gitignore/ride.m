a = input('Enter 1 if you want to train data \n Enter 2 if you want pridiction  \n =')
if a==1
   x = input('Enter the value of x=')
    y = input('Enter the value of y=')
     %plot(x,y)
    

   l = length(y)
   J = 0
   theta = 1
   theta1 = 1
   alpha = 0.03
   
  for i=1:1000
   h = theta + (theta1*x)
   J = (1/(2 *l))*sum((h - y ).^2)
   %x
%-----------------------------------------------------theta--------------------------------------------------------------------   
temp1 = theta -(1/l)*alpha*sum((h - y))
temp2 = theta1-(1/l)*alpha*sum(((h - y).*x))
   
   theta = temp1
   theta1 = temp2
  end
  
  
  
  
 figure
h = theta + theta1*x;
plot(x,h)
title('Combine Plots')
hold on
scatter(x,y)
hold off
 filename = 'inputdata.xlsx';
A = [theta,theta1];
xlswrite(filename,A)

else 
  x = input('Enter the value of x=')
  %data = xlsread(inputdata)
  filename = 'inputdata.xlsx';
  A = xlsread(filename)
  theta = A(:,1)
  theta1 = A(:,2)
  y = theta + theta1*x
end
