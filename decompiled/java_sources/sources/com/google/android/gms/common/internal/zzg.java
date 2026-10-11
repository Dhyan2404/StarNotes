package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.sunia.HTREnginev2.ffp;

/* loaded from: classes5.dex */
public final class zzg extends ffp {

    /* renamed from: e */
    public final /* synthetic */ BaseGmsClient f29415e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zzg(BaseGmsClient baseGmsClient, @Nullable int i, Bundle bundle) {
        super(baseGmsClient, i, null);
        this.f29415e = baseGmsClient;
    }

    @Override // com.sunia.HTREnginev2.ffp
    public final void zzb(ConnectionResult connectionResult) {
        if (this.f29415e.enableLocalFallback() && BaseGmsClient.zzo(this.f29415e)) {
            BaseGmsClient.zzk(this.f29415e, 16);
        } else {
            this.f29415e.zzc.onReportServiceBinding(connectionResult);
            this.f29415e.onConnectionFailed(connectionResult);
        }
    }

    @Override // com.sunia.HTREnginev2.ffp
    public final boolean zzd() {
        this.f29415e.zzc.onReportServiceBinding(ConnectionResult.RESULT_SUCCESS);
        return true;
    }
}
