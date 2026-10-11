package org.apache.poi.hssf.record;

import com.sunia.HTREnginev2.ptf;
import com.sunia.HTREnginev2.qtf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.ddf.DefaultEscherRecordFactory;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.ddf.EscherRecordFactory;
import org.apache.poi.ddf.NullEscherSerializationListener;
import org.apache.poi.hssf.util.LazilyConcatenatedByteArray;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public abstract class AbstractEscherHolderRecord extends Record {
    private static boolean DESERIALIZE;
    private final List<EscherRecord> escherRecords;
    private final LazilyConcatenatedByteArray rawDataContainer;

    static {
        try {
            DESERIALIZE = System.getProperty("poi.deserialize.escher") != null;
        } catch (SecurityException unused) {
            DESERIALIZE = false;
        }
    }

    public AbstractEscherHolderRecord() {
        this.escherRecords = new ArrayList();
        this.rawDataContainer = new LazilyConcatenatedByteArray();
    }

    private void convertToEscherRecords(int i, int i2, byte[] bArr) {
        this.escherRecords.clear();
        EscherRecordFactory defaultEscherRecordFactory = new DefaultEscherRecordFactory();
        int i3 = i;
        while (i3 < i + i2) {
            EscherRecord createRecord = defaultEscherRecordFactory.createRecord(bArr, i3);
            int fillFields = createRecord.fillFields(bArr, i3, defaultEscherRecordFactory);
            this.escherRecords.add(createRecord);
            i3 += fillFields;
        }
    }

    public void addEscherRecord(int i, EscherRecord escherRecord) {
        this.escherRecords.add(i, escherRecord);
    }

    public void clearEscherRecords() {
        this.escherRecords.clear();
    }

    @Removal(version = "5.3")
    @Deprecated
    public void convertRawBytesToEscherRecords() {
        if (DESERIALIZE) {
            return;
        }
        decode();
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public abstract AbstractEscherHolderRecord copy();

    public void decode() {
        if (this.escherRecords.isEmpty()) {
            byte[] rawData = getRawData();
            convertToEscherRecords(0, rawData.length, rawData);
        }
    }

    public EscherRecord findFirstWithId(short s) {
        return findFirstWithId(s, getEscherRecords());
    }

    public EscherContainerRecord getEscherContainer() {
        for (EscherRecord escherRecord : this.escherRecords) {
            if (escherRecord instanceof EscherContainerRecord) {
                return (EscherContainerRecord) escherRecord;
            }
        }
        return null;
    }

    public EscherRecord getEscherRecord(int i) {
        return this.escherRecords.get(i);
    }

    public List<EscherRecord> getEscherRecords() {
        return this.escherRecords;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<EscherRecord> getGenericChildren() {
        return this.escherRecords;
    }

    public byte[] getRawData() {
        return this.rawDataContainer.toArray();
    }

    public abstract String getRecordName();

    @Override // org.apache.poi.hssf.record.RecordBase
    public int getRecordSize() {
        byte[] rawData = getRawData();
        if (this.escherRecords.isEmpty() && rawData != null) {
            return rawData.length;
        }
        Iterator<EscherRecord> it2 = this.escherRecords.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getRecordSize();
        }
        return i;
    }

    @Override // org.apache.poi.hssf.record.Record
    public abstract short getSid();

    public void join(AbstractEscherHolderRecord abstractEscherHolderRecord) {
        this.rawDataContainer.concatenate(abstractEscherHolderRecord.getRawData());
    }

    public void processContinueRecord(byte[] bArr) {
        this.rawDataContainer.concatenate(bArr);
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public int serialize(int i, byte[] bArr) {
        byte[] rawData = getRawData();
        LittleEndian.putShort(bArr, i, getSid());
        int i2 = i + 2;
        LittleEndian.putShort(bArr, i2, (short) (getRecordSize() - 4));
        int i3 = i2 + 2;
        if (this.escherRecords.isEmpty() && rawData != null) {
            System.arraycopy(rawData, 0, bArr, i3, rawData.length);
            return rawData.length + 4;
        }
        NullEscherSerializationListener nullEscherSerializationListener = new NullEscherSerializationListener();
        Iterator<EscherRecord> it2 = this.escherRecords.iterator();
        while (it2.hasNext()) {
            i3 += it2.next().serialize(i3, bArr, nullEscherSerializationListener);
        }
        return getRecordSize();
    }

    public void setRawData(byte[] bArr) {
        this.rawDataContainer.clear();
        this.rawDataContainer.concatenate(bArr);
    }

    private EscherRecord findFirstWithId(short s, List<EscherRecord> list) {
        EscherRecord findFirstWithId;
        for (EscherRecord escherRecord : list) {
            if (escherRecord.getRecordId() == s) {
                return escherRecord;
            }
        }
        for (EscherRecord escherRecord2 : list) {
            if (escherRecord2.isContainerRecord() && (findFirstWithId = findFirstWithId(s, escherRecord2.getChildRecords())) != null) {
                return findFirstWithId;
            }
        }
        return null;
    }

    public boolean addEscherRecord(EscherRecord escherRecord) {
        return this.escherRecords.add(escherRecord);
    }

    public AbstractEscherHolderRecord(AbstractEscherHolderRecord abstractEscherHolderRecord) {
        ArrayList arrayList = new ArrayList();
        this.escherRecords = arrayList;
        LazilyConcatenatedByteArray lazilyConcatenatedByteArray = new LazilyConcatenatedByteArray();
        this.rawDataContainer = lazilyConcatenatedByteArray;
        abstractEscherHolderRecord.escherRecords.stream().map(new ptf()).forEach(new qtf(arrayList));
        lazilyConcatenatedByteArray.concatenate(abstractEscherHolderRecord.rawDataContainer);
    }

    public AbstractEscherHolderRecord(RecordInputStream recordInputStream) {
        this.escherRecords = new ArrayList();
        LazilyConcatenatedByteArray lazilyConcatenatedByteArray = new LazilyConcatenatedByteArray();
        this.rawDataContainer = lazilyConcatenatedByteArray;
        if (!DESERIALIZE) {
            lazilyConcatenatedByteArray.concatenate(recordInputStream.readRemainder());
        } else {
            byte[] readAllContinuedRemainder = recordInputStream.readAllContinuedRemainder();
            convertToEscherRecords(0, readAllContinuedRemainder.length, readAllContinuedRemainder);
        }
    }
}
