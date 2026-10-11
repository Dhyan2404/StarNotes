package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.RowRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class RowRecord extends StandardRecord {
    public static final int ENCODED_SIZE = 20;
    private static final int OPTION_BITS_ALWAYS_SET = 256;
    public static final short sid = 520;
    private int field_1_row_number;
    private int field_2_first_col;
    private int field_3_last_col;
    private short field_4_height;
    private short field_5_optimize;
    private short field_6_reserved;
    private int field_7_option_flags;
    private int field_8_option_flags;
    private static final BitField outlineLevel = BitFieldFactory.getInstance(7);
    private static final BitField collapsed = BitFieldFactory.getInstance(16);
    private static final BitField zeroHeight = BitFieldFactory.getInstance(32);
    private static final BitField badFontHeight = BitFieldFactory.getInstance(64);
    private static final BitField formatted = BitFieldFactory.getInstance(128);
    private static final BitField xfIndex = BitFieldFactory.getInstance(4095);
    private static final BitField topBorder = BitFieldFactory.getInstance(4096);
    private static final BitField bottomBorder = BitFieldFactory.getInstance(8192);
    private static final BitField phoneticGuide = BitFieldFactory.getInstance(16384);

    public RowRecord(RowRecord rowRecord) {
        super(rowRecord);
        this.field_1_row_number = rowRecord.field_1_row_number;
        this.field_2_first_col = rowRecord.field_2_first_col;
        this.field_3_last_col = rowRecord.field_3_last_col;
        this.field_4_height = rowRecord.field_4_height;
        this.field_5_optimize = rowRecord.field_5_optimize;
        this.field_6_reserved = rowRecord.field_6_reserved;
        this.field_7_option_flags = rowRecord.field_7_option_flags;
        this.field_8_option_flags = rowRecord.field_8_option_flags;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.field_6_reserved);
    }

    public boolean getBadFontHeight() {
        return badFontHeight.isSet(this.field_7_option_flags);
    }

    public boolean getBottomBorder() {
        return bottomBorder.isSet(this.field_8_option_flags);
    }

    public boolean getColapsed() {
        return collapsed.isSet(this.field_7_option_flags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 16;
    }

    public int getFirstCol() {
        return this.field_2_first_col;
    }

    public boolean getFormatted() {
        return formatted.isSet(this.field_7_option_flags);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("rowNumber", new Supplier() { // from class: com.sunia.HTREnginev2.osl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(RowRecord.this.getRowNumber());
            }
        });
        linkedHashMap.put("firstCol", new Supplier() { // from class: com.sunia.HTREnginev2.psl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(RowRecord.this.getFirstCol());
            }
        });
        linkedHashMap.put("lastCol", new Supplier() { // from class: com.sunia.HTREnginev2.qsl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(RowRecord.this.getLastCol());
            }
        });
        linkedHashMap.put("height", new Supplier() { // from class: com.sunia.HTREnginev2.rsl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getHeight());
            }
        });
        linkedHashMap.put("optimized", new Supplier() { // from class: com.sunia.HTREnginev2.ssl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getOptimize());
            }
        });
        linkedHashMap.put("reserved", new Supplier() { // from class: com.sunia.HTREnginev2.tsl
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = RowRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.usl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getOptionFlags());
            }
        }, new BitField[]{collapsed, zeroHeight, badFontHeight, formatted}, new String[]{"COLAPSED", "ZERO_HEIGHT", "BAD_FONT_HEIGHT", "FORMATTED"}));
        linkedHashMap.put("outlineLevel", new Supplier() { // from class: com.sunia.HTREnginev2.vsl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getOutlineLevel());
            }
        });
        linkedHashMap.put("optionFlags2", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.wsl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getOptionFlags2());
            }
        }, new BitField[]{topBorder, bottomBorder, phoneticGuide}, new String[]{"TOP_BORDER", "BOTTOM_BORDER", "PHOENETIC_GUIDE"}));
        linkedHashMap.put("xfIndex", new Supplier() { // from class: com.sunia.HTREnginev2.xsl
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(RowRecord.this.getXFIndex());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public short getHeight() {
        return this.field_4_height;
    }

    public int getLastCol() {
        return this.field_3_last_col;
    }

    public short getOptimize() {
        return this.field_5_optimize;
    }

    public short getOptionFlags() {
        return (short) this.field_7_option_flags;
    }

    public short getOptionFlags2() {
        return (short) this.field_8_option_flags;
    }

    public short getOutlineLevel() {
        return (short) outlineLevel.getValue(this.field_7_option_flags);
    }

    public boolean getPhoeneticGuide() {
        return phoneticGuide.isSet(this.field_8_option_flags);
    }

    public int getRowNumber() {
        return this.field_1_row_number;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean getTopBorder() {
        return topBorder.isSet(this.field_8_option_flags);
    }

    public short getXFIndex() {
        return xfIndex.getShortValue((short) this.field_8_option_flags);
    }

    public boolean getZeroHeight() {
        return zeroHeight.isSet(this.field_7_option_flags);
    }

    public boolean isEmpty() {
        return (this.field_3_last_col | this.field_2_first_col) == 0;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getRowNumber());
        littleEndianOutput.writeShort(getFirstCol() == -1 ? 0 : getFirstCol());
        littleEndianOutput.writeShort(getLastCol() != -1 ? getLastCol() : 0);
        littleEndianOutput.writeShort(getHeight());
        littleEndianOutput.writeShort(getOptimize());
        littleEndianOutput.writeShort(this.field_6_reserved);
        littleEndianOutput.writeShort(getOptionFlags());
        littleEndianOutput.writeShort(getOptionFlags2());
    }

    public void setBadFontHeight(boolean z) {
        this.field_7_option_flags = badFontHeight.setBoolean(this.field_7_option_flags, z);
    }

    public void setBottomBorder(boolean z) {
        this.field_8_option_flags = bottomBorder.setBoolean(this.field_8_option_flags, z);
    }

    public void setColapsed(boolean z) {
        this.field_7_option_flags = collapsed.setBoolean(this.field_7_option_flags, z);
    }

    public void setEmpty() {
        this.field_2_first_col = 0;
        this.field_3_last_col = 0;
    }

    public void setFirstCol(int i) {
        this.field_2_first_col = i;
    }

    public void setFormatted(boolean z) {
        this.field_7_option_flags = formatted.setBoolean(this.field_7_option_flags, z);
    }

    public void setHeight(short s) {
        this.field_4_height = s;
    }

    public void setLastCol(int i) {
        this.field_3_last_col = i;
    }

    public void setOptimize(short s) {
        this.field_5_optimize = s;
    }

    public void setOutlineLevel(short s) {
        this.field_7_option_flags = outlineLevel.setValue(this.field_7_option_flags, s);
    }

    public void setPhoeneticGuide(boolean z) {
        this.field_8_option_flags = phoneticGuide.setBoolean(this.field_8_option_flags, z);
    }

    public void setRowNumber(int i) {
        this.field_1_row_number = i;
    }

    public void setTopBorder(boolean z) {
        this.field_8_option_flags = topBorder.setBoolean(this.field_8_option_flags, z);
    }

    public void setXFIndex(short s) {
        this.field_8_option_flags = xfIndex.setValue(this.field_8_option_flags, s);
    }

    public void setZeroHeight(boolean z) {
        this.field_7_option_flags = zeroHeight.setBoolean(this.field_7_option_flags, z);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.ROW;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public RowRecord copy() {
        return new RowRecord(this);
    }

    public RowRecord(int i) {
        if (i >= 0) {
            this.field_1_row_number = i;
            this.field_4_height = (short) 255;
            this.field_5_optimize = (short) 0;
            this.field_6_reserved = (short) 0;
            this.field_7_option_flags = 256;
            this.field_8_option_flags = 15;
            setEmpty();
            return;
        }
        throw new IllegalArgumentException("Invalid row number (" + i + MotionUtils.f31762d);
    }

    public RowRecord(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        this.field_1_row_number = readUShort;
        if (readUShort >= 0) {
            this.field_2_first_col = recordInputStream.readShort();
            this.field_3_last_col = recordInputStream.readShort();
            this.field_4_height = recordInputStream.readShort();
            this.field_5_optimize = recordInputStream.readShort();
            this.field_6_reserved = recordInputStream.readShort();
            this.field_7_option_flags = recordInputStream.readShort();
            this.field_8_option_flags = recordInputStream.readShort();
            return;
        }
        throw new IllegalArgumentException("Invalid row number " + this.field_1_row_number + " found in InputStream");
    }
}
