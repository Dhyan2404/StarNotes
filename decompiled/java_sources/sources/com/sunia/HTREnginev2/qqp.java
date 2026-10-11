package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;
import com.google.android.gms.measurement.internal.zzoj;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class qqp implements vkp {

    /* renamed from: a */
    public final /* synthetic */ String f82341a;

    /* renamed from: b */
    public final /* synthetic */ zzoj f82342b;

    /* renamed from: c */
    public final /* synthetic */ zznv f82343c;

    public qqp(zznv zznvVar, String str, zzoj zzojVar) {
        this.f82341a = str;
        this.f82342b = zzojVar;
        this.f82343c = zznvVar;
    }

    @Override // com.sunia.HTREnginev2.vkp
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f82343c.m22674v(this.f82341a, i, th, bArr, this.f82342b);
    }
}
