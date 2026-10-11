package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class zzaib extends zzahz {
    protected final byte[] zzb;

    public zzaib(byte[] bArr) {
        super();
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaho) || zzb() != ((zzaho) obj).zzb()) {
            return false;
        }
        if (zzb() == 0) {
            return true;
        }
        if (!(obj instanceof zzaib)) {
            return obj.equals(this);
        }
        zzaib zzaibVar = (zzaib) obj;
        int zza = zza();
        int zza2 = zzaibVar.zza();
        if (zza == 0 || zza2 == 0 || zza == zza2) {
            return zza(zzaibVar, 0, zzb());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public byte zzb(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final zzaic zzc() {
        return zzaic.zza(this.zzb, zzg(), zzb(), true);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final boolean zze() {
        int zzg = zzg();
        return zzamn.zzc(this.zzb, zzg, zzb() + zzg);
    }

    public int zzg() {
        return 0;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final zzaho zza(int i, int i2) {
        int zza = zzaho.zza(0, i2, zzb());
        if (zza == 0) {
            return zzaho.zza;
        }
        return new zzahs(this.zzb, zzg(), zza);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final int zzb(int i, int i2, int i3) {
        return zzajh.zza(i, this.zzb, zzg(), i3);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public int zzb() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final String zza(Charset charset) {
        return new String(this.zzb, zzg(), zzb(), charset);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public void zza(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaho
    public final void zza(zzahp zzahpVar) throws IOException {
        zzahpVar.zza(this.zzb, zzg(), zzb());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzahz
    public final boolean zza(zzaho zzahoVar, int i, int i2) {
        if (i2 <= zzahoVar.zzb()) {
            if (i2 <= zzahoVar.zzb()) {
                if (zzahoVar instanceof zzaib) {
                    zzaib zzaibVar = (zzaib) zzahoVar;
                    byte[] bArr = this.zzb;
                    byte[] bArr2 = zzaibVar.zzb;
                    int zzg = zzg() + i2;
                    int zzg2 = zzg();
                    int zzg3 = zzaibVar.zzg();
                    while (zzg2 < zzg) {
                        if (bArr[zzg2] != bArr2[zzg3]) {
                            return false;
                        }
                        zzg2++;
                        zzg3++;
                    }
                    return true;
                }
                return zzahoVar.zza(0, i2).equals(zza(0, i2));
            }
            throw new IllegalArgumentException("Ran off end of other: 0, " + i2 + ", " + zzahoVar.zzb());
        }
        throw new IllegalArgumentException("Length too large: " + i2 + zzb());
    }
}
