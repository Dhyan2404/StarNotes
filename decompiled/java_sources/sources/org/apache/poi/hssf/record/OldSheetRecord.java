package org.apache.poi.hssf.record;

import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.OldSheetRecord;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class OldSheetRecord implements GenericRecord {
    public static final short sid = 133;
    private CodepageRecord codepage;
    private final int field_1_position_of_BOF;
    private final int field_2_visibility;
    private final int field_3_type;
    private final byte[] field_5_sheetname;

    public OldSheetRecord(RecordInputStream recordInputStream) {
        this.field_1_position_of_BOF = recordInputStream.readInt();
        this.field_2_visibility = recordInputStream.readUByte();
        this.field_3_type = recordInputStream.readUByte();
        int readUByte = recordInputStream.readUByte();
        if (readUByte > 0) {
            recordInputStream.mark(1);
            if (recordInputStream.readByte() != 0) {
                try {
                    recordInputStream.reset();
                } catch (IOException e) {
                    throw new RecordFormatException(e);
                }
            }
        }
        byte[] safelyAllocate = IOUtils.safelyAllocate(readUByte, HSSFWorkbook.getMaxRecordLength());
        this.field_5_sheetname = safelyAllocate;
        recordInputStream.read(safelyAllocate, 0, readUByte);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_2_visibility);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field_3_type);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("bof", new Supplier() { // from class: com.sunia.HTREnginev2.agk
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(OldSheetRecord.this.getPositionOfBof());
            }
        }, "visibility", new Supplier() { // from class: com.sunia.HTREnginev2.bgk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = OldSheetRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "type", new Supplier() { // from class: com.sunia.HTREnginev2.cgk
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = OldSheetRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "sheetName", new Supplier() { // from class: com.sunia.HTREnginev2.dgk
            @Override // java.util.function.Supplier
            public final Object get() {
                return OldSheetRecord.this.getSheetname();
            }
        });
    }

    public int getPositionOfBof() {
        return this.field_1_position_of_BOF;
    }

    public String getSheetname() {
        return OldStringRecord.getString(this.field_5_sheetname, this.codepage);
    }

    public short getSid() {
        return (short) 133;
    }

    public void setCodePage(CodepageRecord codepageRecord) {
        this.codepage = codepageRecord;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BOUND_SHEET;
    }
}
