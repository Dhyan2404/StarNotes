package com.google.android.recaptcha.internal;

import java.util.Iterator;

/* loaded from: classes6.dex */
public abstract class zzfm implements Iterable {
    private final zzfe zza = zzfe.zza();

    public final String toString() {
        Iterator it2 = iterator();
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it2.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it2.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
