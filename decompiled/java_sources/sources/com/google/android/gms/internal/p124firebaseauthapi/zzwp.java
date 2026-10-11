package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes5.dex */
public final class zzwp {
    private ECPrivateKey zza;

    public zzwp(ECPrivateKey eCPrivateKey) {
        this.zza = eCPrivateKey;
    }

    public final byte[] zza(byte[] bArr, String str, byte[] bArr2, byte[] bArr3, int i, zzwt zzwtVar) throws GeneralSecurityException {
        byte[] zza = zzwr.zza(this.zza, zzwr.zza(this.zza.getParams(), zzwtVar, bArr));
        int i2 = 1;
        byte[] zza2 = zzwh.zza(bArr, zza);
        Mac zza3 = zzwv.zzb.zza(str);
        if (i > zza3.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        if (bArr2 == null || bArr2.length == 0) {
            zza3.init(new SecretKeySpec(new byte[zza3.getMacLength()], str));
        } else {
            zza3.init(new SecretKeySpec(bArr2, str));
        }
        byte[] bArr4 = new byte[i];
        zza3.init(new SecretKeySpec(zza3.doFinal(zza2), str));
        byte[] bArr5 = new byte[0];
        int i3 = 0;
        while (true) {
            zza3.update(bArr5);
            zza3.update(bArr3);
            zza3.update((byte) i2);
            bArr5 = zza3.doFinal();
            if (bArr5.length + i3 >= i) {
                System.arraycopy(bArr5, 0, bArr4, i3, i - i3);
                return bArr4;
            }
            System.arraycopy(bArr5, 0, bArr4, i3, bArr5.length);
            i3 += bArr5.length;
            i2++;
        }
    }
}
