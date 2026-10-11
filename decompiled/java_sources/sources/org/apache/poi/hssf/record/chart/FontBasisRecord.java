package org.apache.poi.hssf.record.chart;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.FontBasisRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class FontBasisRecord extends StandardRecord {
    public static final short sid = 4192;
    private short field_1_xBasis;
    private short field_2_yBasis;
    private short field_3_heightBasis;
    private short field_4_scale;
    private short field_5_indexToFontTable;

    public FontBasisRecord() {
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 10;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("xBasis", new Supplier() { // from class: com.sunia.HTREnginev2.bpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontBasisRecord.this.getXBasis());
            }
        }, "yBasis", new Supplier() { // from class: com.sunia.HTREnginev2.cpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontBasisRecord.this.getYBasis());
            }
        }, "heightBasis", new Supplier() { // from class: com.sunia.HTREnginev2.dpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontBasisRecord.this.getHeightBasis());
            }
        }, "scale", new Supplier() { // from class: com.sunia.HTREnginev2.epg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontBasisRecord.this.getScale());
            }
        }, "indexToFontTable", new Supplier() { // from class: com.sunia.HTREnginev2.fpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontBasisRecord.this.getIndexToFontTable());
            }
        });
    }

    public short getHeightBasis() {
        return this.field_3_heightBasis;
    }

    public short getIndexToFontTable() {
        return this.field_5_indexToFontTable;
    }

    public short getScale() {
        return this.field_4_scale;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public short getXBasis() {
        return this.field_1_xBasis;
    }

    public short getYBasis() {
        return this.field_2_yBasis;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_xBasis);
        littleEndianOutput.writeShort(this.field_2_yBasis);
        littleEndianOutput.writeShort(this.field_3_heightBasis);
        littleEndianOutput.writeShort(this.field_4_scale);
        littleEndianOutput.writeShort(this.field_5_indexToFontTable);
    }

    public void setHeightBasis(short s) {
        this.field_3_heightBasis = s;
    }

    public void setIndexToFontTable(short s) {
        this.field_5_indexToFontTable = s;
    }

    public void setScale(short s) {
        this.field_4_scale = s;
    }

    public void setXBasis(short s) {
        this.field_1_xBasis = s;
    }

    public void setYBasis(short s) {
        this.field_2_yBasis = s;
    }

    public FontBasisRecord(FontBasisRecord fontBasisRecord) {
        super(fontBasisRecord);
        this.field_1_xBasis = fontBasisRecord.field_1_xBasis;
        this.field_2_yBasis = fontBasisRecord.field_2_yBasis;
        this.field_3_heightBasis = fontBasisRecord.field_3_heightBasis;
        this.field_4_scale = fontBasisRecord.field_4_scale;
        this.field_5_indexToFontTable = fontBasisRecord.field_5_indexToFontTable;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FONT_BASIS;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FontBasisRecord copy() {
        return new FontBasisRecord(this);
    }

    public FontBasisRecord(RecordInputStream recordInputStream) {
        this.field_1_xBasis = recordInputStream.readShort();
        this.field_2_yBasis = recordInputStream.readShort();
        this.field_3_heightBasis = recordInputStream.readShort();
        this.field_4_scale = recordInputStream.readShort();
        this.field_5_indexToFontTable = recordInputStream.readShort();
    }
}
