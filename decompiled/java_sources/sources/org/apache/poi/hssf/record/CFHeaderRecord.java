package org.apache.poi.hssf.record;

import org.apache.poi.ss.util.CellRangeAddress;

/* loaded from: classes12.dex */
public final class CFHeaderRecord extends CFHeaderBase {
    public static final short sid = 432;

    public CFHeaderRecord() {
        createEmpty();
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase
    public String getRecordName() {
        return "CFHEADER";
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CF_HEADER;
    }

    public CFHeaderRecord(CFHeaderRecord cFHeaderRecord) {
        super(cFHeaderRecord);
    }

    public CFHeaderRecord(CellRangeAddress[] cellRangeAddressArr, int i) {
        super(cellRangeAddressArr, i);
    }

    public CFHeaderRecord(RecordInputStream recordInputStream) {
        read(recordInputStream);
    }

    @Override // org.apache.poi.hssf.record.CFHeaderBase, org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CFHeaderRecord copy() {
        return new CFHeaderRecord(this);
    }
}
