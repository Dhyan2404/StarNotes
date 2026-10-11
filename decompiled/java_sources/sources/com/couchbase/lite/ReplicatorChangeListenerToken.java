package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ReplicatorChangeListenerToken extends ListenerToken {

    @NonNull
    private final ReplicatorChangeListener listener;

    public ReplicatorChangeListenerToken(@Nullable Executor executor, @NonNull ReplicatorChangeListener replicatorChangeListener, @NonNull InterfaceC2217Fn.Consumer<ListenerToken> consumer) {
        super(executor, consumer);
        this.listener = (ReplicatorChangeListener) Preconditions.assertNotNull(replicatorChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postChange$0(ReplicatorChange replicatorChange) {
        this.listener.changed(replicatorChange);
    }

    public void postChange(@NonNull final ReplicatorChange replicatorChange) {
        send(new Runnable() { // from class: com.couchbase.lite.a0
            @Override // java.lang.Runnable
            public final void run() {
                ReplicatorChangeListenerToken.this.lambda$postChange$0(replicatorChange);
            }
        });
    }

    @Override // com.couchbase.lite.ListenerToken
    @NonNull
    public String toString() {
        return "ReplicatorChangeListenerToken{" + this.listener + super.toString() + "}";
    }
}
