package org.simpleframework.xml.convert;

/* loaded from: classes16.dex */
public class ConvertException extends Exception {
    public ConvertException(String str, Object... objArr) {
        super(String.format(str, objArr));
    }
}
