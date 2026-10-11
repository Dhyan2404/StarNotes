package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public final class C4CollectionSpec {

    @NonNull
    private final String collectionName;

    @NonNull
    private final String scopeName;

    public C4CollectionSpec(@NonNull String str, @NonNull String str2) {
        this.scopeName = str;
        this.collectionName = str2;
    }

    @NonNull
    public String getCollectionName() {
        return this.collectionName;
    }

    @NonNull
    public String getScopeName() {
        return this.scopeName;
    }
}
