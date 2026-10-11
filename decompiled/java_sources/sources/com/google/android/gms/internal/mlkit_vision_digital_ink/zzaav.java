package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes5.dex */
public final class zzaav implements zzaqt {
    private final List zza;
    private final Executor zzb;

    private zzaav(List list, Executor executor) {
        this.zza = list;
        this.zzb = executor;
    }

    public static zzaav zzb(List list, Executor executor) {
        return new zzaav(list, executor);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
    public final /* bridge */ /* synthetic */ zzasi zza(Object obj) throws Exception {
        zzaap zzaapVar = (zzaap) obj;
        final int size = this.zza.size();
        final ArrayList arrayList = new ArrayList(size);
        zzaly listIterator = ((zzajm) this.zza).listIterator(0);
        while (listIterator.hasNext()) {
            arrayList.add(((zzaaq) listIterator.next()).zzc());
        }
        return zzarx.zzo(zzaapVar.zza(zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaar
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj2) {
                return zzaav.this.zzd(arrayList, size, (zzbvu) obj2);
            }
        }), zzasq.zzb()), zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaas
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj2) {
                return zzaav.this.zze(size, arrayList, obj2);
            }
        }), zzasq.zzb());
    }

    public final /* synthetic */ zzasi zzc(zzbvu zzbvuVar, int i, List list) throws Exception {
        zzasi zzh = zzarx.zzh(zzbvuVar);
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) zzarx.zzp((Future) list.get(i2))).booleanValue()) {
                final zzaaq zzaaqVar = (zzaaq) this.zza.get(i2);
                zzh = zzarx.zzo(zzh, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaau
                    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
                    public final zzasi zza(Object obj) {
                        return zzaaq.this.zzb((zzbvu) obj);
                    }
                }), zzasq.zzb());
            }
        }
        return zzh;
    }

    public final /* synthetic */ zzasi zzd(final List list, final int i, final zzbvu zzbvuVar) throws Exception {
        return zzarx.zza(list).zzb(zzaeq.zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaat
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzaav.this.zzc(zzbvuVar, i, list);
            }
        }), this.zzb);
    }

    public final /* synthetic */ zzasi zze(int i, List list, Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            if (((Boolean) zzarx.zzp((Future) list.get(i2))).booleanValue()) {
                arrayList.add(((zzaaq) this.zza.get(i2)).zza());
            }
        }
        final Object obj2 = null;
        return zzarx.zzb(arrayList).zza(new Callable(obj2) { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzasq.zzb());
    }
}
