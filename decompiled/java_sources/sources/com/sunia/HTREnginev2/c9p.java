package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;

/* loaded from: classes5.dex */
public final class c9p extends com.google.android.gms.common.moduleinstall.internal.zag {

    /* renamed from: a */
    public final ListenerHolder f66635a;

    public c9p(ListenerHolder listenerHolder) {
        this.f66635a = listenerHolder;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zah
    public final void zab(ModuleInstallStatusUpdate moduleInstallStatusUpdate) {
        this.f66635a.notifyListener(new b9p(this, moduleInstallStatusUpdate));
    }
}
