package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class DocumentReplicationListenerToken extends ListenerToken {

    @NonNull
    private final DocumentReplicationListener listener;

    public DocumentReplicationListenerToken(@Nullable Executor executor, @NonNull DocumentReplicationListener documentReplicationListener, @NonNull InterfaceC2217Fn.Consumer<ListenerToken> consumer) {
        super(executor, consumer);
        this.listener = (DocumentReplicationListener) Preconditions.assertNotNull(documentReplicationListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postChange$0(DocumentReplication documentReplication) {
        this.listener.replication(documentReplication);
    }

    public void postChange(@NonNull final DocumentReplication documentReplication) {
        send(new Runnable() { // from class: com.couchbase.lite.u
            @Override // java.lang.Runnable
            public final void run() {
                DocumentReplicationListenerToken.this.lambda$postChange$0(documentReplication);
            }
        });
    }

    @Override // com.couchbase.lite.ListenerToken
    @NonNull
    public String toString() {
        return "DocumentReplicationListenerToken{" + this.listener + super.toString() + "}";
    }
}
