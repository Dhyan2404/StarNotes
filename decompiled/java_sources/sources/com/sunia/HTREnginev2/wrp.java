package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes5.dex */
public final /* synthetic */ class wrp implements RemoteCall {

    /* renamed from: a */
    public static final RemoteCall f88933a = new wrp();

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        ((zzaz) obj).zzK(new mgp((TaskCompletionSource) obj2));
    }
}
