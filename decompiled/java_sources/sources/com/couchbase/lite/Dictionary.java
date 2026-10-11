package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.fleece.FLEncodable;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MContext;
import com.couchbase.lite.internal.fleece.MDict;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class Dictionary implements DictionaryInterface, FLEncodable, Iterable<String> {

    @NonNull
    protected final MDict internalDict;

    @NonNull
    protected final Object lock;

    /* loaded from: classes4.dex */
    public class DictionaryIterator implements Iterator<String> {
        private final Iterator<String> iterator;
        private final long mutations;

        public DictionaryIterator() {
            this.mutations = Dictionary.this.internalDict.getLocalMutationCount();
            this.iterator = Dictionary.this.getKeys().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        @Nullable
        public String next() {
            if (Dictionary.this.internalDict.getLocalMutationCount() == this.mutations) {
                return this.iterator.next();
            }
            throw new ConcurrentModificationException("Dictionary modified during iteration");
        }
    }

    public Dictionary() {
        this(new MDict());
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean contains(@NonNull String str) {
        boolean z;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            z = !this.internalDict.get(str).isEmpty();
        }
        return z;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public int count() {
        int count;
        synchronized (this.lock) {
            count = (int) this.internalDict.count();
        }
        return count;
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        this.internalDict.encodeTo(fLEncoder);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Dictionary)) {
            return false;
        }
        Dictionary dictionary = (Dictionary) obj;
        if (dictionary.count() != count()) {
            return false;
        }
        Iterator<String> it2 = iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            Object value = getValue(next);
            if (value != null) {
                if (!value.equals(dictionary.getValue(next))) {
                    return false;
                }
            } else if (dictionary.getValue(next) != null || !dictionary.contains(next)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Blob getBlob(@NonNull String str) {
        Blob blob;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            Object asNative = this.internalDict.get(str).asNative(this.internalDict);
            blob = asNative instanceof Blob ? (Blob) asNative : null;
        }
        return blob;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean getBoolean(@NonNull String str) {
        boolean asBoolean;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asBoolean = CBLConverter.asBoolean(this.internalDict.get(str).asNative(this.internalDict));
        }
        return asBoolean;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Date getDate(@NonNull String str) {
        return JSONUtils.toDate(getString((String) Preconditions.assertNotNull(str, "key")));
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public double getDouble(@NonNull String str) {
        double asDouble;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asDouble = CBLConverter.asDouble(this.internalDict.get(str), this.internalDict);
        }
        return asDouble;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public float getFloat(@NonNull String str) {
        float asFloat;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asFloat = CBLConverter.asFloat(this.internalDict.get(str), this.internalDict);
        }
        return asFloat;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public int getInt(@NonNull String str) {
        int asInteger;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asInteger = CBLConverter.asInteger(this.internalDict.get(str), this.internalDict);
        }
        return asInteger;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public List<String> getKeys() {
        List<String> keys;
        synchronized (this.lock) {
            keys = this.internalDict.getKeys();
        }
        return keys;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public long getLong(@NonNull String str) {
        long asLong;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asLong = CBLConverter.asLong(this.internalDict.get(str), this.internalDict);
        }
        return asLong;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Number getNumber(@NonNull String str) {
        Number asNumber;
        Preconditions.assertNotEmpty(str, "key");
        synchronized (this.lock) {
            asNumber = CBLConverter.asNumber(this.internalDict.get(str).asNative(this.internalDict));
        }
        return asNumber;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public String getString(@NonNull String str) {
        String str2;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            Object asNative = this.internalDict.get(str).asNative(this.internalDict);
            str2 = asNative instanceof String ? (String) asNative : null;
        }
        return str2;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Object getValue(@NonNull String str) {
        Object asNative;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            asNative = this.internalDict.get(str).asNative(this.internalDict);
        }
        return asNative;
    }

    public int hashCode() {
        Iterator<String> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            String next = it2.next();
            Object value = getValue(next);
            i += next.hashCode() ^ (value == null ? 0 : value.hashCode());
        }
        return i;
    }

    public boolean isEmpty() {
        return count() == 0;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<String> iterator() {
        return new DictionaryIterator();
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public String toJSON() throws CouchbaseLiteException {
        try {
            FLEncoder.JSONEncoder jSONEncoder = FLEncoder.getJSONEncoder();
            try {
                this.internalDict.encodeTo(jSONEncoder);
                String finishJSON = jSONEncoder.finishJSON();
                jSONEncoder.close();
                return finishJSON;
            } finally {
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Cannot encode dictionary: " + this);
        }
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public Map<String, Object> toMap() {
        HashMap hashMap = new HashMap();
        synchronized (this.lock) {
            for (String str : this.internalDict.getKeys()) {
                hashMap.put(str, Fleece.toObject(this.internalDict.get(str).asNative(this.internalDict)));
            }
        }
        return hashMap;
    }

    @NonNull
    public MutableDictionary toMutable() {
        MutableDictionary mutableDictionary;
        synchronized (this.lock) {
            mutableDictionary = new MutableDictionary(this);
        }
        return mutableDictionary;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("Dictionary{(");
        sb.append(this.internalDict.getStateString());
        sb.append(')');
        boolean z = true;
        for (String str : getKeys()) {
            if (z) {
                sb.append(' ');
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
            sb.append("=>");
            sb.append(getValue(str));
        }
        sb.append('}');
        return sb.toString();
    }

    public Dictionary(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        this(new MDict(mValue, mCollection));
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Array getArray(@NonNull String str) {
        Array array;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            Object asNative = this.internalDict.get(str).asNative(this.internalDict);
            array = asNative instanceof Array ? (Array) asNative : null;
        }
        return array;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Dictionary getDictionary(@NonNull String str) {
        Dictionary dictionary;
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            Object asNative = this.internalDict.get(str).asNative(this.internalDict);
            dictionary = asNative instanceof Dictionary ? (Dictionary) asNative : null;
        }
        return dictionary;
    }

    public Dictionary(@NonNull MDict mDict) {
        this.internalDict = mDict;
        MContext context = mDict.getContext();
        BaseDatabase database = context == null ? null : context.getDatabase();
        this.lock = database == null ? new Object() : database.getDbLock();
    }
}
