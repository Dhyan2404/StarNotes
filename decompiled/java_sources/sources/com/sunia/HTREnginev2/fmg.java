package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.AbstractC6111f;
import com.google.common.collect.Collections2;
import com.google.common.collect.ForwardingCollection;
import com.google.common.collect.ForwardingList;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Sets;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public class fmg<K, V> extends AbstractC6111f<K, V> implements hmg<K, V> {

    /* renamed from: e */
    public final Multimap<K, V> f70148e;

    /* renamed from: f */
    public final Predicate<? super K> f70149f;

    /* renamed from: com.sunia.HTREnginev2.fmg$a */
    /* loaded from: classes6.dex */
    public static class C13726a<K, V> extends ForwardingList<V> {

        /* renamed from: e */
        @xvk
        public final K f70150e;

        public C13726a(@xvk K k) {
            this.f70150e = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk V v) {
            add(0, v);
            return true;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, @xvk V v) {
            Preconditions.checkPositionIndex(i, 0);
            String valueOf = String.valueOf(this.f70150e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        @CanIgnoreReturnValue
        public boolean addAll(int i, Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            Preconditions.checkPositionIndex(i, 0);
            String valueOf = String.valueOf(this.f70150e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<V> delegate() {
            return Collections.emptyList();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.fmg$c */
    /* loaded from: classes6.dex */
    public class C13728c extends ForwardingCollection<Map.Entry<K, V>> {
        public C13728c() {
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (fmg.this.f70148e.containsKey(entry.getKey()) && fmg.this.f70149f.apply((Object) entry.getKey())) {
                return fmg.this.f70148e.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return Collections2.filter(fmg.this.f70148e.entries(), fmg.this.mo26996c());
        }
    }

    public fmg(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        this.f70148e = (Multimap) Preconditions.checkNotNull(multimap);
        this.f70149f = (Predicate) Preconditions.checkNotNull(predicate);
    }

    /* renamed from: a */
    public Multimap<K, V> mo26995a() {
        return this.f70148e;
    }

    @Override // com.sunia.HTREnginev2.hmg
    /* renamed from: c */
    public Predicate<? super Map.Entry<K, V>> mo26996c() {
        return Maps.m26505y(this.f70149f);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@CheckForNull Object obj) {
        if (this.f70148e.containsKey(obj)) {
            return this.f70149f.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Map<K, Collection<V>> createAsMap() {
        return Maps.filterKeys(this.f70148e.asMap(), this.f70149f);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<Map.Entry<K, V>> createEntries() {
        return new C13728c();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Set<K> createKeySet() {
        return Sets.filter(this.f70148e.keySet(), this.f70149f);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Multiset<K> createKeys() {
        return Multisets.filter(this.f70148e.keys(), this.f70149f);
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Collection<V> createValues() {
        return new img(this);
    }

    /* renamed from: e */
    public Collection<V> m54132e() {
        return this.f70148e instanceof SetMultimap ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.AbstractC6111f
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@xvk K k) {
        return this.f70149f.apply(k) ? this.f70148e.get(k) : this.f70148e instanceof SetMultimap ? new C13727b(k) : new C13726a(k);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@CheckForNull Object obj) {
        return containsKey(obj) ? this.f70148e.removeAll(obj) : m54132e();
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        Iterator<Collection<V>> it2 = asMap().values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    /* renamed from: com.sunia.HTREnginev2.fmg$b */
    /* loaded from: classes6.dex */
    public static class C13727b<K, V> extends ForwardingSet<V> {

        /* renamed from: e */
        @xvk
        public final K f70151e;

        public C13727b(@xvk K k) {
            this.f70151e = k;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk V v) {
            String valueOf = String.valueOf(this.f70151e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            String valueOf = String.valueOf(this.f70151e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(valueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return Collections.emptySet();
        }
    }
}
