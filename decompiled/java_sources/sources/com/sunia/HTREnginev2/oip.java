package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.firebase.auth.internal.zzan;
import com.google.firebase.auth.internal.zzby;

/* loaded from: classes6.dex */
public final class oip implements BackgroundDetector.BackgroundStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ zzby f79786a;

    public oip(zzby zzbyVar) {
        this.f79786a = zzbyVar;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void onBackgroundStateChanged(boolean z) {
        boolean m28003c;
        zzan zzanVar;
        if (z) {
            this.f79786a.f35746c = true;
            this.f79786a.zza();
            return;
        }
        this.f79786a.f35746c = false;
        m28003c = this.f79786a.m28003c();
        if (m28003c) {
            zzanVar = this.f79786a.f35745b;
            zzanVar.zzc();
        }
    }
}
