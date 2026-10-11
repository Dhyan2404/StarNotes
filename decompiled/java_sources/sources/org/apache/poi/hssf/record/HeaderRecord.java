package org.apache.poi.hssf.record;

/* loaded from: classes12.dex */
public final class HeaderRecord extends HeaderFooterBase {
    public static final short sid = 20;

    public HeaderRecord(String str) {
        super(str);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 20;
    }

    public HeaderRecord(HeaderRecord headerRecord) {
        super(headerRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.HEADER;
    }

    public HeaderRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.HeaderFooterBase, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public HeaderRecord copy() {
        return new HeaderRecord(this);
    }
}
