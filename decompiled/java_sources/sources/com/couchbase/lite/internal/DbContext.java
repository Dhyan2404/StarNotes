package com.couchbase.lite.internal;

import androidx.annotation.Nullable;
import com.couchbase.lite.BaseDatabase;
import com.couchbase.lite.internal.fleece.MContext;

/* loaded from: classes4.dex */
public class DbContext extends MContext {

    /* renamed from: db */
    @Nullable
    private final BaseDatabase f16293db;

    public DbContext(@Nullable BaseDatabase baseDatabase) {
        this.f16293db = baseDatabase;
    }

    @Override // com.couchbase.lite.internal.fleece.MContext
    @Nullable
    public BaseDatabase getDatabase() {
        return this.f16293db;
    }
}
