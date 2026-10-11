package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicate;
import com.google.common.collect.ListMultimap;
import java.util.Collection;
import java.util.List;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class emg<K, V> extends fmg<K, V> implements ListMultimap<K, V> {
    public emg(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        super(listMultimap, predicate);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.sunia.HTREnginev2.hmg
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public ListMultimap<K, V> mo26995a() {
        return (ListMultimap) super.mo26995a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@xvk Object obj) {
        return get((emg<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(@xvk Object obj, Iterable iterable) {
        return replaceValues((emg<K, V>) obj, iterable);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@xvk K k) {
        return (List) super.get((emg<K, V>) k);
    }

    @Override // com.sunia.HTREnginev2.fmg, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> removeAll(@CheckForNull Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractC6111f, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> replaceValues(@xvk K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((emg<K, V>) k, (Iterable) iterable);
    }
}
