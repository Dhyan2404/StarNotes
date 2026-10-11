package org.apache.poi.hssf.record.chart;

import com.sunia.HTREnginev2.gon;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.AreaFormatRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class AreaFormatRecord extends StandardRecord {
    private static final BitField automatic = BitFieldFactory.getInstance(1);
    private static final BitField invert = BitFieldFactory.getInstance(2);
    public static final short sid = 4106;
    private int field_1_foregroundColor;
    private int field_2_backgroundColor;
    private short field_3_pattern;
    private short field_4_formatFlags;
    private short field_5_forecolorIndex;
    private short field_6_backcolorIndex;

    public AreaFormatRecord() {
    }

    public short getBackcolorIndex() {
        return this.field_6_backcolorIndex;
    }

    public int getBackgroundColor() {
        return this.field_2_backgroundColor;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 16;
    }

    public short getForecolorIndex() {
        return this.field_5_forecolorIndex;
    }

    public int getForegroundColor() {
        return this.field_1_foregroundColor;
    }

    public short getFormatFlags() {
        return this.field_4_formatFlags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("foregroundColor", new Supplier() { // from class: com.sunia.HTREnginev2.ee
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaFormatRecord.this.getForegroundColor());
            }
        });
        linkedHashMap.put(gon.f71255H, new Supplier() { // from class: com.sunia.HTREnginev2.fe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(AreaFormatRecord.this.getBackgroundColor());
            }
        });
        linkedHashMap.put("pattern", new Supplier() { // from class: com.sunia.HTREnginev2.ge
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AreaFormatRecord.this.getPattern());
            }
        });
        linkedHashMap.put("inverted", new Supplier() { // from class: com.sunia.HTREnginev2.he
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaFormatRecord.this.isInvert());
            }
        });
        linkedHashMap.put("automatic", new Supplier() { // from class: com.sunia.HTREnginev2.ie
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(AreaFormatRecord.this.isAutomatic());
            }
        });
        linkedHashMap.put("formatFlags", new Supplier() { // from class: com.sunia.HTREnginev2.je
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AreaFormatRecord.this.getFormatFlags());
            }
        });
        linkedHashMap.put("forecolorIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AreaFormatRecord.this.getForecolorIndex());
            }
        });
        linkedHashMap.put("backcolorIndex", new Supplier() { // from class: com.sunia.HTREnginev2.le
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(AreaFormatRecord.this.getBackcolorIndex());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public short getPattern() {
        return this.field_3_pattern;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isAutomatic() {
        return automatic.isSet(this.field_4_formatFlags);
    }

    public boolean isInvert() {
        return invert.isSet(this.field_4_formatFlags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeInt(this.field_1_foregroundColor);
        littleEndianOutput.writeInt(this.field_2_backgroundColor);
        littleEndianOutput.writeShort(this.field_3_pattern);
        littleEndianOutput.writeShort(this.field_4_formatFlags);
        littleEndianOutput.writeShort(this.field_5_forecolorIndex);
        littleEndianOutput.writeShort(this.field_6_backcolorIndex);
    }

    public void setAutomatic(boolean z) {
        this.field_4_formatFlags = automatic.setShortBoolean(this.field_4_formatFlags, z);
    }

    public void setBackcolorIndex(short s) {
        this.field_6_backcolorIndex = s;
    }

    public void setBackgroundColor(int i) {
        this.field_2_backgroundColor = i;
    }

    public void setForecolorIndex(short s) {
        this.field_5_forecolorIndex = s;
    }

    public void setForegroundColor(int i) {
        this.field_1_foregroundColor = i;
    }

    public void setFormatFlags(short s) {
        this.field_4_formatFlags = s;
    }

    public void setInvert(boolean z) {
        this.field_4_formatFlags = invert.setShortBoolean(this.field_4_formatFlags, z);
    }

    public void setPattern(short s) {
        this.field_3_pattern = s;
    }

    public AreaFormatRecord(RecordInputStream recordInputStream) {
        this.field_1_foregroundColor = recordInputStream.readInt();
        this.field_2_backgroundColor = recordInputStream.readInt();
        this.field_3_pattern = recordInputStream.readShort();
        this.field_4_formatFlags = recordInputStream.readShort();
        this.field_5_forecolorIndex = recordInputStream.readShort();
        this.field_6_backcolorIndex = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.AREA_FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public AreaFormatRecord copy() {
        return new AreaFormatRecord(this);
    }

    public AreaFormatRecord(AreaFormatRecord areaFormatRecord) {
        super(areaFormatRecord);
        this.field_1_foregroundColor = areaFormatRecord.field_1_foregroundColor;
        this.field_2_backgroundColor = areaFormatRecord.field_2_backgroundColor;
        this.field_3_pattern = areaFormatRecord.field_3_pattern;
        this.field_4_formatFlags = areaFormatRecord.field_4_formatFlags;
        this.field_5_forecolorIndex = areaFormatRecord.field_5_forecolorIndex;
        this.field_6_backcolorIndex = areaFormatRecord.field_6_backcolorIndex;
    }
}
