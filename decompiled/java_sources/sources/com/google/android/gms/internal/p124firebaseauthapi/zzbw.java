package com.google.android.gms.internal.p124firebaseauthapi;

import com.tencent.cos.xml.model.tag.DomainConfiguration;

/* loaded from: classes5.dex */
public final class zzbw {
    public static final zzbw zza = new zzbw(DomainConfiguration.STATUS_ENABLED);
    public static final zzbw zzb = new zzbw(DomainConfiguration.STATUS_DISABLED);
    public static final zzbw zzc = new zzbw("DESTROYED");
    private final String zzd;

    private zzbw(String str) {
        this.zzd = str;
    }

    public final String toString() {
        return this.zzd;
    }
}
