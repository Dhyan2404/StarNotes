package org.apache.poi.hssf.record;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.NullEscherSerializationListener;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class DrawingGroupRecord extends AbstractEscherHolderRecord {
    private static final int DEFAULT_MAX_RECORD_SIZE = 8228;
    private static int MAX_RECORD_SIZE = 8228;
    public static final short sid = 235;

    public DrawingGroupRecord() {
    }

    private static int getMaxDataSize() {
        return MAX_RECORD_SIZE - 4;
    }

    public static int getMaxRecordSize() {
        return MAX_RECORD_SIZE;
    }

    private int getRawDataSize() {
        List<EscherRecord> escherRecords = getEscherRecords();
        byte[] rawData = getRawData();
        if (escherRecords.isEmpty() && rawData != null) {
            return rawData.length;
        }
        Iterator<EscherRecord> it2 = escherRecords.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getRecordSize();
        }
        return i;
    }

    public static int grossSizeFromDataSize(int i) {
        return i + ((((i - 1) / getMaxDataSize()) + 1) * 4);
    }

    public static void setMaxRecordSize(int i) {
        MAX_RECORD_SIZE = i;
    }

    private void writeContinueHeader(byte[] bArr, int i, int i2) {
        LittleEndian.putShort(bArr, i, (short) 60);
        LittleEndian.putShort(bArr, i + 2, (short) i2);
    }

    private int writeData(int i, byte[] bArr, byte[] bArr2) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < bArr2.length) {
            int maxDataSize = getMaxDataSize();
            int min = Math.min(bArr2.length - i2, maxDataSize);
            if (i2 / maxDataSize >= 2) {
                writeContinueHeader(bArr, i, min);
            } else {
                writeHeader(bArr, i, min);
            }
            int i4 = i + 4;
            System.arraycopy(bArr2, i2, bArr, i4, min);
            i = i4 + min;
            i2 += min;
            i3 = i3 + 4 + min;
        }
        return i3;
    }

    private void writeHeader(byte[] bArr, int i, int i2) {
        LittleEndian.putShort(bArr, i, getSid());
        LittleEndian.putShort(bArr, i + 2, (short) i2);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord
    public String getRecordName() {
        return "MSODRAWINGGROUP";
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.RecordBase
    public int getRecordSize() {
        return grossSizeFromDataSize(getRawDataSize());
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Removal(version = "5.3")
    @Deprecated
    public void processChildRecords() {
        decode();
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.RecordBase
    public int serialize(int i, byte[] bArr) {
        byte[] rawData = getRawData();
        if (getEscherRecords().isEmpty() && rawData != null) {
            return writeData(i, bArr, rawData);
        }
        byte[] bArr2 = new byte[getRawDataSize()];
        Iterator<EscherRecord> it2 = getEscherRecords().iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            i2 += it2.next().serialize(i2, bArr2, new NullEscherSerializationListener());
        }
        return writeData(i, bArr, bArr2);
    }

    public DrawingGroupRecord(DrawingGroupRecord drawingGroupRecord) {
        super(drawingGroupRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DRAWING_GROUP;
    }

    public DrawingGroupRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DrawingGroupRecord copy() {
        return new DrawingGroupRecord(this);
    }
}
