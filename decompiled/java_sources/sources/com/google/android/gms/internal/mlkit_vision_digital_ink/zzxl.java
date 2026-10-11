package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzxl extends BroadcastReceiver {
    final /* synthetic */ zzxs zza;

    public zzxl(zzxs zzxsVar) {
        this.zza = zzxsVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            this.zza.zzj();
        }
    }
}
