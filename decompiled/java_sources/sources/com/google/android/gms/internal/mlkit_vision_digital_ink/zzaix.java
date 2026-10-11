package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaix extends AbstractSet implements Serializable {

    @CheckForNull
    transient Object[] zza;

    @CheckForNull
    private transient Object zzb;

    @CheckForNull
    private transient int[] zzc;
    private transient int zzd;
    private transient int zze;

    public zzaix() {
        zzf(3);
    }

    private final int zzh() {
        return (1 << (this.zzd & 31)) - 1;
    }

    private final int zzi(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object zze = zzaiy.zze(i2);
        if (i4 != 0) {
            zzaiy.zzg(zze, i3 & i5, i4 + 1);
        }
        Object obj = this.zzb;
        obj.getClass();
        int[] iArr = this.zzc;
        iArr.getClass();
        for (int i6 = 0; i6 <= i; i6++) {
            int zzc = zzaiy.zzc(obj, i6);
            while (zzc != 0) {
                int i7 = zzc - 1;
                int i8 = iArr[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int zzc2 = zzaiy.zzc(zze, i10);
                zzaiy.zzg(zze, i10, zzc);
                iArr[i7] = ((~i5) & i9) | (zzc2 & i5);
                zzc = i8 & i;
            }
        }
        this.zzb = zze;
        zzj(i5);
        return i5;
    }

    private final void zzj(int i) {
        this.zzd = ((32 - Integer.numberOfLeadingZeros(i)) & 31) | (this.zzd & (-32));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int min;
        if (zzg()) {
            zzagg.zzk(zzg(), "Arrays already allocated");
            int i = this.zzd;
            int zzd = zzaiy.zzd(i);
            this.zzb = zzaiy.zze(zzd);
            zzj(zzd - 1);
            this.zzc = new int[i];
            this.zza = new Object[i];
        }
        Set zzd2 = zzd();
        if (zzd2 != null) {
            return zzd2.add(obj);
        }
        int[] iArr = this.zzc;
        iArr.getClass();
        Object[] objArr = this.zza;
        objArr.getClass();
        int i2 = this.zze;
        int i3 = i2 + 1;
        int zzb = zzajd.zzb(obj);
        int zzh = zzh();
        int i4 = zzb & zzh;
        Object obj2 = this.zzb;
        obj2.getClass();
        int zzc = zzaiy.zzc(obj2, i4);
        if (zzc != 0) {
            int i5 = ~zzh;
            int i6 = zzb & i5;
            int i7 = 0;
            while (true) {
                int i8 = zzc - 1;
                int i9 = iArr[i8];
                int i10 = i9 & i5;
                if (i10 == i6 && zzaga.zza(obj, objArr[i8])) {
                    return false;
                }
                int i11 = i9 & zzh;
                i7++;
                if (i11 != 0) {
                    zzc = i11;
                } else {
                    if (i7 >= 9) {
                        LinkedHashSet linkedHashSet = new LinkedHashSet(zzh() + 1, 1.0f);
                        int zzb2 = zzb();
                        while (zzb2 >= 0) {
                            Object[] objArr2 = this.zza;
                            objArr2.getClass();
                            linkedHashSet.add(objArr2[zzb2]);
                            zzb2 = zzc(zzb2);
                        }
                        this.zzb = linkedHashSet;
                        this.zzc = null;
                        this.zza = null;
                        zze();
                        return linkedHashSet.add(obj);
                    }
                    if (i3 > zzh) {
                        zzh = zzi(zzh, zzaiy.zza(zzh), zzb, i2);
                    } else {
                        iArr[i8] = (i3 & zzh) | i10;
                    }
                }
            }
        } else if (i3 > zzh) {
            zzh = zzi(zzh, zzaiy.zza(zzh), zzb, i2);
        } else {
            Object obj3 = this.zzb;
            obj3.getClass();
            zzaiy.zzg(obj3, i4, i3);
        }
        int[] iArr2 = this.zzc;
        iArr2.getClass();
        int length = iArr2.length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            int[] iArr3 = this.zzc;
            iArr3.getClass();
            this.zzc = Arrays.copyOf(iArr3, min);
            Object[] objArr3 = this.zza;
            objArr3.getClass();
            this.zza = Arrays.copyOf(objArr3, min);
        }
        int i12 = (~zzh) & zzb;
        int[] iArr4 = this.zzc;
        iArr4.getClass();
        iArr4[i2] = i12;
        Object[] objArr4 = this.zza;
        objArr4.getClass();
        objArr4[i2] = obj;
        this.zze = i3;
        zze();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        if (zzg()) {
            return;
        }
        zze();
        Set zzd = zzd();
        if (zzd != null) {
            this.zzd = zzapu.zza(size(), 3, 1073741823);
            zzd.clear();
            this.zzb = null;
            this.zze = 0;
            return;
        }
        Object[] objArr = this.zza;
        objArr.getClass();
        Arrays.fill(objArr, 0, this.zze, (Object) null);
        Object obj = this.zzb;
        obj.getClass();
        zzaiy.zzf(obj);
        int[] iArr = this.zzc;
        iArr.getClass();
        Arrays.fill(iArr, 0, this.zze, 0);
        this.zze = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        if (zzg()) {
            return false;
        }
        Set zzd = zzd();
        if (zzd != null) {
            return zzd.contains(obj);
        }
        int zzb = zzajd.zzb(obj);
        int zzh = zzh();
        Object obj2 = this.zzb;
        obj2.getClass();
        int zzc = zzaiy.zzc(obj2, zzb & zzh);
        if (zzc != 0) {
            int i = ~zzh;
            int i2 = zzb & i;
            do {
                int[] iArr = this.zzc;
                iArr.getClass();
                int i3 = zzc - 1;
                int i4 = iArr[i3];
                if ((i4 & i) == i2) {
                    Object[] objArr = this.zza;
                    objArr.getClass();
                    if (zzaga.zza(obj, objArr[i3])) {
                        return true;
                    }
                }
                zzc = i4 & zzh;
            } while (zzc != 0);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set zzd = zzd();
        return zzd != null ? zzd.iterator() : new zzaiw(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int i;
        int i2;
        if (zzg()) {
            return false;
        }
        Set zzd = zzd();
        if (zzd != null) {
            return zzd.remove(obj);
        }
        int zzh = zzh();
        Object obj2 = this.zzb;
        obj2.getClass();
        int[] iArr = this.zzc;
        iArr.getClass();
        Object[] objArr = this.zza;
        objArr.getClass();
        int zzb = zzaiy.zzb(obj, null, zzh, obj2, iArr, objArr, null);
        if (zzb == -1) {
            return false;
        }
        Object obj3 = this.zzb;
        obj3.getClass();
        int[] iArr2 = this.zzc;
        iArr2.getClass();
        Object[] objArr2 = this.zza;
        objArr2.getClass();
        int size = size() - 1;
        if (zzb < size) {
            Object obj4 = objArr2[size];
            objArr2[zzb] = obj4;
            objArr2[size] = null;
            iArr2[zzb] = iArr2[size];
            iArr2[size] = 0;
            int zzb2 = zzajd.zzb(obj4) & zzh;
            int zzc = zzaiy.zzc(obj3, zzb2);
            int i3 = size + 1;
            if (zzc == i3) {
                zzaiy.zzg(obj3, zzb2, zzb + 1);
            } else {
                while (true) {
                    i = zzc - 1;
                    i2 = iArr2[i];
                    int i4 = i2 & zzh;
                    if (i4 == i3) {
                        break;
                    }
                    zzc = i4;
                }
                iArr2[i] = ((zzb + 1) & zzh) | (i2 & (~zzh));
            }
        } else {
            objArr2[zzb] = null;
            iArr2[zzb] = 0;
        }
        this.zze--;
        zze();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set zzd = zzd();
        return zzd != null ? zzd.size() : this.zze;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        if (zzg()) {
            return new Object[0];
        }
        Set zzd = zzd();
        if (zzd != null) {
            return zzd.toArray();
        }
        Object[] objArr = this.zza;
        objArr.getClass();
        return Arrays.copyOf(objArr, this.zze);
    }

    public final int zzb() {
        return isEmpty() ? -1 : 0;
    }

    public final int zzc(int i) {
        int i2 = i + 1;
        if (i2 < this.zze) {
            return i2;
        }
        return -1;
    }

    @CheckForNull
    public final Set zzd() {
        Object obj = this.zzb;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public final void zze() {
        this.zzd += 32;
    }

    public final void zzf(int i) {
        this.zzd = zzapu.zza(i, 1, 1073741823);
    }

    public final boolean zzg() {
        return this.zzb == null;
    }

    public zzaix(int i) {
        zzf(2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        if (zzg()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Set zzd = zzd();
        if (zzd != null) {
            return zzd.toArray(objArr);
        }
        Object[] objArr2 = this.zza;
        objArr2.getClass();
        int i = this.zze;
        zzagg.zzi(0, i, objArr2.length);
        int length = objArr.length;
        if (length < i) {
            objArr = zzalk.zza(objArr, i);
        } else if (length > i) {
            objArr[i] = null;
        }
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return objArr;
    }
}
