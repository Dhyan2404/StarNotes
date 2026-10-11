package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class QueryChange {

    @Nullable
    private final Throwable error;

    @NonNull
    private final Query query;

    /* renamed from: rs */
    @Nullable
    private final ResultSet f16271rs;

    public QueryChange(@NonNull Query query, @Nullable ResultSet resultSet, @Nullable Throwable th) {
        this.query = query;
        this.f16271rs = resultSet;
        this.error = th;
    }

    @Nullable
    public Throwable getError() {
        return this.error;
    }

    @NonNull
    public Query getQuery() {
        return this.query;
    }

    @Nullable
    public ResultSet getResults() {
        return this.f16271rs;
    }

    @NonNull
    public String toString() {
        return "QueryChange{" + this.error + ", " + this.query + ", " + this.f16271rs + "}";
    }
}
