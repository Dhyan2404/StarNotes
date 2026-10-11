package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;

/* loaded from: classes5.dex */
public final class zzanm extends zzanb {
    private static final Set zza;
    private static final zzamt zzb;
    private static final zzanj zzc;
    private final String zzd;
    private final Level zze;
    private final Set zzf;
    private final zzamt zzg;

    static {
        Set unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(zzamb.zza, zzamh.zza)));
        zza = unmodifiableSet;
        zzb = zzamw.zza(unmodifiableSet).zzd();
        zzc = new zzanj();
    }

    public /* synthetic */ zzanm(String str, String str2, boolean z, boolean z2, Level level, Set set, zzamt zzamtVar, zzanl zzanlVar) {
        super(str2);
        if (str2.length() > 23) {
            int i = -1;
            for (int length = str2.length() - 1; length >= 0; length--) {
                char charAt = str2.charAt(length);
                if (charAt == '.' || charAt == '$') {
                    i = length;
                    break;
                }
            }
            str2 = str2.substring(i + 1);
        }
        String concat = "".concat(String.valueOf(str2));
        this.zzd = concat.substring(0, Math.min(concat.length(), 23));
        this.zze = level;
        this.zzf = set;
        this.zzg = zzamtVar;
    }
}
