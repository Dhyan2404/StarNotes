package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.internal.p124firebaseauthapi.zzjo;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;

/* loaded from: classes5.dex */
public final class zzwl implements zzbs {
    private final zzwo zzd;
    private final String zze;
    private final byte[] zzf;
    private final zzwt zzg;
    private final zzwj zzh;
    private final byte[] zzi;
    private static final byte[] zzc = new byte[0];
    static final zzmh<zzwq, zzjo.zzb> zza = zzmh.zza().zza(zzwq.NIST_P256, zzjo.zzb.zza).zza(zzwq.NIST_P384, zzjo.zzb.zzb).zza(zzwq.NIST_P521, zzjo.zzb.zzc).zza();
    static final zzmh<zzwt, zzjo.zzc> zzb = zzmh.zza().zza(zzwt.UNCOMPRESSED, zzjo.zzc.zzb).zza(zzwt.COMPRESSED, zzjo.zzc.zza).zza(zzwt.DO_NOT_USE_CRUNCHY_UNCOMPRESSED, zzjo.zzc.zzc).zza();

    private zzwl(ECPublicKey eCPublicKey, byte[] bArr, String str, zzwt zzwtVar, zzwj zzwjVar, byte[] bArr2) throws GeneralSecurityException {
        zzmf.zza(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        this.zzd = new zzwo(eCPublicKey);
        this.zzf = bArr;
        this.zze = str;
        this.zzg = zzwtVar;
        this.zzh = zzwjVar;
        this.zzi = bArr2;
    }

    public static zzbs zza(zzjt zzjtVar) throws GeneralSecurityException {
        zzwq zza2 = zza.zza((zzmh<zzwq, zzjo.zzb>) zzjtVar.zzb().zzd());
        byte[] byteArray = zzjtVar.zze().getAffineX().toByteArray();
        byte[] byteArray2 = zzjtVar.zze().getAffineY().toByteArray();
        ECParameterSpec zza3 = zzwr.zza(zza2);
        ECPoint eCPoint = new ECPoint(new BigInteger(1, byteArray), new BigInteger(1, byteArray2));
        zzmf.zza(eCPoint, zza3.getCurve());
        ECPublicKey eCPublicKey = (ECPublicKey) zzwv.zze.zza("EC").generatePublic(new ECPublicKeySpec(eCPoint, zza3));
        byte[] bArr = new byte[0];
        if (zzjtVar.zzb().zzh() != null) {
            bArr = zzjtVar.zzb().zzh().zzb();
        }
        return new zzwl(eCPublicKey, bArr, zza(zzjtVar.zzb().zze()), zzb.zza((zzmh<zzwt, zzjo.zzc>) zzjtVar.zzb().zzf()), zza(zzjtVar.zzb().zzb()), zzjtVar.zzc().zzb());
    }

    public static zzwj zza(zzci zzciVar) throws GeneralSecurityException {
        if (zzciVar instanceof zzdz) {
            return new zzwk((zzdz) zzciVar);
        }
        if (zzciVar instanceof zzdg) {
            return new zzwn((zzdg) zzciVar);
        }
        if (zzciVar instanceof zzis) {
            return new zzwm((zzis) zzciVar);
        }
        throw new GeneralSecurityException("Unsupported parameters for Ecies: " + String.valueOf(zzciVar));
    }

    public static final String zza(zzjo.zzd zzdVar) throws GeneralSecurityException {
        if (zzdVar.equals(zzjo.zzd.zza)) {
            return "HmacSha1";
        }
        if (zzdVar.equals(zzjo.zzd.zzb)) {
            return "HmacSha224";
        }
        if (zzdVar.equals(zzjo.zzd.zzc)) {
            return "HmacSha256";
        }
        if (zzdVar.equals(zzjo.zzd.zzd)) {
            return "HmacSha384";
        }
        if (zzdVar.equals(zzjo.zzd.zze)) {
            return "HmacSha512";
        }
        throw new GeneralSecurityException("hash unsupported for EciesAeadHkdf: " + String.valueOf(zzdVar));
    }
}
