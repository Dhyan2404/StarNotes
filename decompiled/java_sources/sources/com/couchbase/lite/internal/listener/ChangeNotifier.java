package com.couchbase.lite.internal.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.ChangeListener;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public abstract class ChangeNotifier<T> {

    @NonNull
    private final Object lock = new Object();

    @NonNull
    private final Set<ChangeListenerToken<T>> listeners = new HashSet();

    /* loaded from: classes4.dex */
    public interface C4ChangeProducer<T1> extends AutoCloseable {
        void close();

        @Nullable
        List<T1> getChanges(int i);
    }

    @NonNull
    public final ChangeListenerToken<T> addChangeListener(@Nullable Executor executor, @NonNull ChangeListener<T> changeListener, @NonNull InterfaceC2217Fn.Consumer<ListenerToken> consumer) {
        ChangeListenerToken<T> changeListenerToken;
        synchronized (this.lock) {
            changeListenerToken = new ChangeListenerToken<>(changeListener, executor, consumer);
            this.listeners.add(changeListenerToken);
        }
        return changeListenerToken;
    }

    @VisibleForTesting
    public final int getListenerCount() {
        int size;
        synchronized (this.lock) {
            size = this.listeners.size();
        }
        return size;
    }

    public final void postChange(@NonNull T t) {
        HashSet hashSet;
        synchronized (this.lock) {
            hashSet = new HashSet(this.listeners);
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((ChangeListenerToken) it2.next()).postChange(t);
        }
    }

    public final boolean removeChangeListener(@NonNull ListenerToken listenerToken) {
        boolean isEmpty;
        synchronized (this.lock) {
            this.listeners.remove(listenerToken);
            isEmpty = this.listeners.isEmpty();
        }
        return isEmpty;
    }
}
