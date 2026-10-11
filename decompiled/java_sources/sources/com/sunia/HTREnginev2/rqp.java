package com.sunia.HTREnginev2;

import com.google.android.gms.measurement.internal.zznv;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public final class rqp implements vkp {

    /* renamed from: a */
    public final /* synthetic */ String f83387a;

    /* renamed from: b */
    public final /* synthetic */ List f83388b;

    /* renamed from: c */
    public final /* synthetic */ zznv f83389c;

    public rqp(zznv zznvVar, String str, List list) {
        this.f83387a = str;
        this.f83388b = list;
        this.f83389c = zznvVar;
    }

    @Override // com.sunia.HTREnginev2.vkp
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f83389c.m22624E(true, i, th, bArr, this.f83387a, this.f83388b);
    }
}
