package org.apache.poi.hssf.record;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.BoundSheetRecord;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.ss.util.WorkbookUtil;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class BoundSheetRecord extends StandardRecord {
    public static final short sid = 133;
    private int field_1_position_of_BOF;
    private int field_2_option_flags;
    private int field_4_isMultibyteUnicode;
    private String field_5_sheetname;
    private static final BitField hiddenFlag = BitFieldFactory.getInstance(1);
    private static final BitField veryHiddenFlag = BitFieldFactory.getInstance(2);

    public BoundSheetRecord(String str) {
        this.field_2_option_flags = 0;
        setSheetname(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareRecords(BoundSheetRecord boundSheetRecord, BoundSheetRecord boundSheetRecord2) {
        return boundSheetRecord.getPositionOfBof() - boundSheetRecord2.getPositionOfBof();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMultibyte() {
        return (this.field_4_isMultibyteUnicode & 1) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_2_option_flags);
    }

    public static BoundSheetRecord[] orderByBofPosition(List<BoundSheetRecord> list) {
        BoundSheetRecord[] boundSheetRecordArr = new BoundSheetRecord[list.size()];
        list.toArray(boundSheetRecordArr);
        Arrays.sort(boundSheetRecordArr, new Comparator() { // from class: com.sunia.HTREnginev2.ju
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compareRecords;
                compareRecords = BoundSheetRecord.compareRecords((BoundSheetRecord) obj, (BoundSheetRecord) obj2);
                return compareRecords;
            }
        });
        return boundSheetRecordArr;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.field_5_sheetname.length() * (isMultibyte() ? 2 : 1)) + 8;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("bof", new Supplier() { // from class: com.sunia.HTREnginev2.ku
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(BoundSheetRecord.this.getPositionOfBof());
            }
        }, "optionFlags", new Supplier() { // from class: com.sunia.HTREnginev2.lu
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = BoundSheetRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "multiByte", new Supplier() { // from class: com.sunia.HTREnginev2.mu
            @Override // java.util.function.Supplier
            public final Object get() {
                boolean isMultibyte;
                isMultibyte = BoundSheetRecord.this.isMultibyte();
                return Boolean.valueOf(isMultibyte);
            }
        }, "sheetName", new Supplier() { // from class: com.sunia.HTREnginev2.nu
            @Override // java.util.function.Supplier
            public final Object get() {
                return BoundSheetRecord.this.getSheetname();
            }
        }, CellUtil.HIDDEN, new Supplier() { // from class: com.sunia.HTREnginev2.ou
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BoundSheetRecord.this.isHidden());
            }
        }, "veryHidden", new Supplier() { // from class: com.sunia.HTREnginev2.pu
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BoundSheetRecord.this.isVeryHidden());
            }
        });
    }

    public int getPositionOfBof() {
        return this.field_1_position_of_BOF;
    }

    public String getSheetname() {
        return this.field_5_sheetname;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 133;
    }

    public boolean isHidden() {
        return hiddenFlag.isSet(this.field_2_option_flags);
    }

    public boolean isVeryHidden() {
        return veryHiddenFlag.isSet(this.field_2_option_flags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(getPositionOfBof());
        littleEndianOutput.writeShort(this.field_2_option_flags);
        String str = this.field_5_sheetname;
        littleEndianOutput.writeByte(str.length());
        littleEndianOutput.writeByte(this.field_4_isMultibyteUnicode);
        if (isMultibyte()) {
            StringUtil.putUnicodeLE(str, littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(str, littleEndianOutput);
        }
    }

    public void setHidden(boolean z) {
        this.field_2_option_flags = hiddenFlag.setBoolean(this.field_2_option_flags, z);
    }

    public void setPositionOfBof(int i) {
        this.field_1_position_of_BOF = i;
    }

    public void setSheetname(String str) {
        WorkbookUtil.validateSheetName(str);
        this.field_5_sheetname = str;
        this.field_4_isMultibyteUnicode = StringUtil.hasMultibyte(str) ? 1 : 0;
    }

    public void setVeryHidden(boolean z) {
        this.field_2_option_flags = veryHiddenFlag.setBoolean(this.field_2_option_flags, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BOUND_SHEET;
    }

    public BoundSheetRecord(BoundSheetRecord boundSheetRecord) {
        super(boundSheetRecord);
        this.field_1_position_of_BOF = boundSheetRecord.field_1_position_of_BOF;
        this.field_2_option_flags = boundSheetRecord.field_2_option_flags;
        this.field_4_isMultibyteUnicode = boundSheetRecord.field_4_isMultibyteUnicode;
        this.field_5_sheetname = boundSheetRecord.field_5_sheetname;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public BoundSheetRecord copy() {
        return new BoundSheetRecord(this);
    }

    public BoundSheetRecord(RecordInputStream recordInputStream) {
        byte[] bArr = new byte[4];
        recordInputStream.readPlain(bArr, 0, 4);
        this.field_1_position_of_BOF = LittleEndian.getInt(bArr);
        this.field_2_option_flags = recordInputStream.readUShort();
        int readUByte = recordInputStream.readUByte();
        this.field_4_isMultibyteUnicode = recordInputStream.readByte();
        if (isMultibyte()) {
            this.field_5_sheetname = recordInputStream.readUnicodeLEString(readUByte);
        } else {
            this.field_5_sheetname = recordInputStream.readCompressedUnicode(readUByte);
        }
    }
}
