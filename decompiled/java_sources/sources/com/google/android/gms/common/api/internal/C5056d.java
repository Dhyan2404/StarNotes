package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;

/* renamed from: com.google.android.gms.common.api.internal.d */
/* loaded from: classes5.dex */
public final class C5056d extends RegisterListenerMethod {

    /* renamed from: e */
    public final /* synthetic */ RegistrationMethods.Builder f29170e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5056d(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z, int i) {
        super(listenerHolder, featureArr, z, i);
        this.f29170e = builder;
    }

    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    public final void registerListener(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.f29170e.f29138a;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
