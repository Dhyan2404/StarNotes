package org.apache.poi.hdgf.streams;

import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public class StreamStore {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 10000000;
    private static int MAX_RECORD_LENGTH = 10000000;
    private byte[] contents;

    public StreamStore(byte[] bArr, int i, int i2) {
        this.contents = IOUtils.safelyClone(bArr, i, i2, MAX_RECORD_LENGTH);
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public byte[] _getContents() {
        return this.contents;
    }

    public void copyBlockHeaderToContents() {
    }

    public byte[] getContents() {
        return this.contents;
    }

    public void prependContentsWith(byte[] bArr) {
        byte[] safelyAllocate = IOUtils.safelyAllocate(this.contents.length + bArr.length, MAX_RECORD_LENGTH);
        System.arraycopy(bArr, 0, safelyAllocate, 0, bArr.length);
        byte[] bArr2 = this.contents;
        System.arraycopy(bArr2, 0, safelyAllocate, bArr.length, bArr2.length);
        this.contents = safelyAllocate;
    }
}
