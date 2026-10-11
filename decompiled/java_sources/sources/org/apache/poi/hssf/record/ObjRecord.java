package org.apache.poi.hssf.record;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ObjRecord;
import org.apache.poi.hssf.record.SubRecord;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class ObjRecord extends Record {
    private static int MAX_PAD_ALIGNMENT = 4;
    private static final int NORMAL_PAD_ALIGNMENT = 2;
    public static final short sid = 93;
    private boolean _isPaddedToQuadByteMultiple;
    private final byte[] _uninterpretedData;
    private final List<SubRecord> subrecords;

    public ObjRecord() {
        this.subrecords = new ArrayList();
        this._uninterpretedData = null;
    }

    private static boolean canPaddingBeDiscarded(byte[] bArr, int i) {
        for (int length = bArr.length - i; length < bArr.length; length++) {
            if (bArr[length] != 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._uninterpretedData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Boolean.valueOf(this._isPaddedToQuadByteMultiple);
    }

    public void addSubRecord(int i, SubRecord subRecord) {
        this.subrecords.add(i, subRecord);
    }

    public void clearSubRecords() {
        this.subrecords.clear();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<SubRecord> getGenericChildren() {
        return getSubRecords();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("uninterpretedData", new Supplier() { // from class: com.sunia.HTREnginev2.v6k
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ObjRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "paddedToQuadByteMultiple", new Supplier() { // from class: com.sunia.HTREnginev2.w6k
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = ObjRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public int getRecordSize() {
        byte[] bArr = this._uninterpretedData;
        if (bArr != null) {
            return bArr.length + 4;
        }
        Iterator<SubRecord> it2 = this.subrecords.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getDataSize() + 4;
        }
        if (this._isPaddedToQuadByteMultiple) {
            while (i % MAX_PAD_ALIGNMENT != 0) {
                i++;
            }
        } else {
            while (i % 2 != 0) {
                i++;
            }
        }
        return i + 4;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 93;
    }

    public List<SubRecord> getSubRecords() {
        return this.subrecords;
    }

    @Override // org.apache.poi.hssf.record.RecordBase
    public int serialize(int i, byte[] bArr) {
        int recordSize = getRecordSize();
        int i2 = recordSize - 4;
        try {
            LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, i, recordSize);
            try {
                littleEndianByteArrayOutputStream.writeShort(93);
                littleEndianByteArrayOutputStream.writeShort(i2);
                byte[] bArr2 = this._uninterpretedData;
                if (bArr2 == null) {
                    Iterator<SubRecord> it2 = this.subrecords.iterator();
                    while (it2.hasNext()) {
                        it2.next().serialize(littleEndianByteArrayOutputStream);
                    }
                    int i3 = i + i2;
                    while (littleEndianByteArrayOutputStream.getWriteIndex() < i3) {
                        littleEndianByteArrayOutputStream.writeByte(0);
                    }
                } else {
                    littleEndianByteArrayOutputStream.write(bArr2);
                }
                littleEndianByteArrayOutputStream.close();
                return recordSize;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public boolean addSubRecord(SubRecord subRecord) {
        return this.subrecords.add(subRecord);
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.OBJ;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ObjRecord copy() {
        return new ObjRecord(this);
    }

    public ObjRecord(ObjRecord objRecord) {
        final ArrayList arrayList = new ArrayList();
        this.subrecords = arrayList;
        objRecord.subrecords.stream().map(new Function() { // from class: com.sunia.HTREnginev2.x6k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SubRecord) obj).copy();
            }
        }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.y6k
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((SubRecord) obj);
            }
        });
        byte[] bArr = objRecord._uninterpretedData;
        this._uninterpretedData = bArr == null ? null : (byte[]) bArr.clone();
        this._isPaddedToQuadByteMultiple = objRecord._isPaddedToQuadByteMultiple;
    }

    public ObjRecord(RecordInputStream recordInputStream) {
        SubRecord createSubRecord;
        ArrayList arrayList = new ArrayList();
        this.subrecords = arrayList;
        byte[] readRemainder = recordInputStream.readRemainder();
        if (LittleEndian.getUShort(readRemainder, 0) != 21) {
            this._uninterpretedData = readRemainder;
            return;
        }
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(readRemainder);
        CommonObjectDataSubRecord commonObjectDataSubRecord = (CommonObjectDataSubRecord) SubRecord.createSubRecord(littleEndianByteArrayInputStream, 0);
        arrayList.add(commonObjectDataSubRecord);
        do {
            createSubRecord = SubRecord.createSubRecord(littleEndianByteArrayInputStream, commonObjectDataSubRecord.getObjectType());
            this.subrecords.add(createSubRecord);
        } while (!createSubRecord.isTerminating());
        int length = readRemainder.length - littleEndianByteArrayInputStream.getReadIndex();
        if (length > 0) {
            int length2 = readRemainder.length;
            int i = MAX_PAD_ALIGNMENT;
            boolean z = length2 % i == 0;
            this._isPaddedToQuadByteMultiple = z;
            if (length >= (z ? i : 2)) {
                if (canPaddingBeDiscarded(readRemainder, length)) {
                    this._isPaddedToQuadByteMultiple = false;
                } else {
                    throw new RecordFormatException("Leftover " + length + " bytes in subrecord data " + HexDump.toHex(readRemainder));
                }
            }
        } else {
            this._isPaddedToQuadByteMultiple = false;
        }
        this._uninterpretedData = null;
    }
}
