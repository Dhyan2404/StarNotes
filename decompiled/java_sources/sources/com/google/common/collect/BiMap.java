package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface BiMap<K, V> extends Map<K, V> {
    @CanIgnoreReturnValue
    @CheckForNull
    V forcePut(@xvk K k, @xvk V v);

    BiMap<V, K> inverse();

    @CanIgnoreReturnValue
    @CheckForNull
    V put(@xvk K k, @xvk V v);

    void putAll(Map<? extends K, ? extends V> map);

    @Override // com.google.common.collect.BiMap
    Set<V> values();
}
