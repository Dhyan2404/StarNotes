package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.moduleinstall.InstallStatusListener;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class wbp extends com.google.android.gms.common.moduleinstall.internal.zaa {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f88450a;

    /* renamed from: b */
    public final /* synthetic */ TaskCompletionSource f88451b;

    /* renamed from: c */
    public final /* synthetic */ InstallStatusListener f88452c;

    /* renamed from: d */
    public final /* synthetic */ zay f88453d;

    public wbp(zay zayVar, AtomicReference atomicReference, TaskCompletionSource taskCompletionSource, InstallStatusListener installStatusListener) {
        this.f88453d = zayVar;
        this.f88450a = atomicReference;
        this.f88451b = taskCompletionSource;
        this.f88452c = installStatusListener;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zad(Status status, @Nullable ModuleInstallResponse moduleInstallResponse) {
        if (moduleInstallResponse != null) {
            this.f88450a.set(moduleInstallResponse);
        }
        TaskUtil.trySetResultOrApiException(status, null, this.f88451b);
        if (!status.isSuccess() || (moduleInstallResponse != null && moduleInstallResponse.zaa())) {
            this.f88453d.doUnregisterEventListener(ListenerHolders.createListenerKey(this.f88452c, InstallStatusListener.class.getSimpleName()), 27306);
        }
    }
}
