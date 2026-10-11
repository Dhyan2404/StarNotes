package com.google.android.gms.internal.p124firebaseauthapi;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes5.dex */
public final /* synthetic */ class zzacl {
    public static String zza(zzacm zzacmVar, String str) {
        try {
            String str2 = new String(MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(str.getBytes()));
            int length = str2.length();
            int i = 0;
            while (i < length) {
                if (zzk.zza(str2.charAt(i))) {
                    char[] charArray = str2.toCharArray();
                    while (i < length) {
                        char c = charArray[i];
                        if (zzk.zza(c)) {
                            charArray[i] = (char) (c ^ ' ');
                        }
                        i++;
                    }
                    return String.valueOf(charArray);
                }
                i++;
            }
            return str2;
        } catch (NoSuchAlgorithmException unused) {
            zzacm.zza.m22191e("Failed to get SHA-256 MessageDigest", new Object[0]);
            return null;
        }
    }

    public static void zzb(zzacm zzacmVar, String str) {
        zzacmVar.zza(str, null);
    }
}
