package com.google.android.gms.internal.fido;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes5.dex */
public final class zzbx {
    public static int zza(Set set) {
        Iterator it2 = set.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }
}
