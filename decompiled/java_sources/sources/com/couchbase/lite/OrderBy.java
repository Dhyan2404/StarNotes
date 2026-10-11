package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public final class OrderBy extends BuilderQuery implements LimitRouter {

    @NonNull
    private final List<Ordering> orderings;

    public OrderBy(@NonNull BuilderQuery builderQuery, @NonNull List<Ordering> list) {
        copy(builderQuery);
        this.orderings = list;
        setOrderBy(this);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener) {
        return super.addChangeListener(queryChangeListener);
    }

    @NonNull
    public Object asJSON() {
        ArrayList arrayList = new ArrayList();
        Iterator<Ordering> it2 = this.orderings.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().asJSON());
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

    @Override // com.couchbase.lite.LimitRouter
    @NonNull
    public Limit limit(@NonNull Expression expression) {
        return limit(expression, null);
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
