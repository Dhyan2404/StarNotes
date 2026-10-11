package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.sap;
import java.lang.ref.WeakReference;

/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes5.dex */
public final class RunnableC5059g implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ Result f29173e;

    /* renamed from: f */
    public final /* synthetic */ zada f29174f;

    public RunnableC5059g(zada zadaVar, Result result) {
        this.f29174f = zadaVar;
        this.f29173e = result;
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        WeakReference weakReference;
        sap sapVar;
        sap sapVar2;
        WeakReference weakReference2;
        GoogleApiClient googleApiClient;
        ResultTransform resultTransform;
        sap sapVar3;
        sap sapVar4;
        WeakReference weakReference3;
        try {
            try {
                ThreadLocal threadLocal = BasePendingResult.zaa;
                threadLocal.set(Boolean.TRUE);
                resultTransform = this.f29174f.f29274a;
                PendingResult onSuccess = ((ResultTransform) Preconditions.checkNotNull(resultTransform)).onSuccess(this.f29173e);
                zada zadaVar = this.f29174f;
                sapVar3 = zadaVar.f29281h;
                sapVar4 = zadaVar.f29281h;
                sapVar3.sendMessage(sapVar4.obtainMessage(0, onSuccess));
                threadLocal.set(Boolean.FALSE);
                zada zadaVar2 = this.f29174f;
                zada.m22118m(this.f29173e);
                weakReference3 = this.f29174f.f29280g;
                googleApiClient = (GoogleApiClient) weakReference3.get();
                if (googleApiClient == null) {
                    return;
                }
            } catch (RuntimeException e) {
                zada zadaVar3 = this.f29174f;
                sapVar = zadaVar3.f29281h;
                sapVar2 = zadaVar3.f29281h;
                sapVar.sendMessage(sapVar2.obtainMessage(1, e));
                BasePendingResult.zaa.set(Boolean.FALSE);
                zada zadaVar4 = this.f29174f;
                zada.m22118m(this.f29173e);
                weakReference2 = this.f29174f.f29280g;
                googleApiClient = (GoogleApiClient) weakReference2.get();
                if (googleApiClient == null) {
                    return;
                }
            }
            googleApiClient.zap(this.f29174f);
        } catch (Throwable th) {
            BasePendingResult.zaa.set(Boolean.FALSE);
            zada zadaVar5 = this.f29174f;
            zada.m22118m(this.f29173e);
            weakReference = this.f29174f.f29280g;
            GoogleApiClient googleApiClient2 = (GoogleApiClient) weakReference.get();
            if (googleApiClient2 != null) {
                googleApiClient2.zap(this.f29174f);
            }
            throw th;
        }
    }
}
