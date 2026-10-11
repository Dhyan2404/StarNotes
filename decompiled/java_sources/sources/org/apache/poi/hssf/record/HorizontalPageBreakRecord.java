package org.apache.poi.hssf.record;

/* loaded from: classes12.dex */
public final class HorizontalPageBreakRecord extends PageBreakRecord {
    public static final short sid = 27;

    public HorizontalPageBreakRecord() {
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 27;
    }

    public HorizontalPageBreakRecord(HorizontalPageBreakRecord horizontalPageBreakRecord) {
        super(horizontalPageBreakRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.HORIZONTAL_PAGE_BREAK;
    }

    public HorizontalPageBreakRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.PageBreakRecord, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public HorizontalPageBreakRecord copy() {
        return new HorizontalPageBreakRecord(this);
    }
}
