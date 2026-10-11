package org.beyka.tiffbitmapfactory.exceptions;

/* loaded from: classes13.dex */
public class CantOpenFileException extends RuntimeException {
    private String fileName;

    public CantOpenFileException(String str) {
        super("Can't open file " + str);
        this.fileName = str;
    }

    public String getFileName() {
        return this.fileName;
    }
}
