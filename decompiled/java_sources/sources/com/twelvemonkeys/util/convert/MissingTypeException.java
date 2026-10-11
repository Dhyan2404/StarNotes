package com.twelvemonkeys.util.convert;

/* loaded from: classes10.dex */
public class MissingTypeException extends ConversionException {
    public MissingTypeException() {
        super("Cannot convert, missing type");
    }

    public MissingTypeException(String str) {
        super(str);
    }
}
