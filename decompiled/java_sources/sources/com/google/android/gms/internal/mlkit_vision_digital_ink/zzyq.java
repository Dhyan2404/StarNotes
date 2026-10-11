package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzyq {
    private final Context zza;
    private final String zzb;
    private String zzc = "files";
    private String zzd = "common";
    private Account zze = zzyr.zza;
    private String zzf = "";
    private final zzaji zzg = zzajm.zze();

    public /* synthetic */ zzyq(Context context, zzyp zzypVar) {
        zzzt.zza(context != null, "Context cannot be null", new Object[0]);
        this.zza = context;
        this.zzb = context.getPackageName();
    }

    public final Uri zza() {
        return new Uri.Builder().scheme("android").authority(this.zzb).path("/" + this.zzc + "/" + this.zzd + "/" + zzyi.zzb(this.zze) + "/" + this.zzf).encodedFragment(zzzs.zza(this.zzg.zzh())).build();
    }

    public final zzyq zzb(String str, @Nullable zzyh zzyhVar) {
        String substring;
        File zzb = zzyo.zzb(this.zza);
        String absolutePath = zzb.getAbsolutePath();
        String absolutePath2 = this.zza.getCacheDir().getAbsolutePath();
        String absolutePath3 = new File(zzb, "managed").getAbsolutePath();
        File externalFilesDir = this.zza.getExternalFilesDir(null);
        String absolutePath4 = externalFilesDir != null ? externalFilesDir.getAbsolutePath() : null;
        File zza = zzyo.zza(this.zza);
        String absolutePath5 = new File(zza, "files").getAbsolutePath();
        String absolutePath6 = new File(zza, "cache").getAbsolutePath();
        if (str.startsWith(absolutePath3)) {
            zzyr.zzb("managed");
            this.zzc = "managed";
            substring = str.substring(absolutePath3.length());
        } else if (str.startsWith(absolutePath)) {
            zzyr.zzb("files");
            this.zzc = "files";
            substring = str.substring(absolutePath.length());
        } else if (str.startsWith(absolutePath2)) {
            zzyr.zzb("cache");
            this.zzc = "cache";
            substring = str.substring(absolutePath2.length());
        } else if (absolutePath4 != null && str.startsWith(absolutePath4)) {
            zzyr.zzb("external");
            this.zzc = "external";
            substring = str.substring(absolutePath4.length());
        } else if (absolutePath5 != null && str.startsWith(absolutePath5)) {
            zzyr.zzb("directboot-files");
            this.zzc = "directboot-files";
            substring = str.substring(absolutePath5.length());
        } else {
            if (absolutePath6 == null || !str.startsWith(absolutePath6)) {
                throw new IllegalArgumentException("Path must be in app-private files dir or external files dir: ".concat(str));
            }
            zzyr.zzb("directboot-cache");
            this.zzc = "directboot-cache";
            substring = str.substring(absolutePath6.length());
        }
        List asList = Arrays.asList(substring.split(File.separator));
        zzzt.zza(asList.size() >= 3, "Path must be in module and account subdirectories: %s", str);
        String str2 = (String) asList.get(1);
        zzyr.zzc(str2);
        this.zzd = str2;
        String str3 = (String) asList.get(2);
        if (!"managed".equals(this.zzc) || zzyi.zzc(str3)) {
            Account zza2 = zzyi.zza(str3);
            zzyi.zzb(zza2);
            this.zze = zza2;
            zzd(substring.substring(this.zzd.length() + str3.length() + 2));
            return this;
        }
        try {
            Integer.parseInt(str3);
            zzzt.zza(false, "AccountManager cannot be null", new Object[0]);
            try {
                throw null;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalArgumentException(new zzzk(e));
            } catch (ExecutionException e2) {
                throw new IllegalArgumentException(new zzzk(e2.getCause()));
            }
        } catch (NumberFormatException e3) {
            throw new IllegalArgumentException(e3);
        }
    }

    public final zzyq zzc(String str) {
        zzyr.zzc(str);
        this.zzd = str;
        return this;
    }

    public final zzyq zzd(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        int i = zzyr.zzb;
        this.zzf = str;
        return this;
    }
}
