package org.apache.poi.hssf.record.chart;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.CatLabRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class CatLabRecord extends StandardRecord {
    public static final short sid = 2134;

    /* renamed from: at */
    private short f111404at;
    private short grbit;
    private short grbitFrt;

    /* renamed from: rt */
    private short f111405rt;
    private Short unused;
    private short wOffset;

    public CatLabRecord(CatLabRecord catLabRecord) {
        super(catLabRecord);
        this.f111405rt = catLabRecord.f111405rt;
        this.grbitFrt = catLabRecord.grbitFrt;
        this.wOffset = catLabRecord.wOffset;
        this.f111404at = catLabRecord.f111404at;
        this.grbit = catLabRecord.grbit;
        this.unused = catLabRecord.unused;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.f111405rt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Short.valueOf(this.grbitFrt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Short.valueOf(this.wOffset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Short.valueOf(this.f111404at);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Short.valueOf(this.grbit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this.unused;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.unused == null ? 0 : 2) + 10;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(WebvttCueParser.f27242v, new Supplier() { // from class: com.sunia.HTREnginev2.ynd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = CatLabRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "grbitFrt", new Supplier() { // from class: com.sunia.HTREnginev2.znd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = CatLabRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "wOffset", new Supplier() { // from class: com.sunia.HTREnginev2.aod
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = CatLabRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "at", new Supplier() { // from class: com.sunia.HTREnginev2.bod
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = CatLabRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "grbit", new Supplier() { // from class: com.sunia.HTREnginev2.cod
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = CatLabRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "unused", new Supplier() { // from class: com.sunia.HTREnginev2.dod
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = CatLabRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 2134;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.f111405rt);
        littleEndianOutput.writeShort(this.grbitFrt);
        littleEndianOutput.writeShort(this.wOffset);
        littleEndianOutput.writeShort(this.f111404at);
        littleEndianOutput.writeShort(this.grbit);
        Short sh = this.unused;
        if (sh != null) {
            littleEndianOutput.writeShort(sh.shortValue());
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CAT_LAB;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public CatLabRecord copy() {
        return new CatLabRecord(this);
    }

    public CatLabRecord(RecordInputStream recordInputStream) {
        this.f111405rt = recordInputStream.readShort();
        this.grbitFrt = recordInputStream.readShort();
        this.wOffset = recordInputStream.readShort();
        this.f111404at = recordInputStream.readShort();
        this.grbit = recordInputStream.readShort();
        if (recordInputStream.available() == 0) {
            this.unused = null;
        } else {
            this.unused = Short.valueOf(recordInputStream.readShort());
        }
    }
}
