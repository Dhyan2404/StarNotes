package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public class Limit extends BuilderQuery {

    @NonNull
    private final Expression limit;

    @Nullable
    private final Expression offset;

    public Limit(@NonNull BuilderQuery builderQuery, @NonNull Expression expression, @Nullable Expression expression2) {
        copy(builderQuery);
        this.limit = expression;
        this.offset = expression2;
        setLimit(this);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener) {
        return super.addChangeListener(queryChangeListener);
    }

    @NonNull
    public Object asJSON() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.limit.asJSON());
        Expression expression = this.offset;
        if (expression != null) {
            arrayList.add(expression.asJSON());
        }
        return arrayList;
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ResultSet execute() throws CouchbaseLiteException {
        return super.execute();
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ String explain() throws CouchbaseLiteException {
        return super.explain();
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @Nullable
    public /* bridge */ /* synthetic */ Parameters getParameters() {
        return super.getParameters();
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @Deprecated
    public /* bridge */ /* synthetic */ void removeChangeListener(@NonNull ListenerToken listenerToken) {
        super.removeChangeListener(listenerToken);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    public /* bridge */ /* synthetic */ void setParameters(@Nullable Parameters parameters) throws CouchbaseLiteException {
        super.setParameters(parameters);
    }

    @Override // com.couchbase.lite.BuilderQuery
    @NonNull
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@Nullable Executor executor, @NonNull QueryChangeListener queryChangeListener) {
        return super.addChangeListener(executor, queryChangeListener);
    }
}
