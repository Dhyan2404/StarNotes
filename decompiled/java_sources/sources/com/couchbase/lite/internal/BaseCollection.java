package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import com.couchbase.lite.Database;
import com.couchbase.lite.Document;
import com.couchbase.lite.internal.fleece.FLDict;

/* loaded from: classes4.dex */
public abstract class BaseCollection {

    /* renamed from: db */
    @NonNull
    protected final Database f16292db;

    public BaseCollection(@NonNull Database database) {
        this.f16292db = database;
    }

    @NonNull
    public abstract Document createFilterDocument(@NonNull String str, @NonNull String str2, @NonNull FLDict fLDict);
}
