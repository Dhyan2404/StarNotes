package org.apache.poi.hslf.record;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.ddf.EscherClientDataRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.EscherSerializationListener;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class HSLFEscherClientDataRecord extends EscherClientDataRecord {
    private final List<Record> _childRecords;

    public HSLFEscherClientDataRecord() {
        this._childRecords = new ArrayList();
    }

    public void addChild(Record record) {
        this._childRecords.add(record);
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord, org.apache.poi.ddf.EscherRecord
    public int fillFields(byte[] bArr, int i, EscherRecordFactory escherRecordFactory) {
        int readHeader = readHeader(bArr, i);
        setRemainingData(IOUtils.safelyClone(bArr, i + 8, readHeader, RecordAtom.getMaxRecordLength()));
        return readHeader + 8;
    }

    public List<? extends Record> getHSLFChildRecords() {
        return this._childRecords;
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord, org.apache.poi.ddf.EscherRecord
    public String getRecordName() {
        return "HSLFClientData";
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord, org.apache.poi.ddf.EscherRecord
    public int getRecordSize() {
        return getRemainingData().length + 8;
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord
    public byte[] getRemainingData() {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                Iterator<Record> it2 = this._childRecords.iterator();
                while (it2.hasNext()) {
                    it2.next().writeOut(unsynchronizedByteArrayOutputStream);
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    public void removeChild(final Class<? extends Record> cls) {
        List<Record> list = this._childRecords;
        cls.getClass();
        list.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.x6h
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return cls.isInstance((Record) obj);
            }
        });
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord, org.apache.poi.ddf.EscherRecord
    public int serialize(int i, byte[] bArr, EscherSerializationListener escherSerializationListener) {
        escherSerializationListener.beforeRecordSerialize(i, getRecordId(), this);
        LittleEndian.putShort(bArr, i, getOptions());
        LittleEndian.putShort(bArr, i + 2, getRecordId());
        byte[] remainingData = getRemainingData();
        LittleEndian.putInt(bArr, i + 4, remainingData.length);
        System.arraycopy(remainingData, 0, bArr, i + 8, remainingData.length);
        int length = remainingData.length + 8;
        escherSerializationListener.afterRecordSerialize(i + length, getRecordId(), length, this);
        return length;
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord
    public void setRemainingData(byte[] bArr) {
        this._childRecords.clear();
        int i = 0;
        while (i < bArr.length) {
            Record buildRecordAtOffset = Record.buildRecordAtOffset(bArr, i);
            if (buildRecordAtOffset != null) {
                this._childRecords.add(buildRecordAtOffset);
            }
            i = Math.toIntExact(i + 8 + LittleEndian.getUInt(bArr, i + 4));
        }
    }

    public HSLFEscherClientDataRecord(HSLFEscherClientDataRecord hSLFEscherClientDataRecord) {
        super(hSLFEscherClientDataRecord);
        ArrayList arrayList = new ArrayList();
        this._childRecords = arrayList;
        arrayList.addAll(hSLFEscherClientDataRecord._childRecords);
    }

    @Override // org.apache.poi.ddf.EscherClientDataRecord, org.apache.poi.ddf.EscherRecord, org.apache.poi.common.Duplicatable
    public HSLFEscherClientDataRecord copy() {
        return new HSLFEscherClientDataRecord(this);
    }
}
