package org.apache.poi.hssf.record;

import java.io.IOException;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public abstract class StandardRecord extends Record {
    public StandardRecord() {
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract StandardRecord copy();

    public abstract int getDataSize();

    @Override // org.apache.poi.hssf.record.RecordBase
    public final int getRecordSize() {
        return getDataSize() + 4;
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public final int serialize(int i, byte[] bArr) {
        int dataSize = getDataSize();
        int i2 = dataSize + 4;
        try {
            LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, i, i2);
            try {
                littleEndianByteArrayOutputStream.writeShort(getSid());
                littleEndianByteArrayOutputStream.writeShort(dataSize);
                serialize(littleEndianByteArrayOutputStream);
                if (littleEndianByteArrayOutputStream.getWriteIndex() - i == i2) {
                    littleEndianByteArrayOutputStream.close();
                    return i2;
                }
                throw new IllegalStateException("Error in serialization of (" + getClass().getName() + "): Incorrect number of bytes written - expected " + i2 + " but got " + (littleEndianByteArrayOutputStream.getWriteIndex() - i));
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public abstract void serialize(LittleEndianOutput littleEndianOutput);

    public StandardRecord(StandardRecord standardRecord) {
    }
}
