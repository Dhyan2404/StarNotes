package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.dropbox.core.util.StringUtil;

/* loaded from: classes5.dex */
public abstract class zzaoz {
    private static final zzaoz zza = new zzaow("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');
    private static final zzaoz zzb = new zzaow("base64Url()", StringUtil.UrlSafeBase64Digits, '=');
    private static final zzaoz zzc = new zzaoy("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
    private static final zzaoz zzd = new zzaoy("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final zzaoz zze = new zzaov("base16()", "0123456789ABCDEF");

    public static zzaoz zzf() {
        return zze;
    }

    public abstract int zza(byte[] bArr, CharSequence charSequence) throws zzaox;

    public abstract int zzc(int i);

    public abstract zzaoz zzd();

    public CharSequence zze(CharSequence charSequence) {
        throw null;
    }

    public final byte[] zzg(CharSequence charSequence) {
        try {
            CharSequence zze2 = zze(charSequence);
            int zzc2 = zzc(zze2.length());
            byte[] bArr = new byte[zzc2];
            int zza2 = zza(bArr, zze2);
            if (zza2 == zzc2) {
                return bArr;
            }
            byte[] bArr2 = new byte[zza2];
            System.arraycopy(bArr, 0, bArr2, 0, zza2);
            return bArr2;
        } catch (zzaox e) {
            throw new IllegalArgumentException(e);
        }
    }
}
