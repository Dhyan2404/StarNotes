package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.MArray;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.JSONUtils;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class MutableArray extends Array implements MutableArrayInterface {
    public MutableArray() {
    }

    @Nullable
    private Object toFleece(@Nullable Object obj) {
        return obj == this ? ((Array) obj).toMutable() : Fleece.toCBLObject(obj);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public /* bridge */ /* synthetic */ MutableArrayInterface setData(@NonNull List list) {
        return setData((List<Object>) list);
    }

    @Override // com.couchbase.lite.Array, com.couchbase.lite.ArrayInterface
    @NonNull
    public String toJSON() {
        throw new CouchbaseLiteError("Mutable objects may not be encoded as JSON");
    }

    public MutableArray(@NonNull List<Object> list) {
        setData(list);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addArray(@Nullable Array array) {
        return addValue((Object) array);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addBlob(@Nullable Blob blob) {
        return addValue((Object) blob);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addBoolean(boolean z) {
        return addValue((Object) Boolean.valueOf(z));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addDate(@Nullable Date date) {
        return addValue((Object) date);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addDictionary(@Nullable Dictionary dictionary) {
        return addValue((Object) dictionary);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addDouble(double d) {
        return addValue((Object) Double.valueOf(d));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addFloat(float f) {
        return addValue((Object) Float.valueOf(f));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addInt(int i) {
        return addValue((Object) Integer.valueOf(i));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addLong(long j) {
        return addValue((Object) Long.valueOf(j));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addNumber(@Nullable Number number) {
        return addValue((Object) number);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addString(@Nullable String str) {
        return addValue((Object) str);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray addValue(@Nullable Object obj) {
        Object fleece = toFleece(obj);
        synchronized (this.lock) {
            this.internalArray.append(fleece);
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertArray(int i, @Nullable Array array) {
        return insertValue(i, (Object) array);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertBlob(int i, @Nullable Blob blob) {
        return insertValue(i, (Object) blob);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertBoolean(int i, boolean z) {
        return insertValue(i, (Object) Boolean.valueOf(z));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertDate(int i, @Nullable Date date) {
        return insertValue(i, (Object) date);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertDictionary(int i, @Nullable Dictionary dictionary) {
        return insertValue(i, (Object) dictionary);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertDouble(int i, double d) {
        return insertValue(i, (Object) Double.valueOf(d));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertFloat(int i, float f) {
        return insertValue(i, (Object) Float.valueOf(f));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertInt(int i, int i2) {
        return insertValue(i, (Object) Integer.valueOf(i2));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertLong(int i, long j) {
        return insertValue(i, (Object) Long.valueOf(j));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertNumber(int i, @Nullable Number number) {
        return insertValue(i, (Object) number);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertString(int i, @Nullable String str) {
        return insertValue(i, (Object) str);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray insertValue(int i, @Nullable Object obj) {
        Object fleece = toFleece(obj);
        synchronized (this.lock) {
            if (!this.internalArray.insert(i, fleece)) {
                throw new IndexOutOfBoundsException("Array index " + i + " is out of range");
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray remove(int i) {
        synchronized (this.lock) {
            if (!this.internalArray.remove(i, 1L)) {
                throw new IndexOutOfBoundsException("Array index " + i + " is out of range");
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setArray(int i, @Nullable Array array) {
        return setValue(i, (Object) array);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setBlob(int i, @Nullable Blob blob) {
        return setValue(i, (Object) blob);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setBoolean(int i, boolean z) {
        return setValue(i, (Object) Boolean.valueOf(z));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setData(@NonNull List<Object> list) {
        synchronized (this.lock) {
            this.internalArray.clear();
            Iterator<Object> it2 = list.iterator();
            while (it2.hasNext()) {
                this.internalArray.append(toFleece(it2.next()));
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setDate(int i, @Nullable Date date) {
        return setValue(i, (Object) date);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setDictionary(int i, @Nullable Dictionary dictionary) {
        return setValue(i, (Object) dictionary);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setDouble(int i, double d) {
        return setValue(i, (Object) Double.valueOf(d));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setFloat(int i, float f) {
        return setValue(i, (Object) Float.valueOf(f));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setInt(int i, int i2) {
        return setValue(i, (Object) Integer.valueOf(i2));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setJSON(@NonNull String str) {
        synchronized (this.lock) {
            try {
                try {
                    setData(JSONUtils.fromJSON(new JSONArray(str)));
                } catch (JSONException e) {
                    throw new IllegalArgumentException("Failed parsing JSON", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setLong(int i, long j) {
        return setValue(i, (Object) Long.valueOf(j));
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setNumber(int i, @Nullable Number number) {
        return setValue(i, (Object) number);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setString(int i, @Nullable String str) {
        return setValue(i, (Object) str);
    }

    @Override // com.couchbase.lite.MutableArrayInterface
    @NonNull
    public MutableArray setValue(int i, @Nullable Object obj) {
        Object fleece = toFleece(obj);
        synchronized (this.lock) {
            long j = i;
            if (Fleece.willMutate(fleece, this.internalArray.get(j), this.internalArray) && !this.internalArray.set(j, fleece)) {
                throw new IndexOutOfBoundsException("Array index " + i + " is out of range");
            }
        }
        return this;
    }

    public MutableArray(@NonNull String str) {
        setJSON(str);
    }

    public MutableArray(@NonNull Array array) {
        super(new MArray(array.internalArray, true));
    }

    @Override // com.couchbase.lite.Array, com.couchbase.lite.ArrayInterface
    @Nullable
    public MutableArray getArray(int i) {
        return (MutableArray) super.getArray(i);
    }

    @Override // com.couchbase.lite.Array, com.couchbase.lite.ArrayInterface
    @Nullable
    public MutableDictionary getDictionary(int i) {
        return (MutableDictionary) super.getDictionary(i);
    }

    public MutableArray(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        super(mValue, mCollection);
    }
}
