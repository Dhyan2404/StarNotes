package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;

/* renamed from: com.google.android.gms.common.api.internal.e */
/* loaded from: classes5.dex */
public final class C5057e extends UnregisterListenerMethod {

    /* renamed from: b */
    public final /* synthetic */ RegistrationMethods.Builder f29171b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5057e(RegistrationMethods.Builder builder, ListenerHolder.ListenerKey listenerKey) {
        super(listenerKey);
        this.f29171b = builder;
    }

    @Override // com.google.android.gms.common.api.internal.UnregisterListenerMethod
    public final void unregisterListener(Api.AnyClient anyClient, TaskCompletionSource<Boolean> taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.f29171b.f29139b;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
