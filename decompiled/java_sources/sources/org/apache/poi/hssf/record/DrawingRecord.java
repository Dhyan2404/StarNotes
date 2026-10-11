package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.DrawingRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class DrawingRecord extends StandardRecord {
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final short sid = 236;
    private byte[] contd;
    private byte[] recordData;

    public DrawingRecord() {
        this.recordData = EMPTY_BYTE_ARRAY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this.contd;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return this.recordData.length;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("recordData", new Supplier() { // from class: com.sunia.HTREnginev2.oif
            @Override // java.util.function.Supplier
            public final Object get() {
                return DrawingRecord.this.getRecordData();
            }
        }, "contd", new Supplier() { // from class: com.sunia.HTREnginev2.pif
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = DrawingRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public byte[] getRecordData() {
        return this.recordData;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 236;
    }

    @Deprecated
    public void processContinueRecord(byte[] bArr) {
        this.contd = bArr;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.write(this.recordData);
    }

    public void setData(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data must not be null");
        }
        this.recordData = bArr;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DRAWING;
    }

    public DrawingRecord(DrawingRecord drawingRecord) {
        super(drawingRecord);
        byte[] bArr = drawingRecord.recordData;
        this.recordData = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = drawingRecord.contd;
        this.contd = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DrawingRecord copy() {
        return new DrawingRecord(this);
    }

    public DrawingRecord(RecordInputStream recordInputStream) {
        this.recordData = recordInputStream.readRemainder();
    }

    public DrawingRecord(byte[] bArr) {
        this.recordData = (byte[]) bArr.clone();
    }
}
