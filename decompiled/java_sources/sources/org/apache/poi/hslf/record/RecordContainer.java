package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.util.ArrayUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public abstract class RecordContainer extends Record {
    protected Record[] _children;

    private void addChildAt(Record record, int i) {
        appendChild(record);
        moveChildRecords(this._children.length - 1, i, 1);
    }

    private int appendChild(Record record) {
        Record[] recordArr = this._children;
        Record[] recordArr2 = (Record[]) Arrays.copyOf(recordArr, recordArr.length + 1, Record[].class);
        recordArr2[this._children.length] = record;
        this._children = recordArr2;
        return recordArr2.length;
    }

    private int findChildLocation(Record record) {
        int i = 0;
        for (Record record2 : this._children) {
            if (record2.equals(record)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static void handleParentAwareRecords(RecordContainer recordContainer) {
        for (Object obj : recordContainer.getChildRecords()) {
            if (obj instanceof ParentAwareRecord) {
                ((ParentAwareRecord) obj).setParentRecord(recordContainer);
            }
            if (obj instanceof RecordContainer) {
                handleParentAwareRecords((RecordContainer) obj);
            }
        }
    }

    private void moveChildRecords(int i, int i2, int i3) {
        if (i == i2 || i3 == 0) {
            return;
        }
        int i4 = i + i3;
        Record[] recordArr = this._children;
        if (i4 > recordArr.length) {
            throw new IllegalArgumentException("Asked to move more records than there are!");
        }
        ArrayUtil.arrayMoveWithin(recordArr, i, i2, i3);
    }

    public int addChildAfter(Record record, Record record2) {
        int findChildLocation = findChildLocation(record2);
        if (findChildLocation == -1) {
            throw new IllegalArgumentException("Asked to add a new child after another record, but that record wasn't one of our children!");
        }
        int i = findChildLocation + 1;
        addChildAt(record, i);
        return i;
    }

    public int addChildBefore(Record record, Record record2) {
        int findChildLocation = findChildLocation(record2);
        if (findChildLocation == -1) {
            throw new IllegalArgumentException("Asked to add a new child before another record, but that record wasn't one of our children!");
        }
        addChildAt(record, findChildLocation);
        return findChildLocation;
    }

    public int appendChildRecord(Record record) {
        return appendChild(record);
    }

    public Record findFirstOfType(long j) {
        for (Record record : this._children) {
            if (record.getRecordType() == j) {
                return record;
            }
        }
        return null;
    }

    @Override // org.apache.poi.hslf.record.Record
    public Record[] getChildRecords() {
        return this._children;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    @Override // org.apache.poi.hslf.record.Record
    public boolean isAnAtom() {
        return false;
    }

    public Record removeChild(Record record) {
        ArrayList arrayList = new ArrayList();
        Record record2 = null;
        for (Record record3 : this._children) {
            if (record3 != record) {
                arrayList.add(record3);
            } else {
                record2 = record3;
            }
        }
        this._children = (Record[]) arrayList.toArray(new Record[0]);
        return record2;
    }

    public void setChildRecord(Record[] recordArr) {
        this._children = (Record[]) recordArr.clone();
    }

    public void writeOut(byte b, byte b2, long j, Record[] recordArr, OutputStream outputStream) throws IOException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            unsynchronizedByteArrayOutputStream.write(new byte[]{b, b2});
            byte[] bArr = new byte[2];
            LittleEndian.putShort(bArr, 0, (short) j);
            unsynchronizedByteArrayOutputStream.write(bArr);
            unsynchronizedByteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            for (Record record : recordArr) {
                record.writeOut(unsynchronizedByteArrayOutputStream);
            }
            byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
            LittleEndian.putInt(byteArray, 4, byteArray.length - 8);
            outputStream.write(byteArray);
            unsynchronizedByteArrayOutputStream.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
