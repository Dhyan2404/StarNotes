package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.DbContext;

/* loaded from: classes4.dex */
public class ResultContext extends DbContext {

    /* renamed from: rs */
    @NonNull
    private final ResultSet f16272rs;

    public ResultContext(@Nullable AbstractDatabase abstractDatabase, @NonNull ResultSet resultSet) {
        super(abstractDatabase);
        this.f16272rs = resultSet;
    }

    @NonNull
    public ResultSet getResultSet() {
        return this.f16272rs;
    }

    @Override // com.couchbase.lite.internal.fleece.MContext
    public boolean isClosed() {
        return this.f16272rs.isClosed();
    }

    @Override // com.couchbase.lite.internal.DbContext, com.couchbase.lite.internal.fleece.MContext
    @Nullable
    public AbstractDatabase getDatabase() {
        return (AbstractDatabase) super.getDatabase();
    }
}
