package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.fleece.FLArrayIterator;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.fleece.MRoot;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public final class Result implements ArrayInterface, DictionaryInterface, Iterable<String> {

    @NonNull
    private final ResultContext context;
    private final long missingColumns;

    @NonNull
    private final List<FLValue> values;

    public Result(@NonNull ResultContext resultContext, @NonNull C4QueryEnumerator c4QueryEnumerator) {
        this.context = resultContext;
        this.values = extractColumns(c4QueryEnumerator.getColumns());
        this.missingColumns = c4QueryEnumerator.getMissingColumns();
    }

    private void assertOpen() {
        if (this.context.isClosed()) {
            throw new CouchbaseLiteError("Attempt to use a result after its containing ResultSet has been closed");
        }
    }

    private void assertValid(int i) {
        assertOpen();
        if (isInBounds(i)) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("index " + i + " is not 0 <= index < " + count());
    }

    @NonNull
    private List<FLValue> extractColumns(@NonNull FLArrayIterator fLArrayIterator) {
        ArrayList arrayList = new ArrayList();
        int columnCount = getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(fLArrayIterator.getValueAt(i));
        }
        return arrayList;
    }

    @Nullable
    private Object fleeceValueToObject(int i) {
        Object asNative;
        FLValue fLValue = this.values.get(i);
        if (fLValue == null) {
            return null;
        }
        AbstractDatabase abstractDatabase = (AbstractDatabase) Preconditions.assertNotNull(this.context.getDatabase(), SyncConstant.LOCAL_DB_DIR_NAME);
        MRoot mRoot = new MRoot(this.context, fLValue, false);
        synchronized (abstractDatabase.getDbLock()) {
            asNative = mRoot.asNative();
        }
        return asNative;
    }

    private int getColumnCount() {
        return this.context.getResultSet().getColumnCount();
    }

    @NonNull
    private List<String> getColumnNames() {
        return this.context.getResultSet().getColumnNames();
    }

    private int indexForColumnName(@NonNull String str) {
        int columnIndex = this.context.getResultSet().getColumnIndex(str);
        if (columnIndex >= 0 && (this.missingColumns & (1 << columnIndex)) == 0) {
            return columnIndex;
        }
        return -1;
    }

    private boolean isInBounds(int i) {
        return i >= 0 && i < count();
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean contains(@NonNull String str) {
        assertOpen();
        return isInBounds(indexForColumnName((String) Preconditions.assertNotNull(str, "key")));
    }

    @Override // com.couchbase.lite.ArrayInterface
    public int count() {
        assertOpen();
        return getColumnCount();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Blob getBlob(int i) {
        assertValid(i);
        Object fleeceValueToObject = fleeceValueToObject(i);
        if (fleeceValueToObject instanceof Blob) {
            return (Blob) fleeceValueToObject;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    public boolean getBoolean(int i) {
        assertValid(i);
        FLValue fLValue = this.values.get(i);
        return fLValue != null && fLValue.asBool();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Date getDate(int i) {
        assertValid(i);
        return JSONUtils.toDate(getString(i));
    }

    @Override // com.couchbase.lite.ArrayInterface
    public double getDouble(int i) {
        assertValid(i);
        FLValue fLValue = this.values.get(i);
        if (fLValue == null) {
            return 0.0d;
        }
        return fLValue.asDouble();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public float getFloat(int i) {
        assertValid(i);
        FLValue fLValue = this.values.get(i);
        if (fLValue == null) {
            return 0.0f;
        }
        return fLValue.asFloat();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public int getInt(int i) {
        assertValid(i);
        FLValue fLValue = this.values.get(i);
        if (fLValue == null) {
            return 0;
        }
        return (int) fLValue.asInt();
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public List<String> getKeys() {
        assertOpen();
        return getColumnNames();
    }

    @Override // com.couchbase.lite.ArrayInterface
    public long getLong(int i) {
        assertValid(i);
        FLValue fLValue = this.values.get(i);
        if (fLValue == null) {
            return 0L;
        }
        return fLValue.asInt();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Number getNumber(int i) {
        assertValid(i);
        return CBLConverter.asNumber(fleeceValueToObject(i));
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public String getString(int i) {
        assertValid(i);
        Object fleeceValueToObject = fleeceValueToObject(i);
        if (fleeceValueToObject instanceof String) {
            return (String) fleeceValueToObject;
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Object getValue(int i) {
        assertValid(i);
        return fleeceValueToObject(i);
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<String> iterator() {
        return getKeys().iterator();
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public String toJSON() throws CouchbaseLiteException {
        assertOpen();
        int size = this.values.size();
        try {
            FLEncoder.JSONEncoder jSONEncoder = FLEncoder.getJSONEncoder();
            try {
                jSONEncoder.beginDict(size);
                for (String str : getColumnNames()) {
                    int indexForColumnName = indexForColumnName(str);
                    if (indexForColumnName >= 0 && indexForColumnName < size) {
                        jSONEncoder.writeKey(str);
                        jSONEncoder.writeValue(this.values.get(indexForColumnName));
                    }
                }
                jSONEncoder.endDict();
                String finishJSON = jSONEncoder.finishJSON();
                jSONEncoder.close();
                return finishJSON;
            } finally {
            }
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e, "Cannot encode result: " + this);
        }
    }

    @Override // com.couchbase.lite.ArrayInterface
    @NonNull
    public List<Object> toList() {
        assertOpen();
        int count = count();
        ArrayList arrayList = new ArrayList(count);
        for (int i = 0; i < count; i++) {
            arrayList.add(this.values.get(i).asObject());
        }
        return arrayList;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @NonNull
    public Map<String, Object> toMap() {
        assertOpen();
        int size = this.values.size();
        HashMap hashMap = new HashMap(size);
        for (String str : getColumnNames()) {
            int indexForColumnName = indexForColumnName(str);
            if (indexForColumnName >= 0 && indexForColumnName < size) {
                hashMap.put(str, this.values.get(indexForColumnName).asObject());
            }
        }
        return hashMap;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Array getArray(int i) {
        assertValid(i);
        Object fleeceValueToObject = fleeceValueToObject(i);
        if (fleeceValueToObject instanceof Array) {
            return (Array) fleeceValueToObject;
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Date getDate(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getDate(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    public Dictionary getDictionary(int i) {
        assertValid(i);
        Object fleeceValueToObject = fleeceValueToObject(i);
        if (fleeceValueToObject instanceof Dictionary) {
            return (Dictionary) fleeceValueToObject;
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Number getNumber(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getNumber(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Object getValue(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getValue(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Blob getBlob(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getBlob(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public boolean getBoolean(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        return isInBounds(indexForColumnName) && getBoolean(indexForColumnName);
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public double getDouble(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getDouble(indexForColumnName);
        }
        return 0.0d;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public float getFloat(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getFloat(indexForColumnName);
        }
        return 0.0f;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public int getInt(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getInt(indexForColumnName);
        }
        return 0;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    public long getLong(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getLong(indexForColumnName);
        }
        return 0L;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public String getString(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getString(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Array getArray(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getArray(indexForColumnName);
        }
        return null;
    }

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    public Dictionary getDictionary(@NonNull String str) {
        assertOpen();
        int indexForColumnName = indexForColumnName((String) Preconditions.assertNotNull(str, "key"));
        if (isInBounds(indexForColumnName)) {
            return getDictionary(indexForColumnName);
        }
        return null;
    }
}
