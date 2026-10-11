package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzzs {
    private static final Pattern zza = Pattern.compile("(\\w+).*");

    @Nullable
    public static String zza(List list) {
        if (list.isEmpty()) {
            return null;
        }
        return "transform=".concat(zzafu.zzb(list, "+"));
    }

    public static String zzb(String str) {
        Matcher matcher = zza.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid fragment spec: ".concat(String.valueOf(str)));
    }
}
