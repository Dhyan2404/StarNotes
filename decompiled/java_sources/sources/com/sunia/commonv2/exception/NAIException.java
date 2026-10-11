package com.sunia.commonv2.exception;

/* loaded from: classes10.dex */
public class NAIException extends Exception {
    private int code;
    public static NAIException ZERO = new NAIException(0, "The nai engine is not available.");
    public static NAIException ONE = new NAIException(1, "Calls in the main thread are not supported");
    public static NAIException NEGATIVE6 = new NAIException(-6, "No handwriting was found for any of the characters.");
    public static NAIException NEGATIVE7 = new NAIException(-7, "Some of the characters did not find a corresponding handwriting");

    public NAIException(int i, String str) {
        super(str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
