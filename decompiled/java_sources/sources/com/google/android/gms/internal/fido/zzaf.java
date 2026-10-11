package com.google.android.gms.internal.fido;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzaf {
    public static final Appendable zza(Appendable appendable, Iterator it2, zzag zzagVar, String str) throws IOException {
        String str2;
        if (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            appendable.append(zzag.zzd(entry.getKey()));
            appendable.append(" : ");
            appendable.append(zzag.zzd(entry.getValue()));
            while (it2.hasNext()) {
                str2 = zzagVar.zza;
                appendable.append(str2);
                Map.Entry entry2 = (Map.Entry) it2.next();
                appendable.append(zzag.zzd(entry2.getKey()));
                appendable.append(" : ");
                appendable.append(zzag.zzd(entry2.getValue()));
            }
        }
        return appendable;
    }
}
