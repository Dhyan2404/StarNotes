package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.internal.core.C4DocumentChange;
import com.couchbase.lite.internal.listener.ChangeNotifier;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class CollectionChangeNotifier extends ChangeNotifier<CollectionChange> implements AutoCloseable {
    private static final int MAX_CHANGES = 1000;
    private static final int REQUESTED_CHANGES = 100;

    @Nullable
    @GuardedBy("collection.getDbLock()")
    private ChangeNotifier.C4ChangeProducer<C4DocumentChange> c4Observer;

    @NonNull
    private final Collection collection;

    public CollectionChangeNotifier(@NonNull Collection collection) {
        this.collection = (Collection) Preconditions.assertNotNull(collection, "collection");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void collectionChanged() {
        synchronized (this.collection.getDbLock()) {
            ChangeNotifier.C4ChangeProducer<C4DocumentChange> c4ChangeProducer = this.c4Observer;
            if (this.collection.isOpenLocked() && c4ChangeProducer != null) {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                while (true) {
                    List<C4DocumentChange> changes = c4ChangeProducer.getChanges(100);
                    if (changes == null) {
                        postChanges(arrayList);
                        return;
                    }
                    List filterToList = InterfaceC2217Fn.filterToList(changes, new InterfaceC2217Fn.NullablePredicate() { // from class: com.couchbase.lite.j
                        @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullablePredicate
                        public final boolean test(Object obj) {
                            boolean lambda$collectionChanged$1;
                            lambda$collectionChanged$1 = CollectionChangeNotifier.lambda$collectionChanged$1((C4DocumentChange) obj);
                            return lambda$collectionChanged$1;
                        }
                    });
                    if (!filterToList.isEmpty()) {
                        boolean isExternal = ((C4DocumentChange) filterToList.get(0)).isExternal();
                        if (arrayList.size() + filterToList.size() > 1000 || z != isExternal) {
                            postChanges(arrayList);
                            arrayList = new ArrayList();
                        }
                        arrayList.addAll(InterfaceC2217Fn.mapToList(filterToList, new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.t0e
                            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                            public final Object apply(Object obj) {
                                return ((C4DocumentChange) obj).getDocID();
                            }
                        }));
                        z = isExternal;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$collectionChanged$1(C4DocumentChange c4DocumentChange) {
        return c4DocumentChange != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(InterfaceC2217Fn.Consumer consumer) {
        consumer.accept(new Runnable() { // from class: com.couchbase.lite.h
            @Override // java.lang.Runnable
            public final void run() {
                CollectionChangeNotifier.this.collectionChanged();
            }
        });
    }

    private void postChanges(@NonNull List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        postChange(new CollectionChange(this.collection, list));
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.collection.getDbLock()) {
            ChangeNotifier.C4ChangeProducer<C4DocumentChange> c4ChangeProducer = this.c4Observer;
            if (c4ChangeProducer != null) {
                c4ChangeProducer.close();
            }
            this.c4Observer = null;
        }
    }

    @VisibleForTesting
    public void run(@NonNull ChangeNotifier.C4ChangeProducer<C4DocumentChange> c4ChangeProducer) {
        synchronized (this.collection.getDbLock()) {
            this.c4Observer = c4ChangeProducer;
        }
        collectionChanged();
    }

    public void start(@NonNull final InterfaceC2217Fn.Consumer<Runnable> consumer) throws CouchbaseLiteException {
        synchronized (this.collection.getDbLock()) {
            this.c4Observer = this.collection.createCollectionObserver(new Runnable() { // from class: com.couchbase.lite.i
                @Override // java.lang.Runnable
                public final void run() {
                    CollectionChangeNotifier.this.lambda$start$0(consumer);
                }
            });
        }
    }
}
