package com.google.mlkit.vision.digitalink.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagb;
import com.google.android.gms.internal.mlkit_vision_digital_ink.zzagc;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes6.dex */
public final class zzo extends Exception {
    private static final Pattern zza = Pattern.compile(".* \\(([^:]*):([0-9]+)\\)$");
    private final int zzb;
    private final String zzc;

    @UsedByNative("hadwriting_recognizer_jni.cc")
    public zzo(int i, String str) {
        this.zzb = i;
        this.zzc = str;
    }

    public final int zza() {
        return this.zzb;
    }

    public final zzagb zzb() {
        Matcher matcher = zza.matcher(this.zzc);
        if (!matcher.matches()) {
            return zzagb.zzd();
        }
        try {
            return zzagb.zzf(zzagc.zza(new File((String) Preconditions.checkNotNull(matcher.group(1))).getName(), Integer.valueOf(Integer.parseInt((String) Preconditions.checkNotNull(matcher.group(2))))));
        } catch (NumberFormatException unused) {
            return zzagb.zzd();
        }
    }
}
