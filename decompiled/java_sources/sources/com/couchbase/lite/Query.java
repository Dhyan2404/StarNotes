package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public interface Query {
    @NonNull
    ListenerToken addChangeListener(@NonNull QueryChangeListener queryChangeListener);

    @NonNull
    ListenerToken addChangeListener(@Nullable Executor executor, @NonNull QueryChangeListener queryChangeListener);

    @NonNull
    ResultSet execute() throws CouchbaseLiteException;

    @NonNull
    String explain() throws CouchbaseLiteException;

    @Nullable
    Parameters getParameters();

    @Deprecated
    void removeChangeListener(@NonNull ListenerToken listenerToken);

    void setParameters(Parameters parameters) throws CouchbaseLiteException;
}
