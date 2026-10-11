package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.mlkit.common.sdkinternal.OptionalModuleUtils;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public abstract class zzajp<K, V> implements Map<K, V>, Serializable {

    @CheckForNull
    private transient zzaka zza;

    @CheckForNull
    private transient zzaka zzb;

    @CheckForNull
    private transient zzajg zzc;

    public static zzajo zzc() {
        return new zzajo(4);
    }

    public static zzajp zzd(Map map) {
        if ((map instanceof zzajp) && !(map instanceof SortedMap)) {
            zzajp zzajpVar = (zzajp) map;
            zzajpVar.zzl();
            return zzajpVar;
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        zzajo zzajoVar = new zzajo(entrySet instanceof Collection ? entrySet.size() : 4);
        zzajoVar.zzc(entrySet);
        return zzajoVar.zze();
    }

    public static zzajp zze() {
        return zzalq.zza;
    }

    public static zzajp zzf(Object obj, Object obj2) {
        zzaij.zzb("optional-module-barcode", OptionalModuleUtils.BARCODE_MODULE_ID);
        return zzalq.zzm(1, new Object[]{"optional-module-barcode", OptionalModuleUtils.BARCODE_MODULE_ID}, null);
    }

    public static zzajp zzg(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        zzaij.zzb(obj, obj2);
        zzaij.zzb(obj3, obj4);
        zzaij.zzb(obj5, obj6);
        return zzalq.zzm(3, new Object[]{obj, obj2, obj3, obj4, obj5, obj6}, null);
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    @CheckForNull
    public abstract Object get(@CheckForNull Object obj);

    @Override // java.util.Map
    @CheckForNull
    public final Object getOrDefault(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return zzalu.zza(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final Object remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        zzaij.zza(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public abstract zzajg zza();

    @Override // java.util.Map
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzajg values() {
        zzajg zzajgVar = this.zzc;
        if (zzajgVar != null) {
            return zzajgVar;
        }
        zzajg zza = zza();
        this.zzc = zza;
        return zza;
    }

    public abstract zzaka zzh();

    public abstract zzaka zzi();

    @Override // java.util.Map
    /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public final zzaka entrySet() {
        zzaka zzakaVar = this.zza;
        if (zzakaVar != null) {
            return zzakaVar;
        }
        zzaka zzh = zzh();
        this.zza = zzh;
        return zzh;
    }

    @Override // java.util.Map
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public final zzaka keySet() {
        zzaka zzakaVar = this.zzb;
        if (zzakaVar != null) {
            return zzakaVar;
        }
        zzaka zzi = zzi();
        this.zzb = zzi;
        return zzi;
    }

    public abstract boolean zzl();
}
