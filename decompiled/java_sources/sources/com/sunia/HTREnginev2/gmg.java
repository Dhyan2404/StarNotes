package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class gmg<K, V> extends fmg<K, V> implements jmg<K, V> {

    /* renamed from: com.sunia.HTREnginev2.gmg$a */
    /* loaded from: classes6.dex */
    public class C13777a extends fmg<K, V>.C13728c implements Set<Map.Entry<K, V>> {
        public C13777a(gmg gmgVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.m26675a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m26676b(this);
        }
    }

    public gmg(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        super(setMultimap, predicate);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.AbstractC6111f
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public Set<Map.Entry<K, V>> createEntries() {
        return new C13777a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
        return get((gmg<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((gmg<K, V>) obj, iterable);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.sunia.HTREnginev2.hmg
    /* renamed from: a */
    public SetMultimap<K, V> mo26995a() {
        return (SetMultimap) this.f70148e;
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(@xvk K k) {
        return (Set) super.get((gmg<K, V>) k);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(@CheckForNull Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((gmg<K, V>) k, (Iterable) iterable);
    }
}
