package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzajq extends zzalx {
    final Iterator zza;

    @CheckForNull
    Object zzb = null;
    Iterator zzc = zzakj.zza;
    final /* synthetic */ zzaju zzd;

    public zzajq(zzaju zzajuVar) {
        this.zzd = zzajuVar;
        this.zza = zzajuVar.map.entrySet().zzk().listIterator(0);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc.hasNext() || this.zza.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (!this.zzc.hasNext()) {
            Map.Entry entry = (Map.Entry) this.zza.next();
            this.zzb = entry.getKey();
            this.zzc = ((zzajg) entry.getValue()).iterator();
        }
        Object obj = this.zzb;
        obj.getClass();
        return new zzajh(obj, this.zzc.next());
    }
}
