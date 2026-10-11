package com.sunia.commonv2.exception;

/* loaded from: classes10.dex */
public class NAICheckException extends Exception {
    private int code;

    public NAICheckException(int i, String str) {
        super(str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }
}
