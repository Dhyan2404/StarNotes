package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Query;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.internal.utils.StringUtils;
import com.google.android.gms.actions.SearchIntents;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class N1qlQuery extends AbstractQuery {

    /* renamed from: db */
    @NonNull
    private final AbstractDatabase f16270db;

    @NonNull
    private final String n1ql;

    public N1qlQuery(@NonNull AbstractDatabase abstractDatabase, @NonNull String str) {
        this.n1ql = (String) Preconditions.assertNotNull(str, SearchIntents.EXTRA_QUERY);
        this.f16270db = (AbstractDatabase) Preconditions.assertNotNull(abstractDatabase, "database");
    }

    @Override // com.couchbase.lite.AbstractQuery
    @NonNull
    public AbstractDatabase getDatabase() {
        return this.f16270db;
    }

    @Override // com.couchbase.lite.AbstractQuery
    @NonNull
    @GuardedBy("AbstractQuery.lock")
    public C4Query prepQueryLocked(@NonNull AbstractDatabase abstractDatabase) throws CouchbaseLiteException {
        com.couchbase.lite.internal.logging.Log.m9899d(AbstractQuery.DOMAIN, "N1QL query: %s", this.n1ql);
        if (StringUtils.isEmpty(this.n1ql)) {
            throw new CouchbaseLiteException("Query is null or empty.");
        }
        try {
            return abstractDatabase.createN1qlQuery(this.n1ql);
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @NonNull
    public String toString() {
        return "N1qlQuery{" + ClassUtils.objId(this) + ", n1ql=" + this.n1ql + "}";
    }
}
