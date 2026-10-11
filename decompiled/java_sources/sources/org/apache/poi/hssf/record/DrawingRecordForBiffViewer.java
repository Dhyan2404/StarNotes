package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;

/* loaded from: classes12.dex */
public final class DrawingRecordForBiffViewer extends AbstractEscherHolderRecord {
    public static final short sid = 236;

    public DrawingRecordForBiffViewer() {
    }

    private static RecordInputStream convertToInputStream(DrawingRecord drawingRecord) {
        RecordInputStream recordInputStream = new RecordInputStream(new UnsynchronizedByteArrayInputStream(drawingRecord.serialize()));
        recordInputStream.nextRecord();
        return recordInputStream;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord
    public String getRecordName() {
        return "MSODRAWING";
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 236;
    }

    public DrawingRecordForBiffViewer(DrawingRecordForBiffViewer drawingRecordForBiffViewer) {
        super(drawingRecordForBiffViewer);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.DRAWING;
    }

    public DrawingRecordForBiffViewer(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    public DrawingRecordForBiffViewer(DrawingRecord drawingRecord) {
        super(convertToInputStream(drawingRecord));
        decode();
    }

    @Override // org.apache.poi.hssf.record.AbstractEscherHolderRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public DrawingRecordForBiffViewer copy() {
        return new DrawingRecordForBiffViewer(this);
    }
}
