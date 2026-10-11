package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.accounts.AccountManager;
import android.content.Context;

/* loaded from: classes5.dex */
public final class zzga {
    private final String zza;
    private final AccountManager zzb;

    public zzga(Context context) {
        this.zza = context.getPackageName();
        this.zzb = AccountManager.get(context);
    }
}
