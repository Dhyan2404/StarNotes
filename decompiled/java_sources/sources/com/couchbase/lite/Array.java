package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLEncodable;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.MArray;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MContext;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.JSONUtils;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes4.dex */
public class Array implements ArrayInterface, FLEncodable, Iterable<Object> {

    @NonNull
    protected final MArray internalArray;

    @NonNull
    protected final Object lock;

    /* loaded from: classes4.dex */
    public class ArrayIterator implements Iterator<Object> {
        private int index;
        private final long mutations;

        public ArrayIterator() {
            this.mutations = Array.this.internalArray.getLocalMutationCount();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < Array.this.count();
        }

        @Override // java.util.Iterator
        @Nullable
        public Object next() {
            if (Array.this.internalArray.getLocalMutationCount() != this.mutations) {
                throw new ConcurrentModificationException("Array modified during iteration");
            }
            Array array = Array.this;
            int i = this.index;
            this.index = i + 1;
            return array.getValue(i);
        }
    }

    public Array() {
        this(new MArray());
    }

    @NonNull
    private MValue getMValue(@NonNull MArray mArray, int i) {
        MValue mValue = mArray.get(i);
        if (!mValue.isEmpty()) {
            return mValue;
        }
        throw new ArrayIndexOutOfBoundsException("index " + i + " is not 0 <= index < " + count());
    }

    @Override // com.couchbase.lite.ArrayInterface
    public final int count() {
        int count;
        synchronized (this.lock) {
            count = (int) this.internalArray.count();
        }
        return count;
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        this.internalArray.encodeTo(fLEncoder);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Array)) {
            return false;
        }
        Iterator<Object> it2 = iterator();
        Iterator<Object> it3 = ((Array) obj).iterator();
        while (it2.hasNext() && it3.hasNext()) {
            if (!Objects.equals(it2.next(), it3.next())) {
                return false;
            }
        }
        return (it2.hasNext() || it3.hasNext()) ? false : true;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Blob getBlob(int i) {
        Blob blob;
        synchronized (this.lock) {
            Object asNative = getMValue(this.internalArray, i).asNative(this.internalArray);
            blob = !(asNative instanceof Blob) ? null : (Blob) asNative;
        }
        return blob;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public boolean getBoolean(int i) {
        boolean asBoolean;
        synchronized (this.lock) {
            asBoolean = CBLConverter.asBoolean(getMValue(this.internalArray, i).asNative(this.internalArray));
        }
        return asBoolean;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Date getDate(int i) {
        return JSONUtils.toDate(getString(i));
    }

    @Override // com.couchbase.lite.ArrayInterface
    public double getDouble(int i) {
        double asDouble;
        synchronized (this.lock) {
            asDouble = CBLConverter.asDouble(getMValue(this.internalArray, i), this.internalArray);
        }
        return asDouble;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public float getFloat(int i) {
        float asFloat;
        synchronized (this.lock) {
            asFloat = CBLConverter.asFloat(getMValue(this.internalArray, i), this.internalArray);
        }
        return asFloat;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public int getInt(int i) {
        int asInteger;
        synchronized (this.lock) {
            asInteger = CBLConverter.asInteger(getMValue(this.internalArray, i), this.internalArray);
        }
        return asInteger;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public long getLong(int i) {
        long asLong;
        synchronized (this.lock) {
            asLong = CBLConverter.asLong(getMValue(this.internalArray, i), this.internalArray);
        }
        return asLong;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Number getNumber(int i) {
        Number asNumber;
        synchronized (this.lock) {
            asNumber = CBLConverter.asNumber(getMValue(this.internalArray, i).asNative(this.internalArray));
        }
        return asNumber;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public String getString(int i) {
        String str;
        synchronized (this.lock) {
            Object asNative = getMValue(this.internalArray, i).asNative(this.internalArray);
            str = !(asNative instanceof String) ? null : (String) asNative;
        }
        return str;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Object getValue(int i) {
        Object asNative;
        synchronized (this.lock) {
            asNative = getMValue(this.internalArray, i).asNative(this.internalArray);
        }
        return asNative;
    }

    public int hashCode() {
        Iterator<Object> it2 = iterator();
        int i = 1;
        while (it2.hasNext()) {
            Object next = it2.next();
            i = (i * 31) + (next == null ? 0 : next.hashCode());
        }
        return i;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Object> iterator() {
        return new ArrayIterator();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public String toJSON() throws CouchbaseLiteException {
        try {
            FLEncoder.JSONEncoder jSONEncoder = FLEncoder.getJSONEncoder();
            try {
                this.internalArray.encodeTo(jSONEncoder);
                String finishJSON = jSONEncoder.finishJSON();
                jSONEncoder.close();
                return finishJSON;
            } finally {
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Cannot encode array: " + this);
        }
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public List<Object> toList() {
        ArrayList arrayList;
        synchronized (this.lock) {
            int count = (int) this.internalArray.count();
            arrayList = new ArrayList(count);
            for (int i = 0; i < count; i++) {
                arrayList.add(Fleece.toObject(getMValue(this.internalArray, i).asNative(this.internalArray)));
            }
        }
        return arrayList;
    }

    @NonNull
    public MutableArray toMutable() {
        MutableArray mutableArray;
        synchronized (this.lock) {
            mutableArray = new MutableArray(this);
        }
        return mutableArray;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("Array{(");
        sb.append(this.internalArray.getStateString());
        sb.append(')');
        int count = count();
        for (int i = 0; i < count; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(getValue(i));
        }
        sb.append('}');
        return sb.toString();
    }

    public Array(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        this(new MArray(mValue, mCollection));
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Array getArray(int i) {
        Array array;
        synchronized (this.lock) {
            Object asNative = getMValue(this.internalArray, i).asNative(this.internalArray);
            array = !(asNative instanceof Array) ? null : (Array) asNative;
        }
        return array;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Dictionary getDictionary(int i) {
        Dictionary dictionary;
        synchronized (this.lock) {
            Object asNative = getMValue(this.internalArray, i).asNative(this.internalArray);
            dictionary = !(asNative instanceof Dictionary) ? null : (Dictionary) asNative;
        }
        return dictionary;
    }

    public Array(@NonNull MArray mArray) {
        this.internalArray = mArray;
        MContext context = mArray.getContext();
        BaseDatabase database = context == null ? null : context.getDatabase();
        this.lock = database == null ? new Object() : database.getDbLock();
    }
}
