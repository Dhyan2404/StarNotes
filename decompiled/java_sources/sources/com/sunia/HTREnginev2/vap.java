package com.sunia.HTREnginev2;

import android.app.Activity;
import android.content.Intent;

/* loaded from: classes5.dex */
public final class vap extends com.google.android.gms.common.internal.zag {

    /* renamed from: e */
    public final /* synthetic */ Intent f87316e;

    /* renamed from: f */
    public final /* synthetic */ Activity f87317f;

    /* renamed from: g */
    public final /* synthetic */ int f87318g;

    public vap(Intent intent, Activity activity, int i) {
        this.f87316e = intent;
        this.f87317f = activity;
        this.f87318g = i;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.f87316e;
        if (intent != null) {
            this.f87317f.startActivityForResult(intent, this.f87318g);
        }
    }
}
