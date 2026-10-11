package com.sunia.HTREnginev2;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;

@WorkerThread
/* loaded from: classes5.dex */
public final class ukp implements Runnable {

    /* renamed from: e */
    public final vkp f86586e;

    /* renamed from: f */
    public final int f86587f;

    /* renamed from: g */
    public final Throwable f86588g;

    /* renamed from: h */
    public final byte[] f86589h;

    /* renamed from: i */
    public final String f86590i;

    /* renamed from: j */
    public final Map<String, List<String>> f86591j;

    @Override // java.lang.Runnable
    public final void run() {
        this.f86586e.zza(this.f86590i, this.f86587f, this.f86588g, this.f86589h, this.f86591j);
    }

    public ukp(String str, vkp vkpVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.checkNotNull(vkpVar);
        this.f86586e = vkpVar;
        this.f86587f = i;
        this.f86588g = th;
        this.f86589h = bArr;
        this.f86590i = str;
        this.f86591j = map;
    }
}
