package com.couchbase.lite.internal.fleece;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.CouchbaseLiteError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class MDict extends MCollection {

    @Nullable
    private final FLDict baseDict;
    private long valCount;

    @NonNull
    private final Map<String, MValue> values;

    public MDict() {
        super(MContext.NULL, true);
        this.values = new HashMap();
        this.baseDict = null;
    }

    public void clear() {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot clear items from a non-mutable MDict");
        }
        assertOpen();
        if (this.valCount == 0) {
            return;
        }
        mutate();
        this.values.clear();
        FLDict fLDict = this.baseDict;
        if (fLDict != null && fLDict.count() > 0) {
            FLDictIterator it2 = this.baseDict.iterator();
            while (true) {
                try {
                    String key = it2.getKey();
                    if (key == null) {
                        break;
                    }
                    this.values.put(key, MValue.EMPTY);
                    it2.next();
                } catch (Throwable th) {
                    if (it2 != null) {
                        try {
                            it2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            it2.close();
        }
        this.valCount = 0L;
    }

    public boolean contains(String str) {
        assertOpen();
        MValue mValue = this.values.get(str);
        if (mValue == null) {
            FLDict fLDict = this.baseDict;
            if (fLDict != null && fLDict.get(str) != null) {
                return true;
            }
        } else if (!mValue.isEmpty()) {
            return true;
        }
        return false;
    }

    public long count() {
        return this.valCount;
    }

    @Override // com.couchbase.lite.internal.fleece.Encodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        assertOpen();
        if (!isMutated()) {
            FLDict fLDict = this.baseDict;
            if (fLDict != null) {
                fLEncoder.writeValue(fLDict);
                return;
            } else {
                fLEncoder.beginDict(0L);
                fLEncoder.endDict();
                return;
            }
        }
        fLEncoder.beginDict(this.valCount);
        for (Map.Entry<String, MValue> entry : this.values.entrySet()) {
            MValue value = entry.getValue();
            if (!value.isEmpty()) {
                fLEncoder.writeKey(entry.getKey());
                value.encodeTo(fLEncoder);
            }
        }
        FLDict fLDict2 = this.baseDict;
        if (fLDict2 != null && fLDict2.count() > 0) {
            FLDictIterator it2 = this.baseDict.iterator();
            while (true) {
                try {
                    String key = it2.getKey();
                    if (key == null) {
                        break;
                    }
                    if (!this.values.containsKey(key)) {
                        fLEncoder.writeKey(key);
                        fLEncoder.writeValue(it2.getValue());
                    }
                    it2.next();
                } catch (Throwable th) {
                    if (it2 != null) {
                        try {
                            it2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            it2.close();
        }
        fLEncoder.endDict();
    }

    @NonNull
    public MValue get(@NonNull String str) {
        assertOpen();
        MValue mValue = this.values.get(str);
        if (mValue != null) {
            return mValue;
        }
        FLDict fLDict = this.baseDict;
        FLValue fLValue = fLDict == null ? null : fLDict.get(str);
        if (fLValue == null) {
            return MValue.EMPTY;
        }
        MValue mValue2 = new MValue(fLValue);
        this.values.put(str, mValue2);
        return mValue2;
    }

    @NonNull
    public List<String> getKeys() {
        assertOpen();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, MValue> entry : this.values.entrySet()) {
            if (!entry.getValue().isEmpty()) {
                arrayList.add(entry.getKey());
            }
        }
        FLDict fLDict = this.baseDict;
        if (fLDict != null && fLDict.count() > 0) {
            FLDictIterator it2 = this.baseDict.iterator();
            while (true) {
                try {
                    String key = it2.getKey();
                    if (key == null) {
                        break;
                    }
                    if (!this.values.containsKey(key)) {
                        arrayList.add(key);
                    }
                    it2.next();
                } catch (Throwable th) {
                    if (it2 != null) {
                        try {
                            it2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            it2.close();
        }
        return arrayList;
    }

    public void remove(String str) {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot remove items in a non-mutable MDict");
        }
        set(str, MValue.EMPTY);
    }

    public void set(String str, @NonNull MValue mValue) {
        if (!isMutable()) {
            throw new CouchbaseLiteError("Cannot set items in a non-mutable MDict");
        }
        assertOpen();
        int i = !mValue.isEmpty() ? 1 : 0;
        MValue mValue2 = this.values.get(str);
        if (mValue2 != null) {
            int i2 = !mValue2.isEmpty() ? 1 : 0;
            if (i == 0 && i2 == 0) {
                return;
            } else {
                this.valCount += i - i2;
            }
        } else {
            FLDict fLDict = this.baseDict;
            if (fLDict == null || fLDict.get(str) == null) {
                if (i == 0) {
                    return;
                } else {
                    this.valCount++;
                }
            } else if (i == 0) {
                this.valCount--;
            }
        }
        mutate();
        this.values.put(str, mValue);
    }

    public MDict(@NonNull MDict mDict, boolean z) {
        super(mDict, z);
        HashMap hashMap = new HashMap();
        this.values = hashMap;
        hashMap.putAll(mDict.values);
        this.baseDict = mDict.baseDict;
        this.valCount = mDict.valCount;
    }

    public MDict(@NonNull MValue mValue, @Nullable MCollection mCollection) {
        super(mValue, mCollection, mCollection != null && mCollection.hasMutableChildren());
        this.values = new HashMap();
        FLValue value = mValue.getValue();
        if (value == null) {
            this.baseDict = null;
            return;
        }
        FLDict asFLDict = value.asFLDict();
        this.baseDict = asFLDict;
        this.valCount = asFLDict.count();
    }
}
