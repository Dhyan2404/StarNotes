package com.twelvemonkeys.util.convert;

/* loaded from: classes10.dex */
public interface PropertyConverter {
    Object toObject(String str, Class cls, String str2) throws ConversionException;

    String toString(Object obj, String str) throws ConversionException;
}
