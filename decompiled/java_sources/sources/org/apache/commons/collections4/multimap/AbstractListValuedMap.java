package org.apache.commons.collections4.multimap;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.apache.commons.collections4.ListUtils;
import org.apache.commons.collections4.ListValuedMap;

/* loaded from: classes11.dex */
public abstract class AbstractListValuedMap<K, V> extends AbstractMultiValuedMap<K, V> implements ListValuedMap<K, V> {

    /* renamed from: org.apache.commons.collections4.multimap.AbstractListValuedMap$b */
    /* loaded from: classes11.dex */
    public class C18796b extends AbstractMultiValuedMap<K, V>.C18805i implements List<V> {
        public C18796b(K k) {
            super(k);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            List<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                mo66028a = AbstractListValuedMap.this.createCollection();
                AbstractListValuedMap.this.getMap().put(this.f105264e, mo66028a);
            }
            mo66028a.add(i, v);
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            List<V> mo66028a = mo66028a();
            if (mo66028a != null) {
                return mo66028a.addAll(i, collection);
            }
            List<V> createCollection = AbstractListValuedMap.this.createCollection();
            boolean addAll = createCollection.addAll(i, collection);
            if (addAll) {
                AbstractListValuedMap.this.getMap().put(this.f105264e, createCollection);
            }
            return addAll;
        }

        @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap.C18805i
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<V> mo66028a() {
            return AbstractListValuedMap.this.getMap().get(this.f105264e);
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            List<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return Collections.emptyList().equals(obj);
            }
            if (obj instanceof List) {
                return ListUtils.isEqualList(mo66028a, (List) obj);
            }
            return false;
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) ListUtils.emptyIfNull(mo66028a()).get(i);
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            return ListUtils.hashCodeForList(mo66028a());
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            return ListUtils.emptyIfNull(mo66028a()).indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            return ListUtils.emptyIfNull(mo66028a()).lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            return new C18795a(this.f105264e);
        }

        @Override // java.util.List
        public V remove(int i) {
            List emptyIfNull = ListUtils.emptyIfNull(mo66028a());
            V v = (V) emptyIfNull.remove(i);
            if (emptyIfNull.isEmpty()) {
                AbstractListValuedMap.this.remove((Object) this.f105264e);
            }
            return v;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            return (V) ListUtils.emptyIfNull(mo66028a()).set(i, v);
        }

        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            return ListUtils.emptyIfNull(mo66028a()).subList(i, i2);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            return new C18795a(this.f105264e, i);
        }
    }

    public AbstractListValuedMap() {
    }

    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap
    public abstract List<V> createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap, org.apache.commons.collections4.MultiValuedMap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((AbstractListValuedMap<K, V>) obj);
    }

    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap
    public Map<K, List<V>> getMap() {
        return super.getMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap
    public /* bridge */ /* synthetic */ Collection wrappedCollection(Object obj) {
        return wrappedCollection((AbstractListValuedMap<K, V>) obj);
    }

    public AbstractListValuedMap(Map<K, ? extends List<V>> map) {
        super(map);
    }

    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap, org.apache.commons.collections4.MultiValuedMap
    public List<V> get(K k) {
        return wrappedCollection((AbstractListValuedMap<K, V>) k);
    }

    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap, org.apache.commons.collections4.MultiValuedMap
    public List<V> remove(Object obj) {
        return ListUtils.emptyIfNull(getMap().remove(obj));
    }

    @Override // org.apache.commons.collections4.multimap.AbstractMultiValuedMap
    public List<V> wrappedCollection(K k) {
        return new C18796b(k);
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractListValuedMap$a */
    /* loaded from: classes11.dex */
    public class C18795a implements ListIterator<V> {

        /* renamed from: e */
        public final K f105236e;

        /* renamed from: f */
        public List<V> f105237f;

        /* renamed from: g */
        public ListIterator<V> f105238g;

        public C18795a(K k) {
            this.f105236e = k;
            List<V> emptyIfNull = ListUtils.emptyIfNull(AbstractListValuedMap.this.getMap().get(k));
            this.f105237f = emptyIfNull;
            this.f105238g = emptyIfNull.listIterator();
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            if (AbstractListValuedMap.this.getMap().get(this.f105236e) == null) {
                List<V> createCollection = AbstractListValuedMap.this.createCollection();
                AbstractListValuedMap.this.getMap().put(this.f105236e, createCollection);
                this.f105237f = createCollection;
                this.f105238g = createCollection.listIterator();
            }
            this.f105238g.add(v);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f105238g.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f105238g.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public V next() {
            return this.f105238g.next();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f105238g.nextIndex();
        }

        @Override // java.util.ListIterator
        public V previous() {
            return this.f105238g.previous();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f105238g.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            this.f105238g.remove();
            if (this.f105237f.isEmpty()) {
                AbstractListValuedMap.this.getMap().remove(this.f105236e);
            }
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            this.f105238g.set(v);
        }

        public C18795a(K k, int i) {
            this.f105236e = k;
            List<V> emptyIfNull = ListUtils.emptyIfNull(AbstractListValuedMap.this.getMap().get(k));
            this.f105237f = emptyIfNull;
            this.f105238g = emptyIfNull.listIterator(i);
        }
    }
}
