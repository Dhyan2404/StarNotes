package org.apache.poi.hssf.record;

/* loaded from: classes12.dex */
public final class FooterRecord extends HeaderFooterBase {
    public static final short sid = 21;

    public FooterRecord(String str) {
        super(str);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 21;
    }

    public FooterRecord(FooterRecord footerRecord) {
        super(footerRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FOOTER;
    }

    public FooterRecord(RecordInputStream recordInputStream) {
        super(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.HeaderFooterBase, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FooterRecord copy() {
        return new FooterRecord(this);
    }
}
