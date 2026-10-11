package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public final class Select extends BuilderQuery implements FromRouter {
    private final boolean distinct;

    @NonNull
    private final List<SelectResult> selectResults;

    public Select(boolean z, @NonNull SelectResult... selectResultArr) {
        this.distinct = z;
        this.selectResults = Arrays.asList(selectResultArr);
        setSelect(this);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @NonNull
    public /* bridge */ /* synthetic */ ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener) {
        return super.addChangeListener(queryChangeListener);
    }

    @NonNull
    public Object asJSON() {
        ArrayList arrayList = new ArrayList();
        Iterator<SelectResult> it2 = this.selectResults.iterator();
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

    @Override // com.couchbase.lite.FromRouter
    @NonNull
    public From from(@NonNull DataSource dataSource) {
        Preconditions.assertNotNull(dataSource, "dataSource");
        return new From(this, dataSource);
    }

    @Override // com.couchbase.lite.AbstractQuery, com.couchbase.lite.Query
    @Nullable
    public /* bridge */ /* synthetic */ Parameters getParameters() {
        return super.getParameters();
    }

    @NonNull
    public List<SelectResult> getSelectResults() {
        return this.selectResults;
    }

    public boolean hasSelectResults() {
        return !this.selectResults.isEmpty();
    }

    public boolean isDistinct() {
        return this.distinct;
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
