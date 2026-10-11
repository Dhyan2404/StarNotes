package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4DocumentObserver;
import com.couchbase.lite.internal.listener.ChangeNotifier;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class DocumentChangeNotifier extends ChangeNotifier<DocumentChange> implements AutoCloseable {

    @Nullable
    private C4DocumentObserver c4Observer;

    @NonNull
    private final Collection collection;

    @NonNull
    private final String docID;

    public DocumentChangeNotifier(@NonNull Collection collection, @NonNull String str) {
        this.collection = collection;
        this.docID = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void documentChanged() {
        postChange(new DocumentChange(this.collection, this.docID));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(InterfaceC2217Fn.Consumer consumer) {
        consumer.accept(new Runnable() { // from class: com.couchbase.lite.s
            @Override // java.lang.Runnable
            public final void run() {
                DocumentChangeNotifier.this.documentChanged();
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.collection.getDbLock()) {
            C4DocumentObserver c4DocumentObserver = this.c4Observer;
            if (c4DocumentObserver != null) {
                c4DocumentObserver.close();
            }
            this.c4Observer = null;
        }
    }

    public void start(@NonNull final InterfaceC2217Fn.Consumer<Runnable> consumer) throws CouchbaseLiteException {
        synchronized (this.collection.getDbLock()) {
            this.c4Observer = this.collection.createDocumentObserver(this.docID, new Runnable() { // from class: com.couchbase.lite.t
                @Override // java.lang.Runnable
                public final void run() {
                    DocumentChangeNotifier.this.lambda$start$0(consumer);
                }
            });
        }
    }
}
