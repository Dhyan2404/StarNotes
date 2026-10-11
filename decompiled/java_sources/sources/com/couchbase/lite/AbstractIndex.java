package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.C4Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractIndex {
    public abstract void createIndex(@NonNull String str, @NonNull C4Collection c4Collection) throws LiteCoreException, CouchbaseLiteException;

    @NonNull
    public abstract String getIndexSpec() throws CouchbaseLiteException;
}
