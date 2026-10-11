package org.apache.poi.hssf.record.chart;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import java.util.Map;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.chart.ChartFRTInfoRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ChartFRTInfoRecord extends StandardRecord {
    public static final short sid = 2128;
    private final short grbitFrt;
    private CFRTID[] rgCFRTID;

    /* renamed from: rt */
    private final short f111408rt;
    private final byte verOriginator;
    private final byte verWriter;

    public ChartFRTInfoRecord(ChartFRTInfoRecord chartFRTInfoRecord) {
        super(chartFRTInfoRecord);
        this.f111408rt = chartFRTInfoRecord.f111408rt;
        this.grbitFrt = chartFRTInfoRecord.grbitFrt;
        this.verOriginator = chartFRTInfoRecord.verOriginator;
        this.verWriter = chartFRTInfoRecord.verWriter;
        CFRTID[] cfrtidArr = chartFRTInfoRecord.rgCFRTID;
        if (cfrtidArr != null) {
            this.rgCFRTID = (CFRTID[]) Stream.of((Object[]) cfrtidArr).map(new Function() { // from class: org.apache.poi.hssf.record.chart.a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new ChartFRTInfoRecord.CFRTID((ChartFRTInfoRecord.CFRTID) obj);
                }
            }).toArray(new IntFunction() { // from class: com.sunia.HTREnginev2.dsd
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    ChartFRTInfoRecord.CFRTID[] lambda$new$0;
                    lambda$new$0 = ChartFRTInfoRecord.lambda$new$0(i);
                    return lambda$new$0;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Short.valueOf(this.f111408rt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Short.valueOf(this.grbitFrt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Byte.valueOf(this.verOriginator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return Byte.valueOf(this.verWriter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this.rgCFRTID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CFRTID[] lambda$new$0(int i) {
        return new CFRTID[i];
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.rgCFRTID.length * 4) + 8;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(WebvttCueParser.f27242v, new Supplier() { // from class: com.sunia.HTREnginev2.yrd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ChartFRTInfoRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "grbitFrt", new Supplier() { // from class: com.sunia.HTREnginev2.zrd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = ChartFRTInfoRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "verOriginator", new Supplier() { // from class: com.sunia.HTREnginev2.asd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = ChartFRTInfoRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "verWriter", new Supplier() { // from class: com.sunia.HTREnginev2.bsd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = ChartFRTInfoRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "rgCFRTIDs", new Supplier() { // from class: com.sunia.HTREnginev2.csd
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = ChartFRTInfoRecord.this.lambda$getGenericProperties$5();
                return lambda$getGenericProperties$5;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.f111408rt);
        littleEndianOutput.writeShort(this.grbitFrt);
        littleEndianOutput.writeByte(this.verOriginator);
        littleEndianOutput.writeByte(this.verWriter);
        littleEndianOutput.writeShort(this.rgCFRTID.length);
        for (CFRTID cfrtid : this.rgCFRTID) {
            cfrtid.serialize(littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.CHART_FRT_INFO;
    }

    /* loaded from: classes12.dex */
    public static final class CFRTID {
        public static final int ENCODED_SIZE = 4;
        private final int rtFirst;
        private final int rtLast;

        public CFRTID(CFRTID cfrtid) {
            this.rtFirst = cfrtid.rtFirst;
            this.rtLast = cfrtid.rtLast;
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this.rtFirst);
            littleEndianOutput.writeShort(this.rtLast);
        }

        public CFRTID(LittleEndianInput littleEndianInput) {
            this.rtFirst = littleEndianInput.readShort();
            this.rtLast = littleEndianInput.readShort();
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ChartFRTInfoRecord copy() {
        return new ChartFRTInfoRecord(this);
    }

    public ChartFRTInfoRecord(RecordInputStream recordInputStream) {
        this.f111408rt = recordInputStream.readShort();
        this.grbitFrt = recordInputStream.readShort();
        this.verOriginator = recordInputStream.readByte();
        this.verWriter = recordInputStream.readByte();
        int readShort = recordInputStream.readShort();
        if (readShort >= 0) {
            this.rgCFRTID = new CFRTID[readShort];
            for (int i = 0; i < readShort; i++) {
                this.rgCFRTID[i] = new CFRTID(recordInputStream);
            }
            return;
        }
        throw new IllegalArgumentException("Had negative CFRTID: " + readShort);
    }
}
