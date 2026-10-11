package com.sunia.HTREnginev2;

import android.app.Dialog;
import com.google.android.gms.common.api.internal.RunnableC5060h;
import com.google.android.gms.common.api.internal.zabw;

/* loaded from: classes5.dex */
public final class obp extends zabw {

    /* renamed from: a */
    public final /* synthetic */ Dialog f79547a;

    /* renamed from: b */
    public final /* synthetic */ RunnableC5060h f79548b;

    public obp(RunnableC5060h runnableC5060h, Dialog dialog) {
        this.f79548b = runnableC5060h;
        this.f79547a = dialog;
    }

    @Override // com.google.android.gms.common.api.internal.zabw
    public final void zaa() {
        this.f79548b.f29176f.m22131b();
        if (this.f79547a.isShowing()) {
            this.f79547a.dismiss();
        }
    }
}
