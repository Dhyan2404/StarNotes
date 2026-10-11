package org.apache.poi;

/* loaded from: classes12.dex */
public abstract class UnsupportedFileFormatException extends IllegalArgumentException {
    private static final long serialVersionUID = -8281969197282030046L;

    public UnsupportedFileFormatException(String str) {
        super(str);
    }

    public UnsupportedFileFormatException(String str, Throwable th) {
        super(str, th);
    }
}
