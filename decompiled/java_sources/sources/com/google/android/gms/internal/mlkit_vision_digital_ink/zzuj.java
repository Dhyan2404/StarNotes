package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzuj {
    private static final char[] zza = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String zza(String str) {
        MessageDigest zze = zze("SHA1");
        if (zze == null) {
            return "";
        }
        byte[] bytes = str.getBytes();
        zze.update(bytes, 0, bytes.length);
        return zzd(zze.digest());
    }

    public static String zzb(zzyg zzygVar, Uri uri) {
        String zzd;
        try {
            InputStream inputStream = (InputStream) zzygVar.zzc(uri, zzaab.zza());
            try {
                MessageDigest zze = zze("SHA1");
                if (zze == null) {
                    zzd = "";
                } else {
                    byte[] bArr = new byte[8192];
                    for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                        zze.update(bArr, 0, read);
                    }
                    zzd = zzd(zze.digest());
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return zzd;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                        } catch (Exception unused) {
                        }
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
            zzuw.zzi("%s: Failed to open file, uri = %s", "FileValidator", uri);
            return "";
        }
    }

    public static void zzc(zzyg zzygVar, zzck zzckVar, Uri uri, String str) throws zzbj {
        try {
            if (!zzygVar.zzi(uri)) {
                zzuw.zzg("%s: Downloaded file %s is not present at %s", "FileValidator", zzvu.zze(zzckVar), uri);
                zzbg zzbgVar = new zzbg();
                zzbgVar.zzb(zzbh.DOWNLOADED_FILE_NOT_FOUND_ERROR);
                throw zzbgVar.zze();
            }
            if (zzckVar.zzz() == 2 || zzb(zzygVar, uri).equals(str)) {
                return;
            }
            zzuw.zzg("%s: Downloaded file at uri = %s, checksum = %s verification failed", "FileValidator", uri, str);
            zzbg zzbgVar2 = new zzbg();
            zzbgVar2.zzb(zzbh.DOWNLOADED_FILE_CHECKSUM_MISMATCH_ERROR);
            throw zzbgVar2.zze();
        } catch (IOException e) {
            zzuw.zzj(e, "%s: Failed to validate download file %s", "FileValidator", zzvu.zze(zzckVar));
            zzbg zzbgVar3 = new zzbg();
            zzbgVar3.zzb(zzbh.UNABLE_TO_VALIDATE_DOWNLOAD_FILE_ERROR);
            zzbgVar3.zza(e);
            throw zzbgVar3.zze();
        }
    }

    private static String zzd(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i = 0;
        for (byte b : bArr) {
            int i2 = b & 255;
            int i3 = i + 1;
            char[] cArr2 = zza;
            cArr[i] = cArr2[i2 >>> 4];
            cArr[i3] = cArr2[i2 & 15];
            i = i3 + 1;
        }
        return new String(cArr);
    }

    @Nullable
    private static MessageDigest zze(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            if (messageDigest != null) {
                return messageDigest;
            }
            return null;
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
