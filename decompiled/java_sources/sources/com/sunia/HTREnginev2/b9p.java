package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.moduleinstall.InstallStatusListener;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;

/* loaded from: classes5.dex */
public final class b9p implements ListenerHolder.Notifier {

    /* renamed from: a */
    public final /* synthetic */ ModuleInstallStatusUpdate f65561a;

    public b9p(c9p c9pVar, ModuleInstallStatusUpdate moduleInstallStatusUpdate) {
        this.f65561a = moduleInstallStatusUpdate;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        ((InstallStatusListener) obj).onInstallStatusUpdated(this.f65561a);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
    }
}
