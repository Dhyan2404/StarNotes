package com.google.android.gms.internal.p124firebaseauthapi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaeb extends BroadcastReceiver {
    private final String zza;
    private final /* synthetic */ zzadx zzb;

    public zzaeb(zzadx zzadxVar, String str) {
        this.zzb = zzadxVar;
        this.zza = str;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        HashMap hashMap;
        Logger logger;
        Logger logger2;
        if (SmsRetriever.SMS_RETRIEVED_ACTION.equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            if (((Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS")).getStatusCode() == 0) {
                String str = (String) extras.get(SmsRetriever.EXTRA_SMS_MESSAGE);
                hashMap = this.zzb.zzd;
                zzaea zzaeaVar = (zzaea) hashMap.get(this.zza);
                if (zzaeaVar == null) {
                    logger2 = zzadx.zza;
                    logger2.m22191e("Verification code received with no active retrieval session.", new Object[0]);
                } else {
                    String zza = zzadx.zza(str);
                    zzaeaVar.zze = zza;
                    if (zza == null) {
                        logger = zzadx.zza;
                        logger.m22191e("Unable to extract verification code.", new Object[0]);
                    } else if (!zzah.zzc(zzaeaVar.zzd)) {
                        zzadx.zza(this.zzb, this.zza);
                    }
                }
            }
            context.getApplicationContext().unregisterReceiver(this);
        }
    }
}
