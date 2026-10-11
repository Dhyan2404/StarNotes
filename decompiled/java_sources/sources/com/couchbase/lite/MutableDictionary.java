package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.fleece.MCollection;
import com.couchbase.lite.internal.fleece.MDict;
import com.couchbase.lite.internal.fleece.MValue;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class MutableDictionary extends Dictionary implements MutableDictionaryInterface {
    public MutableDictionary() {
    }

    @Nullable
    private Object toFleece(@Nullable Object obj) {
        return obj == this ? ((Dictionary) obj).toMutable() : Fleece.toCBLObject(obj);
    }

    @VisibleForTesting
    public boolean isChanged() {
        boolean isMutated;
        synchronized (this.lock) {
            isMutated = this.internalDict.isMutated();
        }
        return isMutated;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public /* bridge */ /* synthetic */ MutableDictionaryInterface setData(@NonNull Map map) {
        return setData((Map<String, Object>) map);
    }

    @Override // com.couchbase.lite.Dictionary, com.couchbase.lite.DictionaryInterface
    @NonNull
    public String toJSON() {
        throw new CouchbaseLiteError("Mutable objects may not be encoded as JSON");
    }

    public MutableDictionary(@NonNull Map<String, Object> map) {
        setData(map);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary remove(@NonNull String str) {
        Preconditions.assertNotNull(str, "key");
        synchronized (this.lock) {
            this.internalDict.remove(str);
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setArray(@NonNull String str, @Nullable Array array) {
        return setValue(str, (Object) array);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setBlob(@NonNull String str, @Nullable Blob blob) {
        return setValue(str, (Object) blob);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setBoolean(@NonNull String str, boolean z) {
        return setValue(str, (Object) Boolean.valueOf(z));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setData(@NonNull Map<String, Object> map) {
        synchronized (this.lock) {
            this.internalDict.clear();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                this.internalDict.set((String) Preconditions.assertNotNull(entry.getKey(), "data key"), new MValue(toFleece(entry.getValue())));
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setDate(@NonNull String str, @Nullable Date date) {
        return setValue(str, (Object) date);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setDictionary(@NonNull String str, @Nullable Dictionary dictionary) {
        return setValue(str, (Object) dictionary);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setDouble(@NonNull String str, double d) {
        return setValue(str, (Object) Double.valueOf(d));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setFloat(@NonNull String str, float f) {
        return setValue(str, (Object) Float.valueOf(f));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setInt(@NonNull String str, int i) {
        return setValue(str, (Object) Integer.valueOf(i));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setJSON(@NonNull String str) {
        synchronized (this.lock) {
            try {
                try {
                    setData(JSONUtils.fromJSON(new JSONObject(str)));
                } catch (JSONException e) {
                    throw new IllegalArgumentException("Failed parsing JSON", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setLong(@NonNull String str, long j) {
        return setValue(str, (Object) Long.valueOf(j));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setNumber(@NonNull String str, @Nullable Number number) {
        return setValue(str, (Object) number);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setString(@NonNull String str, @Nullable String str2) {
        return setValue(str, (Object) str2);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDictionary setValue(@NonNull String str, @Nullable Object obj) {
        Preconditions.assertNotNull(str, "key");
        Object fleece = toFleece(obj);
        synchronized (this.lock) {
            if (Fleece.willMutate(fleece, this.internalDict.get(str), this.internalDict)) {
                this.internalDict.set(str, new MValue(fleece));
            }
        }
        return this;
    }

    public MutableDictionary(@NonNull String str) {
        setJSON(str);
    }

    public MutableDictionary(@NonNull Dictionary dictionary) {
        super(new MDict(dictionary.internalDict, true));
    }

    @Override // com.couchbase.lite.Dictionary, com.couchbase.lite.DictionaryInterface
    @Nullable
    public MutableArray getArray(@NonNull String str) {
        return (MutableArray) super.getArray(str);
    }

    @Override // com.couchbase.lite.Dictionary, com.couchbase.lite.DictionaryInterface
    @Nullable
    public MutableDictionary getDictionary(@NonNull String str) {
        return (MutableDictionary) super.getDictionary(str);
    }

    public MutableDictionary(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        super(mValue, mCollection);
    }
}
