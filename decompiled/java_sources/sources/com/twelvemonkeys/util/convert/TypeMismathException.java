package com.twelvemonkeys.util.convert;

/* loaded from: classes10.dex */
public class TypeMismathException extends ConversionException {
    public TypeMismathException(Class cls) {
        super("Wrong type for conversion: " + cls.getName());
    }
}
