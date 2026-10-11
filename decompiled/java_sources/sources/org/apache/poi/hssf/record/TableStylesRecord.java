package org.apache.poi.hssf.record;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.TableStylesRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class TableStylesRecord extends StandardRecord {
    public static final short sid = 2190;
    private int cts;
    private int grbitFrt;
    private String rgchDefListStyle;
    private String rgchDefPivotStyle;

    /* renamed from: rt */
    private int f111400rt;
    private final byte[] unused;

    public TableStylesRecord(TableStylesRecord tableStylesRecord) {
        super(tableStylesRecord);
        byte[] bArr = new byte[8];
        this.unused = bArr;
        this.f111400rt = tableStylesRecord.f111400rt;
        this.grbitFrt = tableStylesRecord.grbitFrt;
        System.arraycopy(tableStylesRecord.unused, 0, bArr, 0, bArr.length);
        this.cts = tableStylesRecord.cts;
        this.rgchDefListStyle = tableStylesRecord.rgchDefListStyle;
        this.rgchDefPivotStyle = tableStylesRecord.rgchDefPivotStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.f111400rt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.grbitFrt);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return this.unused;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.cts);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$4() {
        return this.rgchDefListStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$5() {
        return this.rgchDefPivotStyle;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this.rgchDefListStyle.length() * 2) + 20 + (this.rgchDefPivotStyle.length() * 2);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(WebvttCueParser.f27242v, new Supplier() { // from class: com.sunia.HTREnginev2.q8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TableStylesRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "grbitFrt", new Supplier() { // from class: com.sunia.HTREnginev2.r8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = TableStylesRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, "unused", new Supplier() { // from class: com.sunia.HTREnginev2.s8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = TableStylesRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        }, "cts", new Supplier() { // from class: com.sunia.HTREnginev2.t8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = TableStylesRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        }, "rgchDefListStyle", new Supplier() { // from class: com.sunia.HTREnginev2.u8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$4;
                lambda$getGenericProperties$4 = TableStylesRecord.this.lambda$getGenericProperties$4();
                return lambda$getGenericProperties$4;
            }
        }, "rgchDefPivotStyle", new Supplier() { // from class: com.sunia.HTREnginev2.v8n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$5;
                lambda$getGenericProperties$5 = TableStylesRecord.this.lambda$getGenericProperties$5();
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
        littleEndianOutput.writeShort(this.f111400rt);
        littleEndianOutput.writeShort(this.grbitFrt);
        littleEndianOutput.write(this.unused);
        littleEndianOutput.writeInt(this.cts);
        littleEndianOutput.writeShort(this.rgchDefListStyle.length());
        littleEndianOutput.writeShort(this.rgchDefPivotStyle.length());
        StringUtil.putUnicodeLE(this.rgchDefListStyle, littleEndianOutput);
        StringUtil.putUnicodeLE(this.rgchDefPivotStyle, littleEndianOutput);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.TABLE_STYLES;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public TableStylesRecord copy() {
        return new TableStylesRecord(this);
    }

    public TableStylesRecord(RecordInputStream recordInputStream) {
        byte[] bArr = new byte[8];
        this.unused = bArr;
        this.f111400rt = recordInputStream.readUShort();
        this.grbitFrt = recordInputStream.readUShort();
        recordInputStream.readFully(bArr);
        this.cts = recordInputStream.readInt();
        int readUShort = recordInputStream.readUShort();
        int readUShort2 = recordInputStream.readUShort();
        this.rgchDefListStyle = recordInputStream.readUnicodeLEString(readUShort);
        this.rgchDefPivotStyle = recordInputStream.readUnicodeLEString(readUShort2);
    }
}
