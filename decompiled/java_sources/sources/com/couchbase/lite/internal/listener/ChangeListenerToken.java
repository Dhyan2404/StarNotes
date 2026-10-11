package com.couchbase.lite.internal.listener;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.ChangeListener;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.internal.listener.ChangeListenerToken;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
public class ChangeListenerToken<T> extends ListenerToken {
    public static final ChangeListenerToken<Void> DUMMY = new ChangeListenerToken<Void>(new ChangeListener() { // from class: com.sunia.HTREnginev2.mqd
        @Override // com.couchbase.lite.ChangeListener
        public final void changed(Object obj) {
            ChangeListenerToken.lambda$static$0((Void) obj);
        }
    }, null, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.nqd
        @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
        public final void accept(Object obj) {
            ChangeListenerToken.lambda$static$1((ListenerToken) obj);
        }
    }) { // from class: com.couchbase.lite.internal.listener.ChangeListenerToken.1
        @Override // com.couchbase.lite.internal.listener.ChangeListenerToken
        public void postChange(@NonNull Void r1) {
        }

        @Override // com.couchbase.lite.internal.listener.ChangeListenerToken, com.couchbase.lite.ListenerToken
        @NonNull
        public String toString() {
            return "Dummy Token!!";
        }
    };

    @Nullable
    private String key;

    @NonNull
    private final ChangeListener<T> listener;

    public ChangeListenerToken(@NonNull ChangeListener<T> changeListener, @Nullable Executor executor, @NonNull InterfaceC2217Fn.Consumer<ListenerToken> consumer) {
        super(executor, consumer);
        this.listener = (ChangeListener) Preconditions.assertNotNull(changeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postChange$2(Object obj) {
        this.listener.changed(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0(Void r0) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$1(ListenerToken listenerToken) {
    }

    @Nullable
    public String getKey() {
        return this.key;
    }

    public void postChange(@NonNull final T t) {
        send(new Runnable() { // from class: com.sunia.HTREnginev2.oqd
            @Override // java.lang.Runnable
            public final void run() {
                ChangeListenerToken.this.lambda$postChange$2(t);
            }
        });
    }

    public void setKey(@Nullable String str) {
        this.key = str;
    }

    @Override // com.couchbase.lite.ListenerToken
    @NonNull
    public String toString() {
        return "ChangeListenerToken{@" + this.key + ": " + this.listener + super.toString() + "}";
    }
}
