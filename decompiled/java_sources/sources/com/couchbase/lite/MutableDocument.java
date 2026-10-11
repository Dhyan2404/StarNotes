package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4Document;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes4.dex */
public final class MutableDocument extends Document implements MutableDictionaryInterface {
    public MutableDocument() {
        this((String) null);
    }

    @NonNull
    private static String createUUID() {
        return UUID.randomUUID().toString().toLowerCase(Locale.ENGLISH);
    }

    @NonNull
    private MutableDictionary getMutableContent() {
        return (MutableDictionary) getContent();
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public /* bridge */ /* synthetic */ MutableDictionaryInterface setData(@NonNull Map map) {
        return setData((Map<String, Object>) map);
    }

    @Override // com.couchbase.lite.Document, com.couchbase.lite.DictionaryInterface
    @NonNull
    public String toJSON() {
        throw new CouchbaseLiteError("Mutable objects may not be encoded as JSON");
    }

    @Override // com.couchbase.lite.Document
    @NonNull
    public MutableDocument toMutable() {
        return new MutableDocument(this);
    }

    public MutableDocument(@Nullable String str) {
        this(null, str, null);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument remove(@NonNull String str) {
        getMutableContent().remove(str);
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setArray(@NonNull String str, @Nullable Array array) {
        return setValue(str, (Object) array);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setBlob(@NonNull String str, @Nullable Blob blob) {
        return setValue(str, (Object) blob);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setBoolean(@NonNull String str, boolean z) {
        return setValue(str, (Object) Boolean.valueOf(z));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setData(@NonNull Map<String, Object> map) {
        getMutableContent().setData(map);
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setDate(@NonNull String str, @Nullable Date date) {
        return setValue(str, (Object) date);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setDictionary(@NonNull String str, @Nullable Dictionary dictionary) {
        return setValue(str, (Object) dictionary);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setDouble(@NonNull String str, double d) {
        return setValue(str, (Object) Double.valueOf(d));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setFloat(@NonNull String str, float f) {
        return setValue(str, (Object) Float.valueOf(f));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setInt(@NonNull String str, int i) {
        return setValue(str, (Object) Integer.valueOf(i));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setJSON(@NonNull String str) {
        getMutableContent().setJSON(str);
        return this;
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setLong(@NonNull String str, long j) {
        return setValue(str, (Object) Long.valueOf(j));
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setNumber(@NonNull String str, @Nullable Number number) {
        return setValue(str, (Object) number);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setString(@NonNull String str, @Nullable String str2) {
        return setValue(str, (Object) str2);
    }

    @Override // com.couchbase.lite.MutableDictionaryInterface
    @NonNull
    public MutableDocument setValue(@NonNull String str, @Nullable Object obj) {
        getMutableContent().setValue(str, obj);
        return this;
    }

    public MutableDocument(@NonNull Map<String, Object> map) {
        this((String) null, map);
    }

    public MutableDocument(@Nullable String str, @NonNull Map<String, Object> map) {
        this(null, str, null);
        if (map != null) {
            setData(map);
        }
    }

    @Override // com.couchbase.lite.Document, com.couchbase.lite.DictionaryInterface
    @Nullable
    public MutableArray getArray(@NonNull String str) {
        return getMutableContent().getArray(str);
    }

    @Override // com.couchbase.lite.Document, com.couchbase.lite.DictionaryInterface
    @Nullable
    public MutableDictionary getDictionary(@NonNull String str) {
        return getMutableContent().getDictionary(str);
    }

    public MutableDocument(@Nullable String str, @NonNull String str2) {
        this(null, str, null);
        setJSON(str2);
    }

    public MutableDocument(@NonNull Document document) {
        this(document.getCollection(), document.getId(), document.getC4doc());
        if (document.isMutable()) {
            setContent(document.getContent().toMutable());
        }
    }

    public MutableDocument(@NonNull String str, @NonNull Document document) {
        this(document.getCollection(), str, null);
        setData(document.getContent().toMap());
    }

    private MutableDocument(@Nullable Collection collection, @Nullable String str, @Nullable C4Document c4Document) {
        super(collection, str == null ? createUUID() : str, c4Document, true);
    }
}
