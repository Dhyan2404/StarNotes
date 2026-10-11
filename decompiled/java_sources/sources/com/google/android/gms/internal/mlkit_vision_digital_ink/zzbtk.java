package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbtk extends zzbth {
    private final OutputStream zzg;

    public zzbtk(OutputStream outputStream, int i) {
        super(i);
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.zzg = outputStream;
    }

    private final void zzU() throws IOException {
        this.zzg.write(this.zza, 0, this.zzc);
        this.zzc = 0;
    }

    private final void zzV(int i) throws IOException {
        if (this.zzb - this.zzc < i) {
            zzU();
        }
    }

    public final void zzA(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.zzb;
        int i4 = this.zzc;
        int i5 = i3 - i4;
        if (i5 >= i2) {
            System.arraycopy(bArr, 0, this.zza, i4, i2);
            this.zzc += i2;
            this.zzd += i2;
            return;
        }
        System.arraycopy(bArr, 0, this.zza, i4, i5);
        this.zzc = this.zzb;
        this.zzd += i5;
        zzU();
        int i6 = i2 - i5;
        if (i6 <= this.zzb) {
            System.arraycopy(bArr, i5, this.zza, 0, i6);
            this.zzc = i6;
        } else {
            this.zzg.write(bArr, i5, i6);
        }
        this.zzd += i6;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzW() throws IOException {
        if (this.zzc > 0) {
            zzU();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzX(byte b) throws IOException {
        if (this.zzc == this.zzb) {
            zzU();
        }
        zzc(b);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzY(int i, boolean z) throws IOException {
        zzV(11);
        zzf(i << 3);
        zzc(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzZ(byte[] bArr, int i, int i2) throws IOException {
        zzx(i2);
        zzA(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbso
    public final void zza(byte[] bArr, int i, int i2) throws IOException {
        zzA(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzh(int i, zzbsz zzbszVar) throws IOException {
        zzx((i << 3) | 2);
        zzi(zzbszVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzi(zzbsz zzbszVar) throws IOException {
        zzx(zzbszVar.zzd());
        zzbszVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzj(int i, int i2) throws IOException {
        zzV(14);
        zzf((i << 3) | 5);
        zzd(i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzk(int i) throws IOException {
        zzV(4);
        zzd(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzl(int i, long j) throws IOException {
        zzV(18);
        zzf((i << 3) | 1);
        zze(j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzm(long j) throws IOException {
        zzV(8);
        zze(j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzn(int i, int i2) throws IOException {
        zzV(20);
        zzf(i << 3);
        if (i2 >= 0) {
            zzf(i2);
        } else {
            zzg(i2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzo(int i) throws IOException {
        if (i >= 0) {
            zzx(i);
        } else {
            zzz(i);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzp(int i, zzbvu zzbvuVar, zzbwi zzbwiVar) throws IOException {
        zzx((i << 3) | 2);
        zzx(((zzbsd) zzbvuVar).zzG(zzbwiVar));
        zzbwiVar.zzj(zzbvuVar, this.zze);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzq(zzbvu zzbvuVar) throws IOException {
        zzx(zzbvuVar.zzM());
        zzbvuVar.zzaj(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzr(int i, zzbvu zzbvuVar) throws IOException {
        zzx(11);
        zzw(2, i);
        zzx(26);
        zzq(zzbvuVar);
        zzx(12);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzs(int i, zzbsz zzbszVar) throws IOException {
        zzx(11);
        zzw(2, i);
        zzh(3, zzbszVar);
        zzx(12);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzt(int i, String str) throws IOException {
        zzx((i << 3) | 2);
        zzu(str);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzu(String str) throws IOException {
        int zzc;
        try {
            int length = str.length() * 3;
            int zzM = zzbtm.zzM(length);
            int i = zzM + length;
            int i2 = this.zzb;
            if (i > i2) {
                byte[] bArr = new byte[length];
                int zzb = zzbxr.zzb(str, bArr, 0, length);
                zzx(zzb);
                zzA(bArr, 0, zzb);
                return;
            }
            if (i > i2 - this.zzc) {
                zzU();
            }
            int zzM2 = zzbtm.zzM(str.length());
            int i3 = this.zzc;
            try {
                if (zzM2 == zzM) {
                    int i4 = i3 + zzM2;
                    this.zzc = i4;
                    int zzb2 = zzbxr.zzb(str, this.zza, i4, this.zzb - i4);
                    this.zzc = i3;
                    zzc = (zzb2 - i3) - zzM2;
                    zzf(zzc);
                    this.zzc = zzb2;
                } else {
                    zzc = zzbxr.zzc(str);
                    zzf(zzc);
                    this.zzc = zzbxr.zzb(str, this.zza, this.zzc, zzc);
                }
                this.zzd += zzc;
            } catch (zzbxq e) {
                this.zzd -= this.zzc - i3;
                this.zzc = i3;
                throw e;
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new zzbtj(e2);
            }
        } catch (zzbxq e3) {
            zzS(str, e3);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzv(int i, int i2) throws IOException {
        zzx((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzw(int i, int i2) throws IOException {
        zzV(20);
        zzf(i << 3);
        zzf(i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzx(int i) throws IOException {
        zzV(5);
        zzf(i);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzy(int i, long j) throws IOException {
        zzV(20);
        zzf(i << 3);
        zzg(j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzz(long j) throws IOException {
        zzV(10);
        zzg(j);
    }
}
