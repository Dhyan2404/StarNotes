package com.google.android.gms.common.api.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.HandlerExecutor;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes5.dex */
public final class ListenerHolder<L> {

    /* renamed from: a */
    public final Executor f29115a;

    /* renamed from: b */
    @Nullable
    public volatile Object f29116b;

    /* renamed from: c */
    @Nullable
    public volatile ListenerKey f29117c;

    @KeepForSdk
    /* loaded from: classes5.dex */
    public static final class ListenerKey<L> {

        /* renamed from: a */
        public final Object f29118a;

        /* renamed from: b */
        public final String f29119b;

        @KeepForSdk
        public ListenerKey(L l, String str) {
            this.f29118a = l;
            this.f29119b = str;
        }

        @KeepForSdk
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ListenerKey)) {
                return false;
            }
            ListenerKey listenerKey = (ListenerKey) obj;
            return this.f29118a == listenerKey.f29118a && this.f29119b.equals(listenerKey.f29119b);
        }

        @KeepForSdk
        public int hashCode() {
            return (System.identityHashCode(this.f29118a) * 31) + this.f29119b.hashCode();
        }

        @NonNull
        @KeepForSdk
        public String toIdString() {
            return this.f29119b + "@" + System.identityHashCode(this.f29118a);
        }
    }

    @KeepForSdk
    /* loaded from: classes5.dex */
    public interface Notifier<L> {
        @KeepForSdk
        void notifyListener(@NonNull L l);

        @KeepForSdk
        void onNotifyListenerFailed();
    }

    @KeepForSdk
    public ListenerHolder(@NonNull Looper looper, @NonNull L l, @NonNull String str) {
        this.f29115a = new HandlerExecutor(looper);
        this.f29116b = Preconditions.checkNotNull(l, "Listener must not be null");
        this.f29117c = new ListenerKey(l, Preconditions.checkNotEmpty(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m22002a(Notifier notifier) {
        Object obj = this.f29116b;
        if (obj == null) {
            notifier.onNotifyListenerFailed();
            return;
        }
        try {
            notifier.notifyListener(obj);
        } catch (RuntimeException e) {
            notifier.onNotifyListenerFailed();
            throw e;
        }
    }

    @KeepForSdk
    public void clear() {
        this.f29116b = null;
        this.f29117c = null;
    }

    @Nullable
    @KeepForSdk
    public ListenerKey<L> getListenerKey() {
        return this.f29117c;
    }

    @KeepForSdk
    public boolean hasListener() {
        return this.f29116b != null;
    }

    @KeepForSdk
    public void notifyListener(@NonNull final Notifier<? super L> notifier) {
        Preconditions.checkNotNull(notifier, "Notifier must not be null");
        this.f29115a.execute(new Runnable() { // from class: com.google.android.gms.common.api.internal.zacb
            @Override // java.lang.Runnable
            public final void run() {
                ListenerHolder.this.m22002a(notifier);
            }
        });
    }

    @KeepForSdk
    public ListenerHolder(@NonNull Executor executor, @NonNull L l, @NonNull String str) {
        this.f29115a = (Executor) Preconditions.checkNotNull(executor, "Executor must not be null");
        this.f29116b = Preconditions.checkNotNull(l, "Listener must not be null");
        this.f29117c = new ListenerKey(l, Preconditions.checkNotEmpty(str));
    }
}
