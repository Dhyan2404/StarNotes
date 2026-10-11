package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.android.exoplayer2.upstream.DefaultDataSource;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzaka<E> extends zzajg<E> implements Set<E> {

    @CheckForNull
    private transient zzajm zza;

    /* JADX INFO: Access modifiers changed from: private */
    public static zzaka zza(int i, Object... objArr) {
        if (i == 0) {
            return zzalr.zza;
        }
        if (i == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new zzalv(obj);
        }
        int zzd = zzd(i);
        Object[] objArr2 = new Object[zzd];
        int i2 = zzd - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            zzalj.zza(obj2, i5);
            int hashCode = obj2.hashCode();
            int zza = zzajd.zza(hashCode);
            while (true) {
                int i6 = zza & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    zza++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new zzalv(obj4);
        }
        if (zzd(i4) < zzd / 2) {
            return zza(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new zzalr(objArr, i3, objArr2, i2, i4);
    }

    public static int zzd(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            zzagg.zzf(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static zzaka zzg(Collection collection) {
        if ((collection instanceof zzaka) && !(collection instanceof SortedSet)) {
            zzaka zzakaVar = (zzaka) collection;
            if (!zzakaVar.zzm()) {
                return zzakaVar;
            }
        }
        Object[] array = collection.toArray();
        return zza(array.length, array);
    }

    public static zzaka zzh(Object[] objArr) {
        int length = objArr.length;
        return length != 0 ? length != 1 ? zza(length, (Object[]) objArr.clone()) : new zzalv(objArr[0]) : zzalr.zza;
    }

    public static zzaka zzi() {
        return zzalr.zza;
    }

    public static zzaka zzo(Object obj) {
        return new zzalv(obj);
    }

    public static zzaka zzp(Object obj, Object obj2) {
        return zza(2, "file", DefaultDataSource.f28020m);
    }

    @SafeVarargs
    public static zzaka zzq(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        int length = objArr.length;
        int i = length + 6;
        Object[] objArr2 = new Object[i];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, length);
        return zza(i, objArr2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzaka) && zzr() && ((zzaka) obj).zzr() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzalu.zzb(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzalu.zza(this);
    }

    public zzajm zze() {
        return zzajm.zzg(toArray());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg
    public zzajm zzk() {
        zzajm zzajmVar = this.zza;
        if (zzajmVar != null) {
            return zzajmVar;
        }
        zzajm zze = zze();
        this.zza = zze;
        return zze;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzajg, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: zzl */
    public abstract zzalx iterator();

    public boolean zzr() {
        return false;
    }
}
