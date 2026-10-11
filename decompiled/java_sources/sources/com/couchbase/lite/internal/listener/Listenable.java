package com.couchbase.lite.internal.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.ChangeListener;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.ListenerToken;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public interface Listenable<T, L extends ChangeListener<T>> {
    @NonNull
    ListenerToken addChangeListener(@NonNull L l) throws CouchbaseLiteException;

    @NonNull
    ListenerToken addChangeListener(@Nullable Executor executor, @NonNull L l) throws CouchbaseLiteException;
}
