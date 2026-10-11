package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzag {
    private final String zza = ",\n  ";

    private zzag(String str) {
    }

    public static zzag zza(String str) {
        return new zzag(",\n  ");
    }

    public static final CharSequence zzd(@CheckForNull Object obj) {
        obj.getClass();
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    public final Appendable zzb(Appendable appendable, Iterator it2) throws IOException {
        if (it2.hasNext()) {
            appendable.append(zzd(it2.next()));
            while (it2.hasNext()) {
                appendable.append(this.zza);
                appendable.append(zzd(it2.next()));
            }
        }
        return appendable;
    }
}
