package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {

    /* renamed from: i */
    public final HashMap<K, SafeIterableMap.C0311c<K, V>> f2142i = new HashMap<>();

    @Nullable
    public Map.Entry<K, V> ceil(K k) {
        if (contains(k)) {
            return this.f2142i.get(k).f2153h;
        }
        return null;
    }

    public boolean contains(K k) {
        return this.f2142i.containsKey(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    @Nullable
    public SafeIterableMap.C0311c<K, V> get(K k) {
        return this.f2142i.get(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V putIfAbsent(@NonNull K k, @NonNull V v) {
        SafeIterableMap.C0311c<K, V> c0311c = get(k);
        if (c0311c != null) {
            return c0311c.f2151f;
        }
        this.f2142i.put(k, m985a(k, v));
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V remove(@NonNull K k) {
        V v = (V) super.remove(k);
        this.f2142i.remove(k);
        return v;
    }
}
