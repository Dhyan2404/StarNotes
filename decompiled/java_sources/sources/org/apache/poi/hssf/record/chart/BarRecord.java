package org.apache.poi.hssf.record.chart;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.BarRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class BarRecord extends StandardRecord {
    public static final short sid = 4119;
    private short field_1_barSpace;
    private short field_2_categorySpace;
    private short field_3_formatFlags;
    private static final BitField horizontal = BitFieldFactory.getInstance(1);
    private static final BitField stacked = BitFieldFactory.getInstance(2);
    private static final BitField displayAsPercentage = BitFieldFactory.getInstance(4);
    private static final BitField shadow = BitFieldFactory.getInstance(8);

    public BarRecord() {
    }

    public short getBarSpace() {
        return this.field_1_barSpace;
    }

    public short getCategorySpace() {
        return this.field_2_categorySpace;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 6;
    }

    public short getFormatFlags() {
        return this.field_3_formatFlags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("barSpace", new Supplier() { // from class: com.sunia.HTREnginev2.nm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(BarRecord.this.getBarSpace());
            }
        });
        linkedHashMap.put("categorySpace", new Supplier() { // from class: com.sunia.HTREnginev2.om
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(BarRecord.this.getCategorySpace());
            }
        });
        linkedHashMap.put("formatFlags", new Supplier() { // from class: com.sunia.HTREnginev2.pm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(BarRecord.this.getFormatFlags());
            }
        });
        linkedHashMap.put("horizontal", new Supplier() { // from class: com.sunia.HTREnginev2.qm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BarRecord.this.isHorizontal());
            }
        });
        linkedHashMap.put("stacked", new Supplier() { // from class: com.sunia.HTREnginev2.rm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BarRecord.this.isStacked());
            }
        });
        linkedHashMap.put("displayAsPercentage", new Supplier() { // from class: com.sunia.HTREnginev2.sm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BarRecord.this.isDisplayAsPercentage());
            }
        });
        linkedHashMap.put("shadow", new Supplier() { // from class: com.sunia.HTREnginev2.tm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(BarRecord.this.isShadow());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public boolean isDisplayAsPercentage() {
        return displayAsPercentage.isSet(this.field_3_formatFlags);
    }

    public boolean isHorizontal() {
        return horizontal.isSet(this.field_3_formatFlags);
    }

    public boolean isShadow() {
        return shadow.isSet(this.field_3_formatFlags);
    }

    public boolean isStacked() {
        return stacked.isSet(this.field_3_formatFlags);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_barSpace);
        littleEndianOutput.writeShort(this.field_2_categorySpace);
        littleEndianOutput.writeShort(this.field_3_formatFlags);
    }

    public void setBarSpace(short s) {
        this.field_1_barSpace = s;
    }

    public void setCategorySpace(short s) {
        this.field_2_categorySpace = s;
    }

    public void setDisplayAsPercentage(boolean z) {
        this.field_3_formatFlags = displayAsPercentage.setShortBoolean(this.field_3_formatFlags, z);
    }

    public void setFormatFlags(short s) {
        this.field_3_formatFlags = s;
    }

    public void setHorizontal(boolean z) {
        this.field_3_formatFlags = horizontal.setShortBoolean(this.field_3_formatFlags, z);
    }

    public void setShadow(boolean z) {
        this.field_3_formatFlags = shadow.setShortBoolean(this.field_3_formatFlags, z);
    }

    public void setStacked(boolean z) {
        this.field_3_formatFlags = stacked.setShortBoolean(this.field_3_formatFlags, z);
    }

    public BarRecord(BarRecord barRecord) {
        super(barRecord);
        this.field_1_barSpace = barRecord.field_1_barSpace;
        this.field_2_categorySpace = barRecord.field_2_categorySpace;
        this.field_3_formatFlags = barRecord.field_3_formatFlags;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.BAR;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public BarRecord copy() {
        return new BarRecord(this);
    }

    public BarRecord(RecordInputStream recordInputStream) {
        this.field_1_barSpace = recordInputStream.readShort();
        this.field_2_categorySpace = recordInputStream.readShort();
        this.field_3_formatFlags = recordInputStream.readShort();
    }
}
