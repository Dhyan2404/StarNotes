package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.StyleRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.RecordFormatException;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class StyleRecord extends StandardRecord {
    public static final short sid = 659;
    private int field_1_xf_index;
    private int field_2_builtin_style;
    private int field_3_outline_style_level;
    private boolean field_3_stringHasMultibyte;
    private String field_4_name;
    private static final BitField styleIndexMask = BitFieldFactory.getInstance(4095);
    private static final BitField isBuiltinFlag = BitFieldFactory.getInstance(32768);

    public StyleRecord() {
        this.field_1_xf_index = isBuiltinFlag.set(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return isBuiltin() ? "built-in" : "user-defined";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field_2_builtin_style);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.field_3_outline_style_level);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        if (isBuiltin()) {
            return 4;
        }
        return (this.field_4_name.length() * (this.field_3_stringHasMultibyte ? 2 : 1)) + 5;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.y2n
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(StyleRecord.this.getXFIndex());
            }
        }, "type", new Supplier() { // from class: com.sunia.HTREnginev2.z2n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = StyleRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "builtin_style", new Supplier() { // from class: com.sunia.HTREnginev2.a3n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = StyleRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "outline_level", new Supplier() { // from class: com.sunia.HTREnginev2.b3n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = StyleRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "name", new Supplier() { // from class: com.sunia.HTREnginev2.c3n
            @Override // java.util.function.Supplier
            public final Object get() {
                return StyleRecord.this.getName();
            }
        });
    }

    public String getName() {
        return this.field_4_name;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public int getXFIndex() {
        return styleIndexMask.getValue(this.field_1_xf_index);
    }

    public boolean isBuiltin() {
        return isBuiltinFlag.isSet(this.field_1_xf_index);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_xf_index);
        if (isBuiltin()) {
            littleEndianOutput.writeByte(this.field_2_builtin_style);
            littleEndianOutput.writeByte(this.field_3_outline_style_level);
            return;
        }
        littleEndianOutput.writeShort(this.field_4_name.length());
        littleEndianOutput.writeByte(this.field_3_stringHasMultibyte ? 1 : 0);
        if (this.field_3_stringHasMultibyte) {
            StringUtil.putUnicodeLE(getName(), littleEndianOutput);
        } else {
            StringUtil.putCompressedUnicode(getName(), littleEndianOutput);
        }
    }

    public void setBuiltinStyle(int i) {
        this.field_1_xf_index = isBuiltinFlag.set(this.field_1_xf_index);
        this.field_2_builtin_style = i;
    }

    public void setName(String str) {
        this.field_4_name = str;
        this.field_3_stringHasMultibyte = StringUtil.hasMultibyte(str);
        this.field_1_xf_index = isBuiltinFlag.clear(this.field_1_xf_index);
    }

    public void setOutlineStyleLevel(int i) {
        this.field_3_outline_style_level = i & 255;
    }

    public void setXFIndex(int i) {
        this.field_1_xf_index = styleIndexMask.setValue(this.field_1_xf_index, i);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.STYLE;
    }

    public StyleRecord(StyleRecord styleRecord) {
        super(styleRecord);
        this.field_1_xf_index = styleRecord.field_1_xf_index;
        this.field_2_builtin_style = styleRecord.field_2_builtin_style;
        this.field_3_outline_style_level = styleRecord.field_3_outline_style_level;
        this.field_3_stringHasMultibyte = styleRecord.field_3_stringHasMultibyte;
        this.field_4_name = styleRecord.field_4_name;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public StyleRecord copy() {
        return new StyleRecord(this);
    }

    public StyleRecord(RecordInputStream recordInputStream) {
        this.field_1_xf_index = recordInputStream.readShort();
        if (isBuiltin()) {
            this.field_2_builtin_style = recordInputStream.readByte();
            this.field_3_outline_style_level = recordInputStream.readByte();
            return;
        }
        short readShort = recordInputStream.readShort();
        if (recordInputStream.remaining() < 1) {
            if (readShort == 0) {
                this.field_4_name = "";
                return;
            }
            throw new RecordFormatException("Ran out of data reading style record");
        }
        boolean z = recordInputStream.readByte() != 0;
        this.field_3_stringHasMultibyte = z;
        if (z) {
            this.field_4_name = StringUtil.readUnicodeLE(recordInputStream, readShort);
        } else {
            this.field_4_name = StringUtil.readCompressedUnicode(recordInputStream, readShort);
        }
    }
}
