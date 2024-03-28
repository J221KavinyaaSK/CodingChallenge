package exception;

@SuppressWarnings("serial")
public class ApplicationDeadlineException extends Exception{
	public ApplicationDeadlineException(String msg)
	{
		super(msg);
	}

}