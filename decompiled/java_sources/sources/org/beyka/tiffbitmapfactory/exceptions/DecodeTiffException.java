package org.beyka.tiffbitmapfactory.exceptions;

/* loaded from: classes13.dex */
public class DecodeTiffException extends RuntimeException {
    private String aditionalInfo;
    private String fileName;

    public DecodeTiffException(String str) {
        super("Could not decode tiff file " + str);
        this.fileName = str;
    }

    public String getAditionalInfo() {
        return this.aditionalInfo;
    }

    public String getFileName() {
        return this.fileName;
    }

    public DecodeTiffException(String str, String str2) {
        super("Could not decode tiff file " + str + "\n" + str2);
        this.fileName = str;
        this.aditionalInfo = str2;
    }
}
