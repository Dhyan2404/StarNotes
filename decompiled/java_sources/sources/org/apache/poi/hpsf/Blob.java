package org.apache.poi.hpsf;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndianInput;

@Internal
/* loaded from: classes12.dex */
public class Blob {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 10000000;
    private static int MAX_RECORD_LENGTH = 10000000;
    private byte[] _value;

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public void read(LittleEndianInput littleEndianInput) {
        int readInt = littleEndianInput.readInt();
        byte[] safelyAllocate = IOUtils.safelyAllocate(readInt, MAX_RECORD_LENGTH);
        this._value = safelyAllocate;
        if (readInt > 0) {
            littleEndianInput.readFully(safelyAllocate);
        }
    }
}
