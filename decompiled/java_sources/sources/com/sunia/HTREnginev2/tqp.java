package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;
import com.google.android.gms.measurement.internal.zzoj;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class tqp implements vkp {

    /* renamed from: a */
    public final /* synthetic */ String f85662a;

    /* renamed from: b */
    public final /* synthetic */ zzoj f85663b;

    /* renamed from: c */
    public final /* synthetic */ zznv f85664c;

    public tqp(zznv zznvVar, String str, zzoj zzojVar) {
        this.f85662a = str;
        this.f85663b = zzojVar;
        this.f85664c = zznvVar;
    }

    @Override // com.sunia.HTREnginev2.vkp
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f85664c.m22674v(this.f85662a, i, th, bArr, this.f85663b);
    }
}
