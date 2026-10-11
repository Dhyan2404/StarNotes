package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzakg extends zzahi {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzagh zzb;

    public zzakg(Iterator it2, zzagh zzaghVar) {
        this.zza = it2;
        this.zzb = zzaghVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzahi
    @CheckForNull
    public final Object zza() {
        while (this.zza.hasNext()) {
            Object next = this.zza.next();
            if (this.zzb.zza(next)) {
                return next;
            }
        }
        zzb();
        return null;
    }
}
