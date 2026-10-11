package org.apache.poi.hssf.record.cont;

import java.io.IOException;
import org.apache.poi.hssf.record.Record;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;

/* loaded from: classes12.dex */
public abstract class ContinuableRecord extends Record {
    public ContinuableRecord() {
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public final int getRecordSize() {
        ContinuableRecordOutput createForCountingOnly = ContinuableRecordOutput.createForCountingOnly();
        serialize(createForCountingOnly);
        createForCountingOnly.terminate();
        return createForCountingOnly.getTotalSize();
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public final int serialize(int i, byte[] bArr) {
        try {
            LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, i);
            try {
                ContinuableRecordOutput continuableRecordOutput = new ContinuableRecordOutput(littleEndianByteArrayOutputStream, getSid());
                serialize(continuableRecordOutput);
                continuableRecordOutput.terminate();
                int totalSize = continuableRecordOutput.getTotalSize();
                littleEndianByteArrayOutputStream.close();
                return totalSize;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public abstract void serialize(ContinuableRecordOutput continuableRecordOutput);

    public ContinuableRecord(ContinuableRecord continuableRecord) {
        super(continuableRecord);
    }
}
