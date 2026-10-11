package com.sun.org.apache.bcel.internal.verifier.exc;

/* loaded from: classes10.dex */
public abstract class VerifierConstraintViolatedException extends RuntimeException {
    private String detailMessage;

    public VerifierConstraintViolatedException() {
    }

    public void extendMessage(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (this.detailMessage == null) {
            this.detailMessage = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        this.detailMessage = str + this.detailMessage + str2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.detailMessage;
    }

    public VerifierConstraintViolatedException(String str) {
        super(str);
        this.detailMessage = str;
    }
}
