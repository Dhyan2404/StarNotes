package org.apache.poi.hssf.record;

/* loaded from: classes12.dex */
public final class VerticalPageBreakRecord extends PageBreakRecord {
    public static final short sid = 26;

    public VerticalPageBreakRecord() {
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 26;
    }

    public VerticalPageBreakRecord(VerticalPageBreakRecord verticalPageBreakRecord) {
        super(verticalPageBreakRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.VERTICAL_PAGE_BREAK;
    }

    public VerticalPageBreakRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.PageBreakRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public VerticalPageBreakRecord copy() {
        return new VerticalPageBreakRecord(this);
    }
}
