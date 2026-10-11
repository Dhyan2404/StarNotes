package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzcs {
    private final List zza = new ArrayList();

    public final zzcs zza(zzdh zzdhVar) {
        if (!(!zzdhVar.zzd())) {
            throw new IllegalArgumentException(zzbf.zza("range must not be empty, but was %s", zzdhVar));
        }
        this.zza.add(zzdhVar);
        return this;
    }

    public final zzcs zzb(zzcs zzcsVar) {
        Iterator it2 = zzcsVar.zza.iterator();
        while (it2.hasNext()) {
            zza((zzdh) it2.next());
        }
        return this;
    }

    public final zzct zzc() {
        zzck zzckVar = new zzck(this.zza.size());
        Collections.sort(this.zza, zzdg.zza);
        Iterator it2 = this.zza.iterator();
        zzcy zzcyVar = it2 instanceof zzcy ? (zzcy) it2 : new zzcy(it2);
        while (zzcyVar.hasNext()) {
            zzdh zzdhVar = (zzdh) zzcyVar.next();
            while (zzcyVar.hasNext()) {
                zzdh zzdhVar2 = (zzdh) zzcyVar.zza();
                if (zzdhVar.zza.compareTo(zzdhVar2.zzb) <= 0 && zzdhVar2.zza.compareTo(zzdhVar.zzb) <= 0) {
                    zzbe.zzd(zzdhVar.zzb(zzdhVar2).zzd(), "Overlapping ranges not permitted but found %s overlapping %s", zzdhVar, zzdhVar2);
                    zzdhVar = zzdhVar.zzc((zzdh) zzcyVar.next());
                }
                zzckVar.zzd(zzdhVar);
            }
            zzckVar.zzd(zzdhVar);
        }
        zzco zze = zzckVar.zze();
        if (zze.isEmpty()) {
            return zzct.zzb();
        }
        if (zze.size() == 1) {
            zzdx listIterator = zze.listIterator(0);
            Object next = listIterator.next();
            if (listIterator.hasNext()) {
                StringBuilder sb = new StringBuilder();
                sb.append("expected one element but was: <");
                sb.append(next);
                for (int i = 0; i < 4 && listIterator.hasNext(); i++) {
                    sb.append(", ");
                    sb.append(listIterator.next());
                }
                if (listIterator.hasNext()) {
                    sb.append(", ...");
                }
                sb.append('>');
                throw new IllegalArgumentException(sb.toString());
            }
            if (((zzdh) next).equals(zzdh.zza())) {
                return zzct.zza();
            }
        }
        return new zzct(zze);
    }
}
