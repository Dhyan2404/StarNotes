package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.C6118m;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class dmg<K, V> extends C6118m<K, V> implements jmg<K, V> {
    public dmg(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        super(setMultimap, predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.C6118m, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
        return get((dmg<K, V>) obj);
    }

    @Override // com.google.common.collect.C6118m, com.google.common.collect.AbstractC6111f
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> createEntries() {
        return Sets.filter(mo26995a().entries(), mo26996c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((dmg<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.C6118m, com.sunia.HTREnginev2.hmg
    /* renamed from: a */
    public SetMultimap<K, V> mo26995a() {
        return (SetMultimap) this.f34609e;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.C6118m, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(@xvk K k) {
        return (Set) super.get((dmg<K, V>) k);
    }

    @Override // com.google.common.collect.C6118m, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(@CheckForNull Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((dmg<K, V>) k, (Iterable) iterable);
    }
}
