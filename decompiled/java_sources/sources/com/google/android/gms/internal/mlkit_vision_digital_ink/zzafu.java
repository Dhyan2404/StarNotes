package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzafu {
    public static final CharSequence zza(@CheckForNull Object obj, String str) {
        obj.getClass();
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public static final String zzb(Iterable iterable, String str) {
        Iterator it2 = iterable.iterator();
        StringBuilder sb = new StringBuilder();
        zzc(sb, it2, str);
        return sb.toString();
    }

    public static final StringBuilder zzc(StringBuilder sb, Iterator it2, String str) {
        try {
            if (it2.hasNext()) {
                sb.append(zza(it2.next(), str));
                while (it2.hasNext()) {
                    sb.append((CharSequence) str);
                    sb.append(zza(it2.next(), str));
                }
            }
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
