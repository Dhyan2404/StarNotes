package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes5.dex */
public final class zzvl {
    public static void zza(Context context, String str, Uri uri, zzcr zzcrVar, zzck zzckVar, zzyg zzygVar, boolean z) throws zzvk {
        String str2;
        int i;
        str2 = "";
        try {
            Uri zzb = zzvm.zzb(context, str);
            InputStream inputStream = (InputStream) zzygVar.zzc(uri, zzaab.zza());
            try {
                OutputStream outputStream = (OutputStream) zzygVar.zzc(zzb, zzaae.zza());
                try {
                    zzapb.zza(inputStream, outputStream);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    i = 0;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } finally {
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    }
                }
                throw th;
            }
        } catch (zzzi unused) {
            zzuw.zzg("%s: Failed to share after download for file %s, file group %s due to LimitExceededException", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            str2 = String.format("System limit exceeded for file %s, group %s", zzckVar.zzm(), zzcrVar.zzq());
            i = 25;
        } catch (zzzk unused2) {
            zzuw.zzg("%s: Malformed lease uri file %s, file group %s", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            str2 = String.format("Malformed blob Uri for file %s, group %s", zzckVar.zzm(), zzcrVar.zzq());
            i = 17;
        } catch (zzzm e) {
            str2 = TextUtils.isEmpty(e.getMessage()) ? "" : e.getMessage();
            zzuw.zzl("%s: Failed to share after download for file %s, file group %s. UnsupportedFileStorageOperation was thrown with message \"%s\"", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq(), str2);
            str2 = "UnsupportedFileStorageOperation was thrown: ".concat(String.valueOf(str2));
            i = 24;
        } catch (IOException unused3) {
            zzuw.zzg("%s: Failed to copy to the blobstore after download for file %s, file group %s", "AndroidSharingUtil", zzckVar.zzm(), zzcrVar.zzq());
            i = true != z ? 21 : 22;
            str2 = String.format("Error while copying file %s, group %s, to the shared blob storage", zzckVar.zzm(), zzcrVar.zzq());
        }
        if (i != 0) {
            throw new zzvk(i, str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzb(android.content.Context r4, java.lang.String r5, com.google.android.gms.internal.mlkit_vision_digital_ink.zzcr r6, com.google.android.gms.internal.mlkit_vision_digital_ink.zzck r7, com.google.android.gms.internal.mlkit_vision_digital_ink.zzyg r8) throws com.google.android.gms.internal.mlkit_vision_digital_ink.zzvk {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "AndroidSharingUtil"
            r2 = 0
            android.net.Uri r4 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzvm.zzb(r4, r5)     // Catch: java.io.IOException -> Lf com.google.android.gms.internal.mlkit_vision_digital_ink.zzzk -> L35 com.google.android.gms.internal.mlkit_vision_digital_ink.zzzm -> L5e
            boolean r4 = r8.zzi(r4)     // Catch: java.io.IOException -> Lf com.google.android.gms.internal.mlkit_vision_digital_ink.zzzk -> L35 com.google.android.gms.internal.mlkit_vision_digital_ink.zzzm -> L5e
            goto L8c
        Lf:
            java.lang.String r4 = r7.zzm()
            java.lang.String r5 = r6.zzq()
            java.lang.Object[] r4 = new java.lang.Object[]{r1, r4, r5}
            java.lang.String r5 = "%s: Failed to check existence in the shared storage for file %s, file group %s"
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzg(r5, r4)
            java.lang.String r4 = r7.zzm()
            java.lang.String r5 = r6.zzq()
            java.lang.Object[] r4 = new java.lang.Object[]{r4, r5}
            java.lang.String r5 = "Error while checking if file %s, group %s, exists in the shared blob storage."
            java.lang.String r0 = java.lang.String.format(r5, r4)
            r4 = 19
            goto L5a
        L35:
            java.lang.String r4 = r7.zzm()
            java.lang.String r5 = r6.zzq()
            java.lang.Object[] r4 = new java.lang.Object[]{r1, r4, r5}
            java.lang.String r5 = "%s: Malformed lease uri file %s, file group %s"
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzg(r5, r4)
            java.lang.String r4 = r7.zzm()
            java.lang.String r5 = r6.zzq()
            java.lang.Object[] r4 = new java.lang.Object[]{r4, r5}
            java.lang.String r5 = "Malformed blob Uri for file %s, group %s"
            java.lang.String r0 = java.lang.String.format(r5, r4)
            r4 = 17
        L5a:
            r3 = r2
            r2 = r4
            r4 = r3
            goto L8c
        L5e:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto L6a
            goto L6e
        L6a:
            java.lang.String r0 = r4.getMessage()
        L6e:
            java.lang.String r4 = r7.zzm()
            java.lang.String r5 = r6.zzq()
            java.lang.Object[] r4 = new java.lang.Object[]{r1, r4, r5, r0}
            java.lang.String r5 = "%s: Failed to share for file %s, file group %s. UnsupportedFileStorageOperation was thrown with message \"%s\""
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzl(r5, r4)
            java.lang.String r4 = java.lang.String.valueOf(r0)
            java.lang.String r5 = "UnsupportedFileStorageOperation was thrown: "
            java.lang.String r0 = r5.concat(r4)
            r4 = 24
            goto L5a
        L8c:
            if (r2 != 0) goto L8f
            return r4
        L8f:
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzvk r4 = new com.google.android.gms.internal.mlkit_vision_digital_ink.zzvk
            r4.<init>(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzvl.zzb(android.content.Context, java.lang.String, com.google.android.gms.internal.mlkit_vision_digital_ink.zzcr, com.google.android.gms.internal.mlkit_vision_digital_ink.zzck, com.google.android.gms.internal.mlkit_vision_digital_ink.zzyg):boolean");
    }
}
