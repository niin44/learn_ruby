#write your code here
def add(num1, num2)
    return num1 + num2
end

def subtract(num1, num2)
    return num1 - num2
end

def sum(numArray)
    totalSum = 0
    numArray.each do |i|
        totalSum += i
    end
    return totalSum
end

def multiply(num1, *num2)
    total = num1
    num2.each do |i|
        total *= i
    end
    return total
end

def power (num1, num2)
    return num1**num2
end

def factorial(value)
    total = 1
    if (value==0)
        return 1
    end
    for i in 1..value
        total *=i
    end
    return total
end