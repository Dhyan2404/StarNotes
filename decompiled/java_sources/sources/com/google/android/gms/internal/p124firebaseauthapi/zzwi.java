package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzwi implements zzbp {
    private static final byte[] zza = new byte[0];
    private final ECPrivateKey zzb;
    private final zzwp zzc;
    private final String zzd;
    private final byte[] zze;
    private final zzwt zzf;
    private final zzwj zzg;
    private final byte[] zzh;

    private zzwi(ECPrivateKey eCPrivateKey, byte[] bArr, String str, zzwt zzwtVar, zzwj zzwjVar, byte[] bArr2) throws GeneralSecurityException {
        this.zzb = eCPrivateKey;
        this.zzc = new zzwp(eCPrivateKey);
        this.zze = bArr;
        this.zzd = str;
        this.zzf = zzwtVar;
        this.zzg = zzwjVar;
        this.zzh = bArr2;
    }

    public static zzbp zza(zzju zzjuVar) throws GeneralSecurityException {
        ECPrivateKey zza2 = zzwr.zza(zzwl.zza.zza((zzmh<zzwq, zzjo.zzb>) zzjuVar.zzc().zzd()), zzmd.zza(zzjuVar.zze().zza(zzbr.zza())));
        byte[] bArr = new byte[0];
        if (zzjuVar.zzc().zzh() != null) {
            bArr = zzjuVar.zzc().zzh().zzb();
        }
        return new zzwi(zza2, bArr, zzwl.zza(zzjuVar.zzc().zze()), zzwl.zzb.zza((zzmh<zzwt, zzjo.zzc>) zzjuVar.zzc().zzf()), zzwl.zza(zzjuVar.zzc().zzb()), zzjuVar.zzg().zzb());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final byte[] zzb(byte[] r10, byte[] r11) throws java.security.GeneralSecurityException {
        /*
            r9 = this;
            java.security.interfaces.ECPrivateKey r0 = r9.zzb
            java.security.spec.ECParameterSpec r0 = r0.getParams()
            java.security.spec.EllipticCurve r0 = r0.getCurve()
            com.google.android.gms.internal.firebase-auth-api.zzwt r1 = r9.zzf
            int r0 = com.google.android.gms.internal.p124firebaseauthapi.zzwr.zza(r0)
            int r1 = r1.ordinal()
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L27
            if (r1 != r2) goto L1e
            int r0 = r0 * r2
            goto L28
        L1e:
            java.security.GeneralSecurityException r9 = new java.security.GeneralSecurityException
            java.lang.String r10 = "unknown EC point format"
            r9.<init>(r10)
            throw r9
        L26:
            int r0 = r0 * r2
        L27:
            int r0 = r0 + r3
        L28:
            int r1 = r10.length
            if (r1 < r0) goto L55
            r1 = 0
            byte[] r3 = java.util.Arrays.copyOfRange(r10, r1, r0)
            com.google.android.gms.internal.firebase-auth-api.zzwp r2 = r9.zzc
            java.lang.String r4 = r9.zzd
            byte[] r5 = r9.zze
            com.google.android.gms.internal.firebase-auth-api.zzwj r1 = r9.zzg
            int r7 = r1.zza()
            com.google.android.gms.internal.firebase-auth-api.zzwt r8 = r9.zzf
            r6 = r11
            byte[] r11 = r2.zza(r3, r4, r5, r6, r7, r8)
            com.google.android.gms.internal.firebase-auth-api.zzwj r9 = r9.zzg
            com.google.android.gms.internal.firebase-auth-api.zzlx r9 = r9.zza(r11)
            int r11 = r10.length
            byte[] r10 = java.util.Arrays.copyOfRange(r10, r0, r11)
            byte[] r11 = com.google.android.gms.internal.p124firebaseauthapi.zzwi.zza
            byte[] r9 = r9.zza(r10, r11)
            return r9
        L55:
            java.security.GeneralSecurityException r9 = new java.security.GeneralSecurityException
            java.lang.String r10 = "ciphertext too short"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzwi.zzb(byte[], byte[]):byte[]");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbp
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.zzh;
        if (bArr3.length == 0) {
            return zzb(bArr, bArr2);
        }
        if (zzph.zza(bArr3, bArr)) {
            return zzb(Arrays.copyOfRange(bArr, this.zzh.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Invalid ciphertext (output prefix mismatch)");
    }
}
