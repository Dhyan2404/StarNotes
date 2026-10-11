package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public interface DictionaryInterface {
    boolean contains(@NonNull String str);

    int count();

    @Nullable
    ArrayInterface getArray(@NonNull String str);

    @Nullable
    Blob getBlob(@NonNull String str);

    boolean getBoolean(@NonNull String str);

    @Nullable
    Date getDate(@NonNull String str);

    @Nullable
    DictionaryInterface getDictionary(@NonNull String str);

    double getDouble(@NonNull String str);

    float getFloat(@NonNull String str);

    int getInt(@NonNull String str);

    @NonNull
    List<String> getKeys();

    long getLong(@NonNull String str);

    @Nullable
    Number getNumber(@NonNull String str);

    @Nullable
    String getString(@NonNull String str);

    @Nullable
    Object getValue(@NonNull String str);

    @Nullable
    String toJSON() throws CouchbaseLiteException;

    @NonNull
    Map<String, Object> toMap();
}
