package com.packt.exception;

public class ApplicationException extends RuntimeException {
    private String errorCode;

    private String message;

    public ApplicationException(String errorCode) {
        super();
        this.errorCode = errorCode;
    }

    public ApplicationException(String errorCode, String message) {
        super();
        this.errorCode = errorCode;
        this.message = message;
    }

    public String getCodeMessage() {
        return "[" + errorCode + "] " + message;
    }

    public String getMessage() {
        return message;
    }
}
