package com.google.android.recaptcha.internal;

import com.sunia.HTREnginev2.C14063lv;
import java.util.TimerTask;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes6.dex */
public final class zzbj extends TimerTask {
    final /* synthetic */ zzbm zza;

    public zzbj(zzbm zzbmVar) {
        this.zza = zzbmVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        CoroutineScope coroutineScope;
        zzbm zzbmVar = this.zza;
        coroutineScope = zzbmVar.zzd;
        C14063lv.m55522f(coroutineScope, null, null, new zzbk(zzbmVar, null), 3, null);
    }
}
