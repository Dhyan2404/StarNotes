package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes4.dex */
public abstract class ListenerToken implements AutoCloseable {
    private final AtomicBoolean active = new AtomicBoolean(true);

    @Nullable
    private final Executor executor;
    private final InterfaceC2217Fn.Consumer<ListenerToken> onRemove;

    public ListenerToken(@Nullable Executor executor, @NonNull InterfaceC2217Fn.Consumer<ListenerToken> consumer) {
        this.executor = executor;
        this.onRemove = (InterfaceC2217Fn.Consumer) Preconditions.assertNotNull(consumer, "onRemove task");
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        remove();
    }

    @NonNull
    @VisibleForTesting
    public Executor getExecutor() {
        Executor executor = this.executor;
        return executor != null ? executor : CouchbaseLiteInternal.getExecutionService().getDefaultExecutor();
    }

    @VisibleForTesting
    public boolean isActive() {
        return this.active.get();
    }

    public void remove() {
        if (this.active.getAndSet(false)) {
            this.onRemove.accept(this);
        }
    }

    public void send(@NonNull Runnable runnable) {
        getExecutor().execute(runnable);
    }

    @NonNull
    public String toString() {
        return " on " + this.executor + " then " + this.onRemove;
    }
}
