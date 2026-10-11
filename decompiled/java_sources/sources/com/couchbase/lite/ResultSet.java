package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4QueryEnumerator;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class ResultSet implements Iterable<Result>, AutoCloseable {
    private static final LogDomain DOMAIN = LogDomain.QUERY;

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4QueryEnumerator c4enum;

    @NonNull
    private final Map<String, Integer> columnNames;

    @NonNull
    private final ResultContext context;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private boolean isAllEnumerated;

    @NonNull
    private final Object lock = new Object();

    @NonNull
    private final AbstractQuery query;

    public ResultSet(@NonNull AbstractQuery abstractQuery, @Nullable C4QueryEnumerator c4QueryEnumerator, @NonNull Map<String, Integer> map) {
        this.query = (AbstractQuery) Preconditions.assertNotNull(abstractQuery, SearchIntents.EXTRA_QUERY);
        this.columnNames = (Map) Preconditions.assertNotNull(map, "columns");
        this.context = new ResultContext(abstractQuery.getDatabase(), this);
        this.c4enum = c4QueryEnumerator;
    }

    @NonNull
    public List<Result> allResults() {
        ArrayList arrayList = new ArrayList();
        while (true) {
            Result next = next();
            if (next == null) {
                return arrayList;
            }
            arrayList.add(next);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        C4QueryEnumerator c4QueryEnumerator;
        synchronized (this.lock) {
            c4QueryEnumerator = this.c4enum;
            this.c4enum = null;
        }
        if (c4QueryEnumerator == null) {
            return;
        }
        AbstractDatabase database = this.context.getDatabase();
        if (database == null) {
            throw new CouchbaseLiteError("Could not obtain db lock");
        }
        synchronized (database.getDbLock()) {
            c4QueryEnumerator.close();
        }
    }

    public void finalize() throws Throwable {
        try {
            C4QueryEnumerator c4QueryEnumerator = this.c4enum;
            if (c4QueryEnumerator != null) {
                c4QueryEnumerator.close();
            }
        } finally {
            super.finalize();
        }
    }

    public int getColumnCount() {
        return this.columnNames.size();
    }

    public int getColumnIndex(@NonNull String str) {
        Integer num = this.columnNames.get(str);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @NonNull
    public List<String> getColumnNames() {
        return new ArrayList(this.columnNames.keySet());
    }

    @NonNull
    public AbstractQuery getQuery() {
        return this.query;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this.lock) {
            z = this.c4enum == null;
        }
        return z;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Result> iterator() {
        return allResults().iterator();
    }

    @Nullable
    public Result next() {
        synchronized (this.lock) {
            C4QueryEnumerator c4QueryEnumerator = this.c4enum;
            if (c4QueryEnumerator == null || this.isAllEnumerated) {
                return null;
            }
            try {
                if (c4QueryEnumerator.next()) {
                    return new Result(this.context, this.c4enum);
                }
                this.isAllEnumerated = true;
                return null;
            } catch (LiteCoreException e) {
                com.couchbase.lite.internal.logging.Log.m9905i(DOMAIN, "Error enumerating query", e);
                return null;
            }
        }
    }
}
