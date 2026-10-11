package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.net.Uri;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipInputStream;

/* loaded from: classes5.dex */
public final class zzus implements zzyf {
    private final Uri zza;
    private final zzur zzb = new zzur(this);

    private zzus(Uri uri) {
        this.zza = uri;
    }

    public static zzus zza(Uri uri) {
        return new zzus(uri);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        zzyg zzc = zzyeVar.zzc();
        try {
            zzaab zza = zzaab.zza();
            zza.zzc();
            ZipInputStream zipInputStream = new ZipInputStream(zza.zzb(zzyeVar));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        zipInputStream.close();
                        return null;
                    }
                    String name = nextEntry.getName();
                    if (name.contains(Constants.ATTRVAL_PARENT)) {
                        for (File file = new File(name); file != null; file = file.getParentFile()) {
                            if (file.getName().equals(Constants.ATTRVAL_PARENT)) {
                                throw new ZipException("Illegal name: ".concat(name));
                            }
                        }
                    }
                    Uri build = this.zza.buildUpon().appendPath(name).build();
                    if (nextEntry.isDirectory()) {
                        zzc.zzd(build);
                    } else {
                        OutputStream outputStream = (OutputStream) zzc.zzc(build, zzaae.zza());
                        try {
                            zzapb.zza(zipInputStream, outputStream);
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } finally {
                        }
                    }
                } finally {
                }
            }
        } catch (IOException e) {
            zzc.zzh(this.zza);
            throw e;
        }
    }
}
