package com.sunia.HTREnginev2;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zabf;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;

/* loaded from: classes5.dex */
public final class k9p extends aap {

    /* renamed from: b */
    public final /* synthetic */ BaseGmsClient.ConnectionProgressReportCallbacks f75220b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k9p(l9p l9pVar, zabf zabfVar, BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        super(zabfVar);
        this.f75220b = connectionProgressReportCallbacks;
    }

    @Override // com.sunia.HTREnginev2.aap
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    /* renamed from: a */
    public final void mo22026a() {
        this.f75220b.onReportServiceBinding(new ConnectionResult(16, null));
    }
}
