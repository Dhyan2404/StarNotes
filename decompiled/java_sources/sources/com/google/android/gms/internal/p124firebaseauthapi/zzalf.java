package com.google.android.gms.internal.p124firebaseauthapi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzalf implements zzakn {
    private final zzakp zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzalf(zzakp zzakpVar, String str, Object[] objArr) {
        this.zza = zzakpVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.zzd = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakn
    public final zzakp zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakn
    public final zzala zzb() {
        int i = this.zzd;
        return (i & 1) != 0 ? zzala.PROTO2 : (i & 4) == 4 ? zzala.EDITIONS : zzala.PROTO3;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzakn
    public final boolean zzc() {
        return (this.zzd & 2) == 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
