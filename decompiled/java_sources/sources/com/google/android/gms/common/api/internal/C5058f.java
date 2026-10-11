package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* renamed from: com.google.android.gms.common.api.internal.f */
/* loaded from: classes5.dex */
public final class C5058f extends TaskApiCall {

    /* renamed from: d */
    public final /* synthetic */ TaskApiCall.Builder f29172d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5058f(TaskApiCall.Builder builder, Feature[] featureArr, boolean z, int i) {
        super(featureArr, z, i);
        this.f29172d = builder;
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.f29172d.f29149a;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
