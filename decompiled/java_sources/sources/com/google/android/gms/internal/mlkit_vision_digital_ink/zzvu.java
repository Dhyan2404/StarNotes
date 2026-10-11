package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer2.upstream.DefaultDataSource;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class zzvu {
    public static long zza(zzcr zzcrVar) {
        if (zzcrVar.zzf() == 0) {
            return Long.MAX_VALUE;
        }
        return TimeUnit.SECONDS.toMillis(zzcrVar.zzf());
    }

    public static Uri zzb(Uri uri, zzck zzckVar) {
        Uri.Builder buildUpon = uri.buildUpon();
        if (zzckVar.zzn().isEmpty()) {
            String zzo = zzckVar.zzo();
            buildUpon.appendPath(zzo.substring(zzo.lastIndexOf("/") + 1));
        } else {
            for (String str : zzckVar.zzn().split("/", -1)) {
                if (!str.isEmpty()) {
                    buildUpon.appendPath(str);
                }
            }
        }
        return buildUpon.build();
    }

    public static Uri zzc(Context context, zzagb zzagbVar, zzcr zzcrVar) {
        return zzvm.zzd(context, zzcrVar.zzE(), zzagbVar).buildUpon().appendPath(!zzcrVar.zzr().isEmpty() ? zzcrVar.zzr() : zzcrVar.zzq()).build();
    }

    public static zzcr zzd(zzcr zzcrVar, long j) {
        zzcl zzclVar = (zzcl) zzcrVar.zzi().zzO();
        zzclVar.zze(j);
        zzcm zzcmVar = (zzcm) zzclVar.zzx();
        zzcq zzcqVar = (zzcq) zzcrVar.zzO();
        zzcqVar.zzd(zzcmVar);
        return (zzcr) zzcqVar.zzx();
    }

    public static String zze(zzck zzckVar) {
        return zzg(zzckVar) ? zzckVar.zzl() : zzckVar.zzk();
    }

    public static void zzf(Context context, zzagb zzagbVar, zzcr zzcrVar, zzyg zzygVar) throws IOException {
        Uri zzc = zzc(context, zzagbVar, zzcrVar);
        if (zzygVar.zzi(zzc)) {
            zzaac zzaacVar = new zzaac();
            zzaacVar.zza();
        }
    }

    public static boolean zzg(zzck zzckVar) {
        if (!zzckVar.zzu()) {
            return false;
        }
        Iterator it2 = zzckVar.zzh().zzj().iterator();
        while (it2.hasNext()) {
            if (((zzcan) it2.next()).zzo()) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzh(String str) {
        return zzl(str, zzaka.zzo("inlinefile"));
    }

    public static boolean zzi(zzcr zzcrVar) {
        if (!zzcrVar.zzC()) {
            return false;
        }
        Iterator it2 = zzcrVar.zzu().iterator();
        while (it2.hasNext()) {
            if (((zzck) it2.next()).zzy() == 2) {
                return false;
            }
        }
        return true;
    }

    public static boolean zzj(zzck zzckVar) {
        return zzl(zzckVar.zzo(), zzaka.zzp("file", DefaultDataSource.f28020m));
    }

    public static boolean zzk(long j, zzgs zzgsVar) {
        return j <= System.currentTimeMillis();
    }

    private static boolean zzl(String str, zzaka zzakaVar) {
        if (str.isEmpty()) {
            return false;
        }
        int indexOf = str.indexOf(58);
        zzagg.zzl(indexOf >= 0, "Invalid url: %s", str);
        String substring = str.substring(0, indexOf);
        zzalx it2 = zzakaVar.iterator();
        while (it2.hasNext()) {
            if (zzafd.zzc(substring, (String) it2.next())) {
                return true;
            }
        }
        return false;
    }
}
