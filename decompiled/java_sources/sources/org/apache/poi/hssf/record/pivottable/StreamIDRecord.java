package org.apache.poi.hssf.record.pivottable;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.HSSFRecordTypes;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.StandardRecord;
import org.apache.poi.hssf.record.pivottable.StreamIDRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class StreamIDRecord extends StandardRecord {
    public static final short sid = 213;
    private int idstm;

    public StreamIDRecord(StreamIDRecord streamIDRecord) {
        super(streamIDRecord);
        this.idstm = streamIDRecord.idstm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.idstm);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("idstm", new Supplier() { // from class: com.sunia.HTREnginev2.c0n
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = StreamIDRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 213;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this.idstm);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.STREAM_ID;
    }

    public StreamIDRecord(RecordInputStream recordInputStream) {
        this.idstm = recordInputStream.readShort();
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public StreamIDRecord copy() {
        return new StreamIDRecord(this);
    }
}
