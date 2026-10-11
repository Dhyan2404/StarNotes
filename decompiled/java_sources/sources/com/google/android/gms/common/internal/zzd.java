package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes5.dex */
public final class zzd extends zzac {

    /* renamed from: a */
    @Nullable
    public BaseGmsClient f29410a;

    /* renamed from: b */
    public final int f29411b;

    public zzd(@NonNull BaseGmsClient baseGmsClient, int i) {
        this.f29410a = baseGmsClient;
        this.f29411b = i;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void onPostInitComplete(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        Preconditions.checkNotNull(this.f29410a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f29410a.onPostInitHandler(i, iBinder, bundle, this.f29411b);
        this.f29410a = null;
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void zzb(int i, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    @BinderThread
    public final void zzc(int i, @NonNull IBinder iBinder, @NonNull zzk zzkVar) {
        BaseGmsClient baseGmsClient = this.f29410a;
        Preconditions.checkNotNull(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        Preconditions.checkNotNull(zzkVar);
        BaseGmsClient.zzj(baseGmsClient, zzkVar);
        onPostInitComplete(i, iBinder, zzkVar.zza);
    }
}
