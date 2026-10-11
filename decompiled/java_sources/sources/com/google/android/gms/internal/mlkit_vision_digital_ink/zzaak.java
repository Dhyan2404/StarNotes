package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.material.motion.MotionUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

/* loaded from: classes5.dex */
public final class zzaak {
    public static final zzcan zza;
    public static final zzcan zzb;
    public static final zzcan zzc;

    static {
        zzcam zzg = zzcan.zzg();
        zzg.zza(zzcad.zze());
        zza = (zzcan) zzg.zzx();
        zzcam zzg2 = zzcan.zzg();
        zzg2.zzb(zzcaj.zze());
        zzb = (zzcan) zzg2.zzx();
        zzcam zzg3 = zzcan.zzg();
        zzg3.zzc(zzcal.zze());
        zzc = (zzcan) zzg3.zzx();
    }

    public static String zza(zzcap zzcapVar) {
        String str;
        String str2;
        zzaji zze = zzajm.zze();
        for (zzcan zzcanVar : zzcapVar.zzj()) {
            int zzp = zzcanVar.zzp();
            int i = zzp - 1;
            if (zzp == 0) {
                throw null;
            }
            if (i == 0) {
                str = "compress";
            } else if (i == 1) {
                zzcaj zze2 = zzcanVar.zze();
                str = zze2.zzg() ? "encrypt(aes_gcm_key=" + zzb(zze2.zzf()) + MotionUtils.f31762d : "encrypt";
            } else if (i == 2) {
                zzcal zzf = zzcanVar.zzf();
                str = zzf.zzg() ? "integrity(sha256=" + zzb(zzf.zzf()) + MotionUtils.f31762d : "integrity";
            } else if (i == 3) {
                zzcar zzi = zzcanVar.zzi();
                zzagg.zze(zzi.zzi());
                str = "zip(target=" + zzb(zzi.zzg()) + MotionUtils.f31762d;
            } else {
                if (i != 4) {
                    throw new IllegalArgumentException("No transform specified");
                }
                zzcah zzc2 = zzcanVar.zzc();
                if (zzc2.zzc() > 0) {
                    zzaji zze3 = zzajm.zze();
                    for (zzcag zzcagVar : zzc2.zzh()) {
                        zzagg.zze(zzcagVar.zzg());
                        if (zzcagVar.zzh()) {
                            zze3.zze(zzcagVar.zze() + "=" + zzb(zzcagVar.zzf()));
                        } else {
                            zze3.zze(zzcagVar.zze());
                        }
                    }
                    str2 = MotionUtils.f31761c + zzafu.zzb(zze3.zzh(), ",") + MotionUtils.f31762d;
                } else {
                    str2 = "";
                }
                str = String.valueOf(zzc2.zzg()).concat(str2);
            }
            zze.zze(str);
        }
        return zzzs.zza(zze.zzh());
    }

    private static final String zzb(String str) {
        try {
            return URLEncoder.encode(str, zzzp.zzc.displayName());
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }
}
