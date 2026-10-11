package org.apache.poi.hssf.record.chart;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ChartStartObjectRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ChartStartObjectRecord extends StandardRecord {
    public static final short sid = 2132;
    private short grbitFrt;
    private short iObjectContext;
    private short iObjectInstance1;
    private short iObjectInstance2;
    private short iObjectKind;

    /* renamed from: rt */
    private short f111410rt;

    public ChartStartObjectRecord(ChartStartObjectRecord chartStartObjectRecord) {
        super(chartStartObjectRecord);
        this.f111410rt = chartStartObjectRecord.f111410rt;
        this.grbitFrt = chartStartObjectRecord.grbitFrt;
        this.iObjectKind = chartStartObjectRecord.iObjectKind;
        this.iObjectContext = chartStartObjectRecord.iObjectContext;
        this.iObjectInstance1 = chartStartObjectRecord.iObjectInstance1;
        this.iObjectInstance2 = chartStartObjectRecord.iObjectInstance2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Short.valueOf(this.f111410rt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Short.valueOf(this.grbitFrt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Short.valueOf(this.iObjectKind);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Short.valueOf(this.iObjectContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Short.valueOf(this.iObjectInstance1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return Short.valueOf(this.iObjectInstance2);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 12;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(WebvttCueParser.f27242v, new Supplier() { // from class: com.sunia.HTREnginev2.vsd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ChartStartObjectRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "grbitFrt", new Supplier() { // from class: com.sunia.HTREnginev2.wsd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ChartStartObjectRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "iObjectKind", new Supplier() { // from class: com.sunia.HTREnginev2.xsd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ChartStartObjectRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "iObjectContext", new Supplier() { // from class: com.sunia.HTREnginev2.ysd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ChartStartObjectRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "iObjectInstance1", new Supplier() { // from class: com.sunia.HTREnginev2.zsd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = ChartStartObjectRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "iObjectInstance2", new Supplier() { // from class: com.sunia.HTREnginev2.atd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = ChartStartObjectRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 2132;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.f111410rt);
        littleEndianOutput.writeShort(this.grbitFrt);
        littleEndianOutput.writeShort(this.iObjectKind);
        littleEndianOutput.writeShort(this.iObjectContext);
        littleEndianOutput.writeShort(this.iObjectInstance1);
        littleEndianOutput.writeShort(this.iObjectInstance2);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CHART_START_OBJECT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ChartStartObjectRecord copy() {
        return new ChartStartObjectRecord(this);
    }

    public ChartStartObjectRecord(RecordInputStream recordInputStream) {
        this.f111410rt = recordInputStream.readShort();
        this.grbitFrt = recordInputStream.readShort();
        this.iObjectKind = recordInputStream.readShort();
        this.iObjectContext = recordInputStream.readShort();
        this.iObjectInstance1 = recordInputStream.readShort();
        this.iObjectInstance2 = recordInputStream.readShort();
    }
}
