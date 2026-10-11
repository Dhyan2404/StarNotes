package com.sunia.calculatorv2.ink.editor;

/* loaded from: classes10.dex */
public class EditorException extends RuntimeException {
    public static final int CODE_LOW_CONFIDENCE_DETECTED = 0;
    private final int code;

    public EditorException(int i, String str) {
        super(str);
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }

    public EditorException(int i, Throwable th) {
        super(th);
        this.code = i;
    }

    public EditorException(int i, String str, Throwable th) {
        super(str, th);
        this.code = i;
    }
}
