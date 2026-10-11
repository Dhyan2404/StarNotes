package org.apache.poi.hssf.record.chart;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.SeriesTextRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class SeriesTextRecord extends StandardRecord {
    private static final int MAX_LEN = 255;
    public static final short sid = 4109;
    private int field_1_id;
    private String field_4_text;
    private boolean is16bit;

    public SeriesTextRecord() {
        this.field_4_text = "";
        this.is16bit = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Boolean.valueOf(this.is16bit);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.field_4_text.length() * (this.is16bit ? 2 : 1)) + 4;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("id", new Supplier() { // from class: com.sunia.HTREnginev2.qhm
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SeriesTextRecord.this.getId());
            }
        }, "bit16", new Supplier() { // from class: com.sunia.HTREnginev2.rhm
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = SeriesTextRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "text", new Supplier() { // from class: com.sunia.HTREnginev2.shm
            @Override // java.util.function.Supplier
            public final Object get() {
                return SeriesTextRecord.this.getText();
            }
        });
    }

    public int getId() {
        return this.field_1_id;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public String getText() {
        return this.field_4_text;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.field_1_id);
        littleEndianOutput.writeByte(this.field_4_text.length());
        if (this.is16bit) {
            littleEndianOutput.writeByte(1);
            StringUtil.putUnicodeLE(this.field_4_text, littleEndianOutput);
        } else {
            littleEndianOutput.writeByte(0);
            StringUtil.putCompressedUnicode(this.field_4_text, littleEndianOutput);
        }
    }

    public void setId(int i) {
        this.field_1_id = i;
    }

    public void setText(String str) {
        if (str.length() <= 255) {
            this.field_4_text = str;
            this.is16bit = StringUtil.hasMultibyte(str);
            return;
        }
        throw new IllegalArgumentException("Text is too long (" + str.length() + ">255" + MotionUtils.f31762d);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.SERIES_TEXT;
    }

    public SeriesTextRecord(SeriesTextRecord seriesTextRecord) {
        super(seriesTextRecord);
        this.field_1_id = seriesTextRecord.field_1_id;
        this.is16bit = seriesTextRecord.is16bit;
        this.field_4_text = seriesTextRecord.field_4_text;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public SeriesTextRecord copy() {
        return new SeriesTextRecord(this);
    }

    public SeriesTextRecord(RecordInputStream recordInputStream) {
        this.field_1_id = recordInputStream.readUShort();
        int readUByte = recordInputStream.readUByte();
        boolean z = (recordInputStream.readUByte() & 1) != 0;
        this.is16bit = z;
        if (z) {
            this.field_4_text = recordInputStream.readUnicodeLEString(readUByte);
        } else {
            this.field_4_text = recordInputStream.readCompressedUnicode(readUByte);
        }
    }
}
