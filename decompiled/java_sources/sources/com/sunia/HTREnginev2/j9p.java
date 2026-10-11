package com.sunia.HTREnginev2;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zabf;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;

/* loaded from: classes5.dex */
public final class j9p extends aap {

    /* renamed from: b */
    public final /* synthetic */ ConnectionResult f74085b;

    /* renamed from: c */
    public final /* synthetic */ l9p f74086c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j9p(l9p l9pVar, zabf zabfVar, ConnectionResult connectionResult) {
        super(zabfVar);
        this.f74086c = l9pVar;
        this.f74085b = connectionResult;
    }

    @Override // com.sunia.HTREnginev2.aap
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: a */
    public final void mo22026a() {
        this.f74086c.f76269g.m22060d(this.f74085b);
    }
}
