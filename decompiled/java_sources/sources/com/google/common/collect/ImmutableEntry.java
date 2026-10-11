package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.AbstractC14741z3;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;

@snf
@GwtCompatible(serializable = true)
/* loaded from: classes6.dex */
class ImmutableEntry<K, V> extends AbstractC14741z3<K, V> implements Serializable {
    private static final long serialVersionUID = 0;

    @xvk
    final K key;

    @xvk
    final V value;

    public ImmutableEntry(@xvk K k, @xvk V v) {
        this.key = k;
        this.value = v;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
    @xvk
    public final K getKey() {
        return this.key;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
    @xvk
    public final V getValue() {
        return this.value;
    }

    @Override // com.sunia.HTREnginev2.AbstractC14741z3, java.util.Map.Entry
    @xvk
    public final V setValue(@xvk V v) {
        throw new UnsupportedOperationException();
    }
}
