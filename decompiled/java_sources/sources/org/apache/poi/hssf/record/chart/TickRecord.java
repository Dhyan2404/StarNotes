package org.apache.poi.hssf.record.chart;

import androidx.core.app.NotificationCompat;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.TickRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class TickRecord extends StandardRecord {
    public static final short sid = 4126;
    private short field_10_options;
    private short field_11_tickColor;
    private short field_12_zero5;
    private byte field_1_majorTickType;
    private byte field_2_minorTickType;
    private byte field_3_labelPosition;
    private byte field_4_background;
    private int field_5_labelColorRgb;
    private int field_6_zero1;
    private int field_7_zero2;
    private int field_8_zero3;
    private int field_9_zero4;
    private static final BitField autoTextColor = BitFieldFactory.getInstance(1);
    private static final BitField autoTextBackground = BitFieldFactory.getInstance(2);
    private static final BitField rotation = BitFieldFactory.getInstance(28);
    private static final BitField autorotate = BitFieldFactory.getInstance(32);

    public TickRecord() {
    }

    public byte getBackground() {
        return this.field_4_background;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 30;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("majorTickType", new Supplier() { // from class: com.sunia.HTREnginev2.rhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(TickRecord.this.getMajorTickType());
            }
        });
        linkedHashMap.put("minorTickType", new Supplier() { // from class: com.sunia.HTREnginev2.uhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(TickRecord.this.getMinorTickType());
            }
        });
        linkedHashMap.put("labelPosition", new Supplier() { // from class: com.sunia.HTREnginev2.vhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(TickRecord.this.getLabelPosition());
            }
        });
        linkedHashMap.put(NotificationCompat.WearableExtender.f5054t, new Supplier() { // from class: com.sunia.HTREnginev2.whn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(TickRecord.this.getBackground());
            }
        });
        linkedHashMap.put("labelColorRgb", new Supplier() { // from class: com.sunia.HTREnginev2.xhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TickRecord.this.getLabelColorRgb());
            }
        });
        linkedHashMap.put("zero1", new Supplier() { // from class: com.sunia.HTREnginev2.yhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TickRecord.this.getZero1());
            }
        });
        linkedHashMap.put("zero2", new Supplier() { // from class: com.sunia.HTREnginev2.zhn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TickRecord.this.getZero2());
            }
        });
        linkedHashMap.put("options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.ain
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TickRecord.this.getOptions());
            }
        }, new BitField[]{autoTextColor, autoTextBackground, autorotate}, new String[]{"AUTO_TEXT_COLOR", "AUTO_TEXT_BACKGROUND", "AUTO_ROTATE"}));
        linkedHashMap.put("rotation", new Supplier() { // from class: com.sunia.HTREnginev2.bin
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TickRecord.this.getRotation());
            }
        });
        linkedHashMap.put("tickColor", new Supplier() { // from class: com.sunia.HTREnginev2.shn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TickRecord.this.getTickColor());
            }
        });
        linkedHashMap.put("zero3", new Supplier() { // from class: com.sunia.HTREnginev2.thn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(TickRecord.this.getZero3());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getLabelColorRgb() {
        return this.field_5_labelColorRgb;
    }

    public byte getLabelPosition() {
        return this.field_3_labelPosition;
    }

    public byte getMajorTickType() {
        return this.field_1_majorTickType;
    }

    public byte getMinorTickType() {
        return this.field_2_minorTickType;
    }

    public short getOptions() {
        return this.field_10_options;
    }

    public short getRotation() {
        return rotation.getShortValue(this.field_10_options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getTickColor() {
        return this.field_11_tickColor;
    }

    public int getZero1() {
        return this.field_6_zero1;
    }

    public int getZero2() {
        return this.field_7_zero2;
    }

    public short getZero3() {
        return this.field_12_zero5;
    }

    public boolean isAutoTextBackground() {
        return autoTextBackground.isSet(this.field_10_options);
    }

    public boolean isAutoTextColor() {
        return autoTextColor.isSet(this.field_10_options);
    }

    public boolean isAutorotate() {
        return autorotate.isSet(this.field_10_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(this.field_1_majorTickType);
        littleEndianOutput.writeByte(this.field_2_minorTickType);
        littleEndianOutput.writeByte(this.field_3_labelPosition);
        littleEndianOutput.writeByte(this.field_4_background);
        littleEndianOutput.writeInt(this.field_5_labelColorRgb);
        littleEndianOutput.writeInt(this.field_6_zero1);
        littleEndianOutput.writeInt(this.field_7_zero2);
        littleEndianOutput.writeInt(this.field_8_zero3);
        littleEndianOutput.writeInt(this.field_9_zero4);
        littleEndianOutput.writeShort(this.field_10_options);
        littleEndianOutput.writeShort(this.field_11_tickColor);
        littleEndianOutput.writeShort(this.field_12_zero5);
    }

    public void setAutoTextBackground(boolean z) {
        this.field_10_options = autoTextBackground.setShortBoolean(this.field_10_options, z);
    }

    public void setAutoTextColor(boolean z) {
        this.field_10_options = autoTextColor.setShortBoolean(this.field_10_options, z);
    }

    public void setAutorotate(boolean z) {
        this.field_10_options = autorotate.setShortBoolean(this.field_10_options, z);
    }

    public void setBackground(byte b) {
        this.field_4_background = b;
    }

    public void setLabelColorRgb(int i) {
        this.field_5_labelColorRgb = i;
    }

    public void setLabelPosition(byte b) {
        this.field_3_labelPosition = b;
    }

    public void setMajorTickType(byte b) {
        this.field_1_majorTickType = b;
    }

    public void setMinorTickType(byte b) {
        this.field_2_minorTickType = b;
    }

    public void setOptions(short s) {
        this.field_10_options = s;
    }

    public void setRotation(short s) {
        this.field_10_options = rotation.setShortValue(this.field_10_options, s);
    }

    public void setTickColor(short s) {
        this.field_11_tickColor = s;
    }

    public void setZero1(int i) {
        this.field_6_zero1 = i;
    }

    public void setZero2(int i) {
        this.field_7_zero2 = i;
    }

    public void setZero3(short s) {
        this.field_12_zero5 = s;
    }

    public TickRecord(TickRecord tickRecord) {
        super(tickRecord);
        this.field_1_majorTickType = tickRecord.field_1_majorTickType;
        this.field_2_minorTickType = tickRecord.field_2_minorTickType;
        this.field_3_labelPosition = tickRecord.field_3_labelPosition;
        this.field_4_background = tickRecord.field_4_background;
        this.field_5_labelColorRgb = tickRecord.field_5_labelColorRgb;
        this.field_6_zero1 = tickRecord.field_6_zero1;
        this.field_7_zero2 = tickRecord.field_7_zero2;
        this.field_8_zero3 = tickRecord.field_8_zero3;
        this.field_9_zero4 = tickRecord.field_9_zero4;
        this.field_10_options = tickRecord.field_10_options;
        this.field_11_tickColor = tickRecord.field_11_tickColor;
        this.field_12_zero5 = tickRecord.field_12_zero5;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.TICK;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public TickRecord copy() {
        return new TickRecord(this);
    }

    public TickRecord(RecordInputStream recordInputStream) {
        this.field_1_majorTickType = recordInputStream.readByte();
        this.field_2_minorTickType = recordInputStream.readByte();
        this.field_3_labelPosition = recordInputStream.readByte();
        this.field_4_background = recordInputStream.readByte();
        this.field_5_labelColorRgb = recordInputStream.readInt();
        this.field_6_zero1 = recordInputStream.readInt();
        this.field_7_zero2 = recordInputStream.readInt();
        this.field_8_zero3 = recordInputStream.readInt();
        this.field_9_zero4 = recordInputStream.readInt();
        this.field_10_options = recordInputStream.readShort();
        this.field_11_tickColor = recordInputStream.readShort();
        this.field_12_zero5 = recordInputStream.readShort();
    }
}
