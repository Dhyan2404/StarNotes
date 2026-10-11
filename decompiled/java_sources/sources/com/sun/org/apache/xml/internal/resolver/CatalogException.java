package com.sun.org.apache.xml.internal.resolver;

/* loaded from: classes10.dex */
public class CatalogException extends Exception {
    public static final int INVALID_ENTRY = 2;
    public static final int INVALID_ENTRY_TYPE = 3;
    public static final int NO_XML_PARSER = 4;
    public static final int PARSE_FAILED = 7;
    public static final int UNENDED_COMMENT = 8;
    public static final int UNKNOWN_FORMAT = 5;
    public static final int UNPARSEABLE = 6;
    public static final int WRAPPER = 1;
    private Exception exception;
    private int exceptionType;

    public CatalogException(int i, String str) {
        super(str);
        this.exceptionType = i;
        this.exception = null;
    }

    public Exception getException() {
        return this.exception;
    }

    public int getExceptionType() {
        return this.exceptionType;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        Exception exc;
        String message = super.getMessage();
        return (message != null || (exc = this.exception) == null) ? message : exc.getMessage();
    }

    @Override // java.lang.Throwable
    public String toString() {
        Exception exc = this.exception;
        return exc != null ? exc.toString() : super.toString();
    }

    public CatalogException(int i) {
        super("Catalog Exception " + i);
        this.exceptionType = i;
        this.exception = null;
    }

    public CatalogException(Exception exc) {
        this.exceptionType = 1;
        this.exception = exc;
    }

    public CatalogException(String str, Exception exc) {
        super(str);
        this.exceptionType = 1;
        this.exception = exc;
    }
}
