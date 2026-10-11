package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.mbp;
import com.sunia.HTREnginev2.obp;

/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes5.dex */
public final class RunnableC5060h implements Runnable {

    /* renamed from: e */
    public final mbp f29175e;

    /* renamed from: f */
    public final /* synthetic */ zap f29176f;

    public RunnableC5060h(zap zapVar, mbp mbpVar) {
        this.f29176f = zapVar;
        this.f29175e = mbpVar;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f29176f.zaa) {
            ConnectionResult m55587b = this.f29175e.m55587b();
            if (m55587b.hasResolution()) {
                zap zapVar = this.f29176f;
                zapVar.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(zapVar.getActivity(), (PendingIntent) Preconditions.checkNotNull(m55587b.getResolution()), this.f29175e.m55586a(), false), 1);
                return;
            }
            zap zapVar2 = this.f29176f;
            if (zapVar2.zac.getErrorResolutionIntent(zapVar2.getActivity(), m55587b.getErrorCode(), null) != null) {
                zap zapVar3 = this.f29176f;
                zapVar3.zac.zag(zapVar3.getActivity(), zapVar3.mLifecycleFragment, m55587b.getErrorCode(), 2, this.f29176f);
                return;
            }
            if (m55587b.getErrorCode() != 18) {
                this.f29176f.m22130a(m55587b, this.f29175e.m55586a());
                return;
            }
            zap zapVar4 = this.f29176f;
            Dialog zab = zapVar4.zac.zab(zapVar4.getActivity(), zapVar4);
            zap zapVar5 = this.f29176f;
            zapVar5.zac.zac(zapVar5.getActivity().getApplicationContext(), new obp(this, zab));
        }
    }
}
