package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Date;
import java.util.List;

/* loaded from: classes4.dex */
interface MutableArrayInterface extends ArrayInterface {
    @NonNull
    MutableArrayInterface addArray(@Nullable Array array);

    @NonNull
    MutableArrayInterface addBlob(@Nullable Blob blob);

    @NonNull
    MutableArrayInterface addBoolean(boolean z);

    @NonNull
    MutableArrayInterface addDate(@Nullable Date date);

    @NonNull
    MutableArrayInterface addDictionary(@Nullable Dictionary dictionary);

    @NonNull
    MutableArrayInterface addDouble(double d);

    @NonNull
    MutableArrayInterface addFloat(float f);

    @NonNull
    MutableArrayInterface addInt(int i);

    @NonNull
    MutableArrayInterface addLong(long j);

    @NonNull
    MutableArrayInterface addNumber(@Nullable Number number);

    @NonNull
    MutableArrayInterface addString(@Nullable String str);

    @NonNull
    MutableArrayInterface addValue(@Nullable Object obj);

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    MutableArrayInterface getArray(int i);

    @Override // com.couchbase.lite.ArrayInterface
    @Nullable
    MutableDictionaryInterface getDictionary(int i);

    @NonNull
    MutableArrayInterface insertArray(int i, @Nullable Array array);

    @NonNull
    MutableArrayInterface insertBlob(int i, @Nullable Blob blob);

    @NonNull
    MutableArrayInterface insertBoolean(int i, boolean z);

    @NonNull
    MutableArrayInterface insertDate(int i, @Nullable Date date);

    @NonNull
    MutableArrayInterface insertDictionary(int i, @Nullable Dictionary dictionary);

    @NonNull
    MutableArrayInterface insertDouble(int i, double d);

    @NonNull
    MutableArrayInterface insertFloat(int i, float f);

    @NonNull
    MutableArrayInterface insertInt(int i, int i2);

    @NonNull
    MutableArrayInterface insertLong(int i, long j);

    @NonNull
    MutableArrayInterface insertNumber(int i, @Nullable Number number);

    @NonNull
    MutableArrayInterface insertString(int i, @Nullable String str);

    @NonNull
    MutableArrayInterface insertValue(int i, @Nullable Object obj);

    @NonNull
    MutableArrayInterface remove(int i);

    @NonNull
    MutableArrayInterface setArray(int i, @Nullable Array array);

    @NonNull
    MutableArrayInterface setBlob(int i, @Nullable Blob blob);

    @NonNull
    MutableArrayInterface setBoolean(int i, boolean z);

    @NonNull
    MutableArrayInterface setData(@NonNull List<Object> list);

    @NonNull
    MutableArrayInterface setDate(int i, @Nullable Date date);

    @NonNull
    MutableArrayInterface setDictionary(int i, @Nullable Dictionary dictionary);

    @NonNull
    MutableArrayInterface setDouble(int i, double d);

    @NonNull
    MutableArrayInterface setFloat(int i, float f);

    @NonNull
    MutableArrayInterface setInt(int i, int i2);

    @NonNull
    MutableArrayInterface setJSON(@NonNull String str);

    @NonNull
    MutableArrayInterface setLong(int i, long j);

    @NonNull
    MutableArrayInterface setNumber(int i, @Nullable Number number);

    @NonNull
    MutableArrayInterface setString(int i, @Nullable String str);

    @NonNull
    MutableArrayInterface setValue(int i, @Nullable Object obj);
}
