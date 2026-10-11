package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

@KeepForSdk
/* loaded from: classes5.dex */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    @NonNull
    @KeepForSdk
    public final RegisterListenerMethod<A, L> register;

    @NonNull
    public final UnregisterListenerMethod zaa;

    @NonNull
    public final Runnable zab;

    @KeepForSdk
    /* loaded from: classes5.dex */
    public static class Builder<A extends Api.AnyClient, L> {

        /* renamed from: a */
        public RemoteCall f29138a;

        /* renamed from: b */
        public RemoteCall f29139b;

        /* renamed from: d */
        public ListenerHolder f29141d;

        /* renamed from: e */
        public Feature[] f29142e;

        /* renamed from: g */
        public int f29144g;

        /* renamed from: c */
        public Runnable f29140c = zacj.zaa;

        /* renamed from: f */
        public boolean f29143f = true;

        public Builder() {
        }

        @NonNull
        @KeepForSdk
        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.f29138a != null, "Must set register function");
            Preconditions.checkArgument(this.f29139b != null, "Must set unregister function");
            Preconditions.checkArgument(this.f29141d != null, "Must set holder");
            return new RegistrationMethods<>(new C5056d(this, this.f29141d, this.f29142e, this.f29143f, this.f29144g), new C5057e(this, (ListenerHolder.ListenerKey) Preconditions.checkNotNull(this.f29141d.getListenerKey(), "Key must not be null")), this.f29140c, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> onConnectionSuspended(@NonNull Runnable runnable) {
            this.f29140c = runnable;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> register(@NonNull RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.f29138a = remoteCall;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.f29143f = z;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> setFeatures(@NonNull Feature... featureArr) {
            this.f29142e = featureArr;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> setMethodKey(int i) {
            this.f29144g = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> unregister(@NonNull RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.f29139b = remoteCall;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder<A, L> withHolder(@NonNull ListenerHolder<L> listenerHolder) {
            this.f29141d = listenerHolder;
            return this;
        }

        public /* synthetic */ Builder(zacm zacmVar) {
        }
    }

    public /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable, zacn zacnVar) {
        this.register = registerListenerMethod;
        this.zaa = unregisterListenerMethod;
        this.zab = runnable;
    }

    @NonNull
    @KeepForSdk
    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>(null);
    }
}
