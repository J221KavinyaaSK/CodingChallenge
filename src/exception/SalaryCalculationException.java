package exception;

@SuppressWarnings("serial")
public class SalaryCalculationException extends Exception {
	public SalaryCalculationException(String msg)
	{
		super(msg);
	}
}