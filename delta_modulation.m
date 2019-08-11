function output=delta_modulation(input)

UC =0; 
A = .1;
output = zeros(length(input)); 

for n = 1:length(input)
    if input(n)>UC
        output(n) =1; 
        UC = UC+A; 
    else 
        output(n) = 0;
        UC = UC-A; 
    end 
end 