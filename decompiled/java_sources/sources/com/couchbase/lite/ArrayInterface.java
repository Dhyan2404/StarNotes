package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
public interface ArrayInterface {
    int count();

    @Nullable
    ArrayInterface getArray(int i);

    @Nullable
    Blob getBlob(int i);

    boolean getBoolean(int i);

    @Nullable
    Date getDate(int i);

    @Nullable
    DictionaryInterface getDictionary(int i);

    double getDouble(int i);

    float getFloat(int i);

    int getInt(int i);

    long getLong(int i);

    @Nullable
    Number getNumber(int i);

    @Nullable
    String getString(int i);

    @Nullable
    Object getValue(int i);

    @NonNull
    String toJSON() throws CouchbaseLiteException;

    @NonNull
    List<Object> toList();
}
