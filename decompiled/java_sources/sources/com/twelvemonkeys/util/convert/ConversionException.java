package com.twelvemonkeys.util.convert;

/* loaded from: classes10.dex */
public class ConversionException extends IllegalArgumentException {
    public ConversionException(String str) {
        super(str);
    }

    public ConversionException(Throwable th) {
        super(th != null ? th.getMessage() : null, th);
    }

    public ConversionException(String str, Throwable th) {
        super(str, th);
    }
}
