package org.apache.poi.hssf.record.chart;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ChartTitleFormatRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public class ChartTitleFormatRecord extends StandardRecord {
    public static final short sid = 4176;
    private final CTFormat[] _formats;

    public ChartTitleFormatRecord(ChartTitleFormatRecord chartTitleFormatRecord) {
        super(chartTitleFormatRecord);
        this._formats = (CTFormat[]) Stream.of((Object[]) chartTitleFormatRecord._formats).map(new Function() { // from class: org.apache.poi.hssf.record.chart.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new ChartTitleFormatRecord.CTFormat((ChartTitleFormatRecord.CTFormat) obj);
            }
        }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.ctd
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                ChartTitleFormatRecord.CTFormat[] lambda$new$0;
                lambda$new$0 = ChartTitleFormatRecord.lambda$new$0(i);
                return lambda$new$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return this._formats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CTFormat[] lambda$new$0(int i) {
        return new CTFormat[i];
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._formats.length * 4) + 2;
    }

    public int getFormatCount() {
        return this._formats.length;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("formats", new Supplier() { // from class: com.sunia.HTREnginev2.btd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ChartTitleFormatRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public void modifyFormatRun(short s, short s2) {
        int i = 0;
        int i2 = 0;
        while (true) {
            CTFormat[] cTFormatArr = this._formats;
            if (i >= cTFormatArr.length) {
                return;
            }
            CTFormat cTFormat = cTFormatArr[i];
            if (i2 != 0) {
                cTFormat.setOffset(cTFormat.getOffset() + i2);
            } else if (s == cTFormat.getOffset()) {
                CTFormat[] cTFormatArr2 = this._formats;
                if (i < cTFormatArr2.length - 1) {
                    i2 = s2 - (cTFormatArr2[i + 1].getOffset() - cTFormat.getOffset());
                }
            }
            i++;
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._formats.length);
        for (CTFormat cTFormat : this._formats) {
            cTFormat.serialize(littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CHART_TITLE_FORMAT;
    }

    /* loaded from: classes12.dex */
    public static final class CTFormat implements GenericRecord {
        public static final int ENCODED_SIZE = 4;
        private int _fontIndex;
        private int _offset;

        public CTFormat(CTFormat cTFormat) {
            this._offset = cTFormat._offset;
            this._fontIndex = cTFormat._fontIndex;
        }

        public int getFontIndex() {
            return this._fontIndex;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties(TypedValues.CycleType.S_WAVE_OFFSET, new Supplier() { // from class: org.apache.poi.hssf.record.chart.c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ChartTitleFormatRecord.CTFormat.this.getOffset());
                }
            }, "fontIndex", new Supplier() { // from class: org.apache.poi.hssf.record.chart.d
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ChartTitleFormatRecord.CTFormat.this.getFontIndex());
                }
            });
        }

        public int getOffset() {
            return this._offset;
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._offset);
            littleEndianOutput.writeShort(this._fontIndex);
        }

        public void setOffset(int i) {
            this._offset = i;
        }

        public CTFormat(RecordInputStream recordInputStream) {
            this._offset = recordInputStream.readShort();
            this._fontIndex = recordInputStream.readShort();
        }
    }

    public ChartTitleFormatRecord(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        this._formats = new CTFormat[readUShort];
        for (int i = 0; i < readUShort; i++) {
            this._formats[i] = new CTFormat(recordInputStream);
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ChartTitleFormatRecord copy() {
        return new ChartTitleFormatRecord(this);
    }
}
