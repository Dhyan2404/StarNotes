package com.twelvemonkeys.util.convert;

/* loaded from: classes10.dex */
public class NoAvailableConverterException extends ConversionException {
    public NoAvailableConverterException() {
        super("Cannot convert, no converter available for given type");
    }

    public NoAvailableConverterException(String str) {
        super(str);
    }
}
