package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class MArray extends MCollection {

    @Nullable
    private final FLArray baseArray;

    @NonNull
    private final List<MValue> values;

    public MArray() {
        super(MContext.NULL, true);
        this.values = new ArrayList();
        this.baseArray = null;
    }

    private void populateValues() {
        if (this.baseArray == null) {
            return;
        }
        int size = this.values.size();
        for (int i = 0; i < size; i++) {
            if (this.values.get(i).isEmpty()) {
                this.values.set(i, new MValue(this.baseArray.get(i)));
            }
        }
    }

    private void resize() {
        assertOpen();
        FLArray fLArray = this.baseArray;
        if (fLArray == null) {
            return;
        }
        long count = fLArray.count();
        int size = this.values.size();
        long j = size;
        if (count < j) {
            this.values.subList((int) count, size).clear();
        } else if (count > j) {
            for (int i = 0; i < count - j; i++) {
                this.values.add(MValue.EMPTY);
            }
        }
    }

    public boolean append(Object obj) {
        if (isMutable()) {
            return insert(count(), obj);
        }
        throw new CouchbaseLiteError("Cannot append items to a non-mutable MArray");
    }

    public void clear() {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot clear items in a non-mutable MArray");
        }
        assertOpen();
        if (this.values.isEmpty()) {
            return;
        }
        mutate();
        this.values.clear();
    }

    public long count() {
        return this.values.size();
    }

    @Override // com.couchbase.lite.internal.fleece.Encodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        assertOpen();
        long j = 0;
        if (!isMutated()) {
            FLArray fLArray = this.baseArray;
            if (fLArray != null) {
                fLEncoder.writeValue(fLArray);
                return;
            } else {
                fLEncoder.beginArray(0L);
                fLEncoder.endArray();
                return;
            }
        }
        fLEncoder.beginArray(this.values.size());
        for (MValue mValue : this.values) {
            if (mValue.isEmpty()) {
                FLArray fLArray2 = this.baseArray;
                if (fLArray2 != null) {
                    fLEncoder.writeValue(fLArray2.get(j));
                }
            } else {
                mValue.encodeTo(fLEncoder);
            }
            j++;
        }
        fLEncoder.endArray();
    }

    @NonNull
    public MValue get(long j) {
        assertOpen();
        if (j < 0 || j >= this.values.size()) {
            return MValue.EMPTY;
        }
        int i = (int) j;
        MValue mValue = this.values.get(i);
        if (!mValue.isEmpty() || this.baseArray == null) {
            return mValue;
        }
        MValue mValue2 = new MValue(this.baseArray.get(j));
        this.values.set(i, mValue2);
        return mValue2;
    }

    public boolean insert(long j, Object obj) {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot insert items in a non-mutable MArray");
        }
        assertOpen();
        if (j < 0 || j > count()) {
            return false;
        }
        if (j < count()) {
            populateValues();
        }
        mutate();
        this.values.add((int) j, new MValue(obj));
        return true;
    }

    public boolean remove(long j, long j2) {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot remove items in a non-mutable MArray");
        }
        assertOpen();
        long j3 = j2 + j;
        if (j3 <= j) {
            return j3 == j;
        }
        long count = count();
        if (j3 > count) {
            return false;
        }
        if (j3 < count) {
            populateValues();
        }
        mutate();
        this.values.subList((int) j, (int) j3).clear();
        return true;
    }

    public boolean set(long j, Object obj) {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot set items in a non-mutable MArray");
        }
        assertOpen();
        if (j < 0 || j >= count()) {
            return false;
        }
        mutate();
        this.values.set((int) j, new MValue(obj));
        return true;
    }

    public MArray(@NonNull MArray mArray, boolean z) {
        super(mArray, z);
        ArrayList arrayList = new ArrayList();
        this.values = arrayList;
        arrayList.addAll(mArray.values);
        this.baseArray = mArray.baseArray;
        resize();
    }

    public MArray(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        super(mValue, mCollection, mCollection != null && mCollection.hasMutableChildren());
        this.values = new ArrayList();
        FLValue value = mValue.getValue();
        if (value == null) {
            this.baseArray = null;
        } else {
            this.baseArray = value.asFLArray();
            resize();
        }
    }
}
