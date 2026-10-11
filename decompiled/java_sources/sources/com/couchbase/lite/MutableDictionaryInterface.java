package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.Map;

/* loaded from: classes4.dex */
public interface MutableDictionaryInterface extends DictionaryInterface {
    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    MutableArrayInterface getArray(@NonNull String str);

    @Override // com.couchbase.lite.DictionaryInterface
    @Nullable
    MutableDictionaryInterface getDictionary(@NonNull String str);

    @NonNull
    MutableDictionaryInterface remove(@NonNull String str);

    @NonNull
    MutableDictionaryInterface setArray(@NonNull String str, @NonNull Array array);

    @NonNull
    MutableDictionaryInterface setBlob(@NonNull String str, @NonNull Blob blob);

    @NonNull
    MutableDictionaryInterface setBoolean(@NonNull String str, boolean z);

    @NonNull
    MutableDictionaryInterface setData(@NonNull Map<String, Object> map);

    @NonNull
    MutableDictionaryInterface setDate(@NonNull String str, @NonNull Date date);

    @NonNull
    MutableDictionaryInterface setDictionary(@NonNull String str, @NonNull Dictionary dictionary);

    @NonNull
    MutableDictionaryInterface setDouble(@NonNull String str, double d);

    @NonNull
    MutableDictionaryInterface setFloat(@NonNull String str, float f);

    @NonNull
    MutableDictionaryInterface setInt(@NonNull String str, int i);

    @NonNull
    MutableDictionaryInterface setJSON(@NonNull String str);

    @NonNull
    MutableDictionaryInterface setLong(@NonNull String str, long j);

    @NonNull
    MutableDictionaryInterface setNumber(@NonNull String str, @NonNull Number number);

    @NonNull
    MutableDictionaryInterface setString(@NonNull String str, @NonNull String str2);

    @NonNull
    MutableDictionaryInterface setValue(@NonNull String str, @Nullable Object obj);
}
