package org.apache.poi.convert.exception;

/* loaded from: classes12.dex */
public class AbortConvertException extends RuntimeException {
    public AbortConvertException() {
    }

    public AbortConvertException(String str) {
        super(str);
    }

    public AbortConvertException(String str, Throwable th) {
        super(str, th);
    }

    public AbortConvertException(Throwable th) {
        super(th);
    }
}
