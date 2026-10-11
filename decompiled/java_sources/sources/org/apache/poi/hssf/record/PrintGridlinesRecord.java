package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.PrintGridlinesRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class PrintGridlinesRecord extends StandardRecord {
    public static final short sid = 43;
    private short field_1_print_gridlines;

    public PrintGridlinesRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("printGridlines", new Supplier() { // from class: com.sunia.HTREnginev2.j7l
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(PrintGridlinesRecord.this.getPrintGridlines());
            }
        });
    }

    public boolean getPrintGridlines() {
        return this.field_1_print_gridlines == 1;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 43;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_print_gridlines);
    }

    public void setPrintGridlines(boolean z) {
        this.field_1_print_gridlines = z ? (short) 1 : (short) 0;
    }

    public PrintGridlinesRecord(PrintGridlinesRecord printGridlinesRecord) {
        super(printGridlinesRecord);
        this.field_1_print_gridlines = printGridlinesRecord.field_1_print_gridlines;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.PRINT_GRIDLINES;
    }

    public PrintGridlinesRecord(RecordInputStream recordInputStream) {
        this.field_1_print_gridlines = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public PrintGridlinesRecord copy() {
        return new PrintGridlinesRecord(this);
    }
}
