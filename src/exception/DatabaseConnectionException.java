package exception;

@SuppressWarnings("serial")
public class DatabaseConnectionException extends Exception{
	public DatabaseConnectionException(String msg)
	{
		super(msg);
	}

}
