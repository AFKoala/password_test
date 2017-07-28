def calc(math, num1, num2)
	if math == "add"
		sum = num1.to_i + num2.to_i
	elsif math == 'subtract'
		sum = num1.to_i - num2.to_i
	elsif math == 'multiply'
		sum = num1.to_i * num2.to_i
	elsif math == 'divide'
		sum = num1.to_i / num2.to_i
	end
	sum.to_s
end