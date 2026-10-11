package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes6.dex */
public final class zzfs {
    public static boolean zza(Collection collection, Iterator it2) {
        it2.getClass();
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }
}
