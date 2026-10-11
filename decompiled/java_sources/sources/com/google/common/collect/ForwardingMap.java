package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {

    @Beta
    /* loaded from: classes6.dex */
    public abstract class StandardEntrySet extends Maps.AbstractC5963q<K, V> {
        public StandardEntrySet() {
        }

        @Override // com.google.common.collect.Maps.AbstractC5963q
        /* renamed from: a */
        public Map<K, V> mo26018a() {
            return ForwardingMap.this;
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public class StandardKeySet extends Maps.C5971y<K, V> {
        public StandardKeySet(ForwardingMap forwardingMap) {
            super(forwardingMap);
        }
    }

    @Beta
    /* loaded from: classes6.dex */
    public class StandardValues extends Maps.C5957l0<K, V> {
        public StandardValues(ForwardingMap forwardingMap) {
            super(forwardingMap);
        }
    }

    public void clear() {
        delegate().clear();
    }

    public boolean containsKey(@CheckForNull Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@CheckForNull Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // com.google.common.collect.ForwardingObject
    public abstract Map<K, V> delegate();

    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    public boolean equals(@CheckForNull Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @CheckForNull
    public V get(@CheckForNull Object obj) {
        return delegate().get(obj);
    }

    public int hashCode() {
        return delegate().hashCode();
    }

    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public V put(@xvk K k, @xvk V v) {
        return delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        return delegate().remove(obj);
    }

    public int size() {
        return delegate().size();
    }

    public void standardClear() {
        Iterators.m26340c(entrySet().iterator());
    }

    @Beta
    public boolean standardContainsKey(@CheckForNull Object obj) {
        return Maps.m26493m(this, obj);
    }

    public boolean standardContainsValue(@CheckForNull Object obj) {
        return Maps.m26494n(this, obj);
    }

    public boolean standardEquals(@CheckForNull Object obj) {
        return Maps.m26496p(this, obj);
    }

    public int standardHashCode() {
        return Sets.m26676b(entrySet());
    }

    public boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    public void standardPutAll(Map<? extends K, ? extends V> map) {
        Maps.m26462A(this, map);
    }

    @Beta
    @CheckForNull
    public V standardRemove(@CheckForNull Object obj) {
        Iterator<Map.Entry<K, V>> it2 = entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (Objects.equal(next.getKey(), obj)) {
                V value = next.getValue();
                it2.remove();
                return value;
            }
        }
        return null;
    }

    public String standardToString() {
        return Maps.m26470I(this);
    }

    public Collection<V> values() {
        return delegate().values();
    }
}
