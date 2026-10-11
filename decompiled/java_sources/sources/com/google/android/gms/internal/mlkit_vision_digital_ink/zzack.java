package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzack implements zzaqs {
    final /* synthetic */ zzaco zza;
    private List zzb;

    public /* synthetic */ zzack(zzaco zzacoVar, zzacj zzacjVar) {
        this.zza = zzacoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
    public final zzasi zza() throws Exception {
        zzadt zzadtVar;
        String str;
        Object obj;
        List list;
        zzaco zzacoVar = this.zza;
        zzadtVar = zzacoVar.zzh;
        str = zzacoVar.zza;
        zzady zza = zzadtVar.zza("Initialize ".concat(String.valueOf(str)), 1);
        try {
            obj = this.zza.zzg;
            synchronized (obj) {
                if (this.zzb == null) {
                    zzaco zzacoVar2 = this.zza;
                    list = zzacoVar2.zzi;
                    this.zzb = list;
                    zzacoVar2.zzi = Collections.emptyList();
                }
            }
            ArrayList arrayList = new ArrayList(this.zzb.size());
            zzacn zzacnVar = new zzacn(this.zza, null);
            Iterator it2 = this.zzb.iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(((zzaqt) it2.next()).zza(zzacnVar));
                } catch (Exception e) {
                    arrayList.add(zzarx.zzg(e));
                }
            }
            zzasi zza2 = zzarx.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaci
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzack.this.zzb();
                    return null;
                }
            }, zzasq.zzb());
            zza.zza(zza2);
            zza.close();
            return zza2;
        } catch (Throwable th) {
            try {
                zza.close();
            } catch (Throwable th2) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    public final /* synthetic */ Object zzb() throws Exception {
        Object obj;
        obj = this.zza.zzg;
        synchronized (obj) {
            this.zzb = null;
        }
        return null;
    }
}
