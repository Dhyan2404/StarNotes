package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes5.dex */
final class zzaot extends zzaoj implements Serializable {
    private final MessageDigest zza;
    private final int zzb;
    private final boolean zzc;
    private final String zzd;

    public zzaot(String str, String str2) {
        MessageDigest zzb = zzb(MessageDigestAlgorithms.SHA_256);
        this.zza = zzb;
        this.zzb = zzb.getDigestLength();
        this.zzd = "Hashing.sha256()";
        this.zzc = zzc(zzb);
    }

    private static MessageDigest zzb(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private static boolean zzc(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    public final String toString() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaon
    public final zzaoo zza() {
        zzaor zzaorVar = null;
        if (this.zzc) {
            try {
                return new zzaos((MessageDigest) this.zza.clone(), this.zzb, zzaorVar);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new zzaos(zzb(this.zza.getAlgorithm()), this.zzb, zzaorVar);
    }
}
