package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbti extends zzbtm {
    private final byte[] zza;
    private final int zzb;
    private int zzc;

    public zzbti(byte[] bArr, int i, int i2) {
        super(null);
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i3 = i + i2;
        int length = bArr.length;
        if ((i | i2 | (length - i3)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        this.zza = bArr;
        this.zzc = i;
        this.zzb = i3;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzW() {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzX(byte b) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i = this.zzc;
            this.zzc = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzY(int i, boolean z) throws IOException {
        zzx(i << 3);
        zzX(z ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzZ(byte[] bArr, int i, int i2) throws IOException {
        zzx(i2);
        zze(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbso
    public final void zza(byte[] bArr, int i, int i2) throws IOException {
        zze(bArr, 0, i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final int zzb() {
        return this.zzb - this.zzc;
    }

    public final void zze(byte[] bArr, int i, int i2) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zza, this.zzc, i2);
            this.zzc += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), Integer.valueOf(i2)), e);
        }
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
        zzx((i << 3) | 5);
        zzk(i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzk(int i) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i2 = this.zzc;
            int i3 = i2 + 1;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.zzc = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzl(int i, long j) throws IOException {
        zzx((i << 3) | 1);
        zzm(j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzm(long j) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i = this.zzc;
            int i2 = i + 1;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i2 + 1;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.zzc = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzn(int i, int i2) throws IOException {
        zzx(i << 3);
        zzo(i2);
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
        int i = this.zzc;
        try {
            int zzM = zzbtm.zzM(str.length() * 3);
            int zzM2 = zzbtm.zzM(str.length());
            if (zzM2 != zzM) {
                zzx(zzbxr.zzc(str));
                byte[] bArr = this.zza;
                int i2 = this.zzc;
                this.zzc = zzbxr.zzb(str, bArr, i2, this.zzb - i2);
                return;
            }
            int i3 = i + zzM2;
            this.zzc = i3;
            int zzb = zzbxr.zzb(str, this.zza, i3, this.zzb - i3);
            this.zzc = i;
            zzx((zzb - i) - zzM2);
            this.zzc = zzb;
        } catch (zzbxq e) {
            this.zzc = i;
            zzS(str, e);
        } catch (IndexOutOfBoundsException e2) {
            throw new zzbtj(e2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzv(int i, int i2) throws IOException {
        zzx((i << 3) | i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzw(int i, int i2) throws IOException {
        zzx(i << 3);
        zzx(i2);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzx(int i) throws IOException {
        while ((i & (-128)) != 0) {
            try {
                byte[] bArr = this.zza;
                int i2 = this.zzc;
                this.zzc = i2 + 1;
                bArr[i2] = (byte) ((i & 127) | 128);
                i >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
            }
        }
        byte[] bArr2 = this.zza;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        bArr2[i3] = (byte) i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzy(int i, long j) throws IOException {
        zzx(i << 3);
        zzz(j);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtm
    public final void zzz(long j) throws IOException {
        boolean z;
        z = zzbtm.zzb;
        if (z && this.zzb - this.zzc >= 10) {
            while ((j & (-128)) != 0) {
                byte[] bArr = this.zza;
                int i = this.zzc;
                this.zzc = i + 1;
                zzbxm.zzn(bArr, i, (byte) ((((int) j) & 127) | 128));
                j >>>= 7;
            }
            byte[] bArr2 = this.zza;
            int i2 = this.zzc;
            this.zzc = i2 + 1;
            zzbxm.zzn(bArr2, i2, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                byte[] bArr3 = this.zza;
                int i3 = this.zzc;
                this.zzc = i3 + 1;
                bArr3[i3] = (byte) ((((int) j) & 127) | 128);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new zzbtj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e);
            }
        }
        byte[] bArr4 = this.zza;
        int i4 = this.zzc;
        this.zzc = i4 + 1;
        bArr4[i4] = (byte) j;
    }
}
