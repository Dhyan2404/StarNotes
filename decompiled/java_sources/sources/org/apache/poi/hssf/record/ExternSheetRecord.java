package org.apache.poi.hssf.record;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.ExternSheetRecord;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public class ExternSheetRecord extends StandardRecord {
    public static final short sid = 23;
    private final List<RefSubRecord> _list;

    public ExternSheetRecord() {
        this._list = new ArrayList();
    }

    public static ExternSheetRecord combine(ExternSheetRecord[] externSheetRecordArr) {
        ExternSheetRecord externSheetRecord = new ExternSheetRecord();
        for (ExternSheetRecord externSheetRecord2 : externSheetRecordArr) {
            int numOfREFRecords = externSheetRecord2.getNumOfREFRecords();
            for (int i = 0; i < numOfREFRecords; i++) {
                externSheetRecord.addREFRecord(externSheetRecord2.getRef(i));
            }
        }
        return externSheetRecord;
    }

    private RefSubRecord getRef(int i) {
        return this._list.get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return this._list;
    }

    public void addREFRecord(RefSubRecord refSubRecord) {
        this._list.add(refSubRecord);
    }

    public int addRef(int i, int i2, int i3) {
        this._list.add(new RefSubRecord(i, i2, i3));
        return this._list.size() - 1;
    }

    public int findRefIndexFromExtBookIndex(int i) {
        int size = this._list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (getRef(i2).getExtBookIndex() == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return (this._list.size() * 6) + 2;
    }

    public int getExtbookIndexFromRefIndex(int i) {
        return getRef(i).getExtBookIndex();
    }

    public int getFirstSheetIndexFromRefIndex(int i) {
        return getRef(i).getFirstSheetIndex();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("refrec", new Supplier() { // from class: com.sunia.HTREnginev2.r6g
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = ExternSheetRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
    }

    public int getLastSheetIndexFromRefIndex(int i) {
        return getRef(i).getLastSheetIndex();
    }

    public int getNumOfREFRecords() {
        return this._list.size();
    }

    public int getNumOfRefs() {
        return this._list.size();
    }

    public int getRefIxForSheet(int i, int i2, int i3) {
        int size = this._list.size();
        for (int i4 = 0; i4 < size; i4++) {
            RefSubRecord ref = getRef(i4);
            if (ref.getExtBookIndex() == i && ref.getFirstSheetIndex() == i2 && ref.getLastSheetIndex() == i3) {
                return i4;
            }
        }
        return -1;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 23;
    }

    public void removeSheet(int i) {
        int size = this._list.size();
        for (int i2 = 0; i2 < size; i2++) {
            RefSubRecord refSubRecord = this._list.get(i2);
            if (refSubRecord.getFirstSheetIndex() == i && refSubRecord.getLastSheetIndex() == i) {
                this._list.set(i2, new RefSubRecord(refSubRecord.getExtBookIndex(), -1, -1));
            } else if (refSubRecord.getFirstSheetIndex() > i && refSubRecord.getLastSheetIndex() > i) {
                this._list.set(i2, new RefSubRecord(refSubRecord.getExtBookIndex(), refSubRecord.getFirstSheetIndex() - 1, refSubRecord.getLastSheetIndex() - 1));
            }
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        int size = this._list.size();
        littleEndianOutput.writeShort(size);
        for (int i = 0; i < size; i++) {
            getRef(i).serialize(littleEndianOutput);
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.EXTERN_SHEET;
    }

    public ExternSheetRecord(ExternSheetRecord externSheetRecord) {
        final ArrayList arrayList = new ArrayList();
        this._list = arrayList;
        externSheetRecord._list.stream().map(new Function() { // from class: org.apache.poi.hssf.record.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new ExternSheetRecord.RefSubRecord((ExternSheetRecord.RefSubRecord) obj);
            }
        }).forEach(new Consumer() { // from class: org.apache.poi.hssf.record.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((ExternSheetRecord.RefSubRecord) obj);
            }
        });
    }

    /* loaded from: classes12.dex */
    public static final class RefSubRecord implements GenericRecord {
        public static final int ENCODED_SIZE = 6;
        private final int _extBookIndex;
        private int _firstSheetIndex;
        private int _lastSheetIndex;

        public RefSubRecord(int i, int i2, int i3) {
            this._extBookIndex = i;
            this._firstSheetIndex = i2;
            this._lastSheetIndex = i3;
        }

        public int getExtBookIndex() {
            return this._extBookIndex;
        }

        public int getFirstSheetIndex() {
            return this._firstSheetIndex;
        }

        @Override // org.apache.poi.common.usermodel.GenericRecord
        public Map<String, Supplier<?>> getGenericProperties() {
            return GenericRecordUtil.getGenericProperties("extBookIndex", new Supplier() { // from class: org.apache.poi.hssf.record.f
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExternSheetRecord.RefSubRecord.this.getExtBookIndex());
                }
            }, "firstSheetIndex", new Supplier() { // from class: org.apache.poi.hssf.record.g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExternSheetRecord.RefSubRecord.this.getFirstSheetIndex());
                }
            }, "lastSheetIndex", new Supplier() { // from class: org.apache.poi.hssf.record.h
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(ExternSheetRecord.RefSubRecord.this.getLastSheetIndex());
                }
            });
        }

        public int getLastSheetIndex() {
            return this._lastSheetIndex;
        }

        public void serialize(LittleEndianOutput littleEndianOutput) {
            littleEndianOutput.writeShort(this._extBookIndex);
            littleEndianOutput.writeShort(this._firstSheetIndex);
            littleEndianOutput.writeShort(this._lastSheetIndex);
        }

        public String toString() {
            return GenericRecordJsonWriter.marshal(this);
        }

        public RefSubRecord(RefSubRecord refSubRecord) {
            this._extBookIndex = refSubRecord._extBookIndex;
            this._firstSheetIndex = refSubRecord._firstSheetIndex;
            this._lastSheetIndex = refSubRecord._lastSheetIndex;
        }

        public RefSubRecord(RecordInputStream recordInputStream) {
            this(recordInputStream.readShort(), recordInputStream.readShort(), recordInputStream.readShort());
        }
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ExternSheetRecord copy() {
        return new ExternSheetRecord(this);
    }

    public ExternSheetRecord(RecordInputStream recordInputStream) {
        this._list = new ArrayList();
        short readShort = recordInputStream.readShort();
        for (int i = 0; i < readShort; i++) {
            this._list.add(new RefSubRecord(recordInputStream));
        }
    }
}
