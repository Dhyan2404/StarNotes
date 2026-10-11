package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzbpd implements zzbpa {

    @VisibleForTesting
    final List zza;

    public zzbpd(Context context, zzbpc zzbpcVar) {
        ArrayList arrayList = new ArrayList();
        this.zza = arrayList;
        if (zzbpcVar.zzc()) {
            arrayList.add(new zzbpp(context, zzbpcVar));
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbpa
    public final void zza(zzbpk zzbpkVar) {
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            ((zzbpa) it2.next()).zza(zzbpkVar);
        }
    }
}
