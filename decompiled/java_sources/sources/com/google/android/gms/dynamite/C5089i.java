package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* renamed from: com.google.android.gms.dynamite.i */
/* loaded from: classes5.dex */
public final class C5089i implements DynamiteModule.VersionPolicy.IVersions {

    /* renamed from: a */
    public final int f29534a;

    public C5089i(int i, int i2) {
        this.f29534a = i;
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.IVersions
    public final int zza(Context context, String str) {
        return this.f29534a;
    }

    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy.IVersions
    public final int zzb(Context context, String str, boolean z) {
        return 0;
    }
}
