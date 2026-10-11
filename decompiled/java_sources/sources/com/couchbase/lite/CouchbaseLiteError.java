package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public class CouchbaseLiteError extends IllegalStateException {
    public CouchbaseLiteError(@NonNull String str) {
        this(str, null);
    }

    public CouchbaseLiteError(@NonNull String str, @Nullable Exception exc) {
        super(CouchbaseLiteException.getErrorMessage(str, exc), exc);
    }
}
