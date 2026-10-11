package org.apache.poi.util;

/* loaded from: classes13.dex */
public class RecordFormatException extends RuntimeException {
    public RecordFormatException(String str) {
        super(str);
    }

    public static void check(boolean z, String str) {
        if (!z) {
            throw new RecordFormatException(str);
        }
    }

    public RecordFormatException(String str, Throwable th) {
        super(str, th);
    }

    public RecordFormatException(Throwable th) {
        super(th);
    }
}
