package org.apache.poi.util;

/* loaded from: classes13.dex */
public class DocumentFormatException extends RuntimeException {
    public DocumentFormatException(String str) {
        super(str);
    }

    public static void check(boolean z, String str) {
        if (!z) {
            throw new DocumentFormatException(str);
        }
    }

    public DocumentFormatException(String str, Throwable th) {
        super(str, th);
    }

    public DocumentFormatException(Throwable th) {
        super(th);
    }
}
