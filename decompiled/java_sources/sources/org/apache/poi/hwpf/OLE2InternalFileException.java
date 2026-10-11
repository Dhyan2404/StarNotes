package org.apache.poi.hwpf;

import org.apache.poi.UnsupportedFileFormatException;

/* loaded from: classes12.dex */
public class OLE2InternalFileException extends UnsupportedFileFormatException {
    private byte[] data;

    public OLE2InternalFileException(String str, byte[] bArr) {
        super(str);
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] bArr) {
        this.data = bArr;
    }
}
