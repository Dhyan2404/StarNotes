package com.sunia.HTREnginev2;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.api.internal.zabe;

/* loaded from: classes5.dex */
public final class x9p implements ResultCallback {

    /* renamed from: a */
    public final /* synthetic */ StatusPendingResult f89416a;

    /* renamed from: b */
    public final /* synthetic */ boolean f89417b;

    /* renamed from: c */
    public final /* synthetic */ GoogleApiClient f89418c;

    /* renamed from: d */
    public final /* synthetic */ zabe f89419d;

    public x9p(zabe zabeVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.f89419d = zabeVar;
        this.f89416a = statusPendingResult;
        this.f89417b = z;
        this.f89418c = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* bridge */ /* synthetic */ void onResult(@NonNull Result result) {
        Context context;
        Status status = (Status) result;
        context = this.f89419d.f29211f;
        Storage.getInstance(context).zac();
        if (status.isSuccess() && this.f89419d.isConnected()) {
            zabe zabeVar = this.f89419d;
            zabeVar.disconnect();
            zabeVar.connect();
        }
        this.f89416a.setResult(status);
        if (this.f89417b) {
            this.f89418c.disconnect();
        }
    }
}
