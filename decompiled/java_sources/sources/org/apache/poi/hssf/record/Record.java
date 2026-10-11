package org.apache.poi.hssf.record;

import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.util.GenericRecordJsonWriter;

/* loaded from: classes12.dex */
public abstract class Record extends RecordBase implements Duplicatable, GenericRecord {
    public Record() {
    }

    public Record cloneViaReserialise() {
        RecordInputStream recordInputStream = new RecordInputStream(new UnsynchronizedByteArrayInputStream(serialize()));
        recordInputStream.nextRecord();
        Record[] createRecord = RecordFactory.createRecord(recordInputStream);
        if (createRecord.length == 1) {
            return createRecord[0];
        }
        throw new IllegalStateException("Re-serialised a record to clone it, but got " + createRecord.length + " records back!");
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract Record copy();

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public abstract HSSFRecordTypes getGenericRecordType();

    public abstract short getSid();

    public final byte[] serialize() {
        byte[] bArr = new byte[getRecordSize()];
        serialize(0, bArr);
        return bArr;
    }

    public final String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    public Record(Record record) {
    }
}
