package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Iterables;
import com.google.common.collect.Maps;
import com.google.j2objc.annotations.Weak;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class img<K, V> extends AbstractCollection<V> {

    /* renamed from: e */
    @Weak
    public final hmg<K, V> f73382e;

    public img(hmg<K, V> hmgVar) {
        this.f73382e = (hmg) Preconditions.checkNotNull(hmgVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f73382e.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@CheckForNull Object obj) {
        return this.f73382e.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<V> iterator() {
        return Maps.m26478Q(this.f73382e.entries().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@CheckForNull Object obj) {
        Predicate<? super Map.Entry<K, V>> mo26996c = this.f73382e.mo26996c();
        Iterator<Map.Entry<K, V>> it2 = this.f73382e.mo26995a().entries().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (mo26996c.apply(next) && Objects.equal(next.getValue(), obj)) {
                it2.remove();
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return Iterables.removeIf(this.f73382e.mo26995a().entries(), Predicates.and(this.f73382e.mo26996c(), Maps.m26480S(Predicates.m25817in(collection))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return Iterables.removeIf(this.f73382e.mo26995a().entries(), Predicates.and(this.f73382e.mo26996c(), Maps.m26480S(Predicates.not(Predicates.m25817in(collection)))));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f73382e.size();
    }
}
