package com.exception;

public class InvalidInputGradeException extends Exception {
	public InvalidInputGradeException() {
		super("Invalid Input Grade Exception. <br>Only numbers from 0 to 100 are accepted");
	}
}
