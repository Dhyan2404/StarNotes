package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class oqp implements vkp {

    /* renamed from: a */
    public final /* synthetic */ String f80053a;

    /* renamed from: b */
    public final /* synthetic */ List f80054b;

    /* renamed from: c */
    public final /* synthetic */ zznv f80055c;

    public oqp(zznv zznvVar, String str, List list) {
        this.f80053a = str;
        this.f80054b = list;
        this.f80055c = zznvVar;
    }

    @Override // com.sunia.HTREnginev2.vkp
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f80055c.m22624E(true, i, th, bArr, this.f80053a, this.f80054b);
    }
}
