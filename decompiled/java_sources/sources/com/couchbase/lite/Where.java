package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Arrays;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public final class Where extends BuilderQuery implements GroupByRouter, OrderByRouter, LimitRouter {
    public Where(@NonNull BuilderQuery builderQuery, @NonNull Expression expression) {
        copy(builderQuery);
        setWhere(expression);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener) {
        return super.addChangeListener(queryChangeListener);
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

    @Override // com.couchbase.lite.GroupByRouter
    @NonNull
    public GroupBy groupBy(@NonNull Expression... expressionArr) {
        Preconditions.assertNotNull(expressionArr, "expressions");
        return new GroupBy(this, Arrays.asList(expressionArr));
    }

    @Override // com.couchbase.lite.LimitRouter
    @NonNull
    public Limit limit(@NonNull Expression expression) {
        return limit(expression, null);
    }

    @Override // com.couchbase.lite.OrderByRouter
    @NonNull
    public OrderBy orderBy(@NonNull Ordering... orderingArr) {
        Preconditions.assertNotNull(orderingArr, "orderings");
        return new OrderBy(this, Arrays.asList(orderingArr));
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

    @Override // com.couchbase.lite.LimitRouter
    @NonNull
    public Limit limit(@NonNull Expression expression, @Nullable Expression expression2) {
        Preconditions.assertNotNull(expression, "limit");
        return new Limit(this, expression, expression2);
    }
}
