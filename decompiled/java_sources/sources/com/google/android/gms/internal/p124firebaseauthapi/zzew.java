package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzuw;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zzew implements zzbh {
    private static final byte[] zza = new byte[0];
    private static final Set<String> zzb;
    private final String zzc;
    private final zzci zzd;
    private final zzbh zze;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzb = Collections.unmodifiableSet(hashSet);
    }

    @Deprecated
    private zzew(zzvc zzvcVar, zzbh zzbhVar) throws GeneralSecurityException {
        if (zzb.contains(zzvcVar.zzf())) {
            this.zzc = zzvcVar.zzf();
            this.zzd = zzcp.zza(((zzvc) ((zzaje) zzvc.zza(zzvcVar).zza(zzvs.RAW).zzf())).m22248a_());
            this.zze = zzbhVar;
        } else {
            throw new IllegalArgumentException("Unsupported DEK key type: " + zzvcVar.zzf() + ". Only Tink AEAD key types are supported.");
        }
    }

    public static zzbh zza(zzcw zzcwVar, zzbh zzbhVar) throws GeneralSecurityException {
        try {
            return new zzew(zzvc.zza(zzcp.zza(zzcwVar), zzaiq.zza()), zzbhVar);
        } catch (zzajk e) {
            throw new GeneralSecurityException(e);
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zzb(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        zzbu zza2 = zzni.zza().zza(this.zzd, (Integer) null);
        byte[] zzb2 = this.zze.zzb(((zzou) zzns.zza().zza(zza2, zzou.class, zzbr.zza())).zzd().zzf(), zza);
        byte[] zzb3 = ((zzbh) zznp.zza().zza((zznp) zza2, zzbh.class)).zzb(bArr, bArr2);
        return ByteBuffer.allocate(zzb2.length + 4 + zzb3.length).putInt(zzb2.length).put(zzb2).put(zzb3).array();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzbh
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt();
            if (i > 0 && i <= bArr.length - 4) {
                byte[] bArr3 = new byte[i];
                wrap.get(bArr3, 0, i);
                byte[] bArr4 = new byte[wrap.remaining()];
                wrap.get(bArr4, 0, wrap.remaining());
                return ((zzbh) zznp.zza().zza((zznp) zzns.zza().zza((zzns) zzou.zza(this.zzc, zzaho.zza(this.zze.zza(bArr3, zza)), zzuw.zzb.SYMMETRIC, zzvs.RAW, null), zzbr.zza()), zzbh.class)).zza(bArr4, bArr2);
            }
            throw new GeneralSecurityException("invalid ciphertext");
        } catch (IndexOutOfBoundsException | NegativeArraySizeException | BufferUnderflowException e) {
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}
