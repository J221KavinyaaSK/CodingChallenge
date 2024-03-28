
package exception;

@SuppressWarnings("serial")
public class InvalidEmailFormatException extends Exception {
	public InvalidEmailFormatException(String msg)
	{
		super(msg);
	}
}