package com.exception;

public class InvalidNameLengthException extends Exception {
	public InvalidNameLengthException() {
		super("Invalid Name Exception. <br>Name is invalid, try again.");
	}
}
