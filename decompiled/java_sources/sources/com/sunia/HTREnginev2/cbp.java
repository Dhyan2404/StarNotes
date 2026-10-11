package com.sunia.HTREnginev2;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* loaded from: classes5.dex */
public final class cbp extends com.google.android.gms.common.internal.zag {

    /* renamed from: e */
    public final /* synthetic */ Intent f66679e;

    /* renamed from: f */
    public final /* synthetic */ LifecycleFragment f66680f;

    public cbp(Intent intent, LifecycleFragment lifecycleFragment, int i) {
        this.f66679e = intent;
        this.f66680f = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void zaa() {
        Intent intent = this.f66679e;
        if (intent != null) {
            this.f66680f.startActivityForResult(intent, 2);
        }
    }
}
