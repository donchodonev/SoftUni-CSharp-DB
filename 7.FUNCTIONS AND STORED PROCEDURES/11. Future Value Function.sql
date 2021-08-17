CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(38,4),@yearlyInterestRate FLOAT,@numberOfYears INT)
RETURNS DECIMAL(38,4)
BEGIN
DECLARE @result DECIMAL(38,4)
SET @result = @sum * (POWER(1 + @yearlyInterestRate, @numberOfYears))
RETURN @result
END