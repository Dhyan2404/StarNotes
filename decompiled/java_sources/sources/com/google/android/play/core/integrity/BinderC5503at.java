package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractBinderC5562j;

/* renamed from: com.google.android.play.core.integrity.at */
/* loaded from: classes6.dex */
class BinderC5503at extends AbstractBinderC5562j {

    /* renamed from: a */
    final TaskCompletionSource f33404a;

    /* renamed from: b */
    final /* synthetic */ C5507ax f33405b;

    public BinderC5503at(C5507ax c5507ax, TaskCompletionSource taskCompletionSource) {
        this.f33405b = c5507ax;
        this.f33404a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: b */
    public final void mo25674b(Bundle bundle) throws RemoteException {
        this.f33405b.f33409a.m25722v(this.f33404a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: c */
    public void mo25675c(Bundle bundle) throws RemoteException {
        this.f33405b.f33409a.m25722v(this.f33404a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: d */
    public final void mo25676d(Bundle bundle) throws RemoteException {
        this.f33405b.f33409a.m25722v(this.f33404a);
    }

    @Override // com.google.android.play.integrity.internal.InterfaceC5563k
    /* renamed from: e */
    public void mo25677e(Bundle bundle) throws RemoteException {
        this.f33405b.f33409a.m25722v(this.f33404a);
    }
}
