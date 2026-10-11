package org.apache.commons.collections4.map;

import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections4.keyvalue.AbstractMapEntryDecorator;
import org.apache.commons.collections4.set.AbstractSetDecorator;

/* loaded from: classes11.dex */
public abstract class AbstractInputCheckedMapDecorator<K, V> extends AbstractMapDecorator<K, V> {

    /* renamed from: org.apache.commons.collections4.map.AbstractInputCheckedMapDecorator$a */
    /* loaded from: classes11.dex */
    public class C18751a extends AbstractIteratorDecorator<Map.Entry<K, V>> {

        /* renamed from: f */
        public final AbstractInputCheckedMapDecorator<K, V> f105157f;

        public C18751a(Iterator<Map.Entry<K, V>> it2, AbstractInputCheckedMapDecorator<K, V> abstractInputCheckedMapDecorator) {
            super(it2);
            this.f105157f = abstractInputCheckedMapDecorator;
        }

        @Override // org.apache.commons.collections4.iterators.AbstractIteratorDecorator, java.util.Iterator
        public Map.Entry<K, V> next() {
            return new C18752b(getIterator().next(), this.f105157f);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractInputCheckedMapDecorator$b */
    /* loaded from: classes11.dex */
    public class C18752b extends AbstractMapEntryDecorator<K, V> {

        /* renamed from: f */
        public final AbstractInputCheckedMapDecorator<K, V> f105159f;

        public C18752b(Map.Entry<K, V> entry, AbstractInputCheckedMapDecorator<K, V> abstractInputCheckedMapDecorator) {
            super(entry);
            this.f105159f = abstractInputCheckedMapDecorator;
        }

        @Override // org.apache.commons.collections4.keyvalue.AbstractMapEntryDecorator, java.util.Map.Entry
        public V setValue(V v) {
            return getMapEntry().setValue(this.f105159f.checkSetValue(v));
        }
    }

    public AbstractInputCheckedMapDecorator() {
    }

    public abstract V checkSetValue(V v);

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        return isSetValueChecking() ? new EntrySet(this.map.entrySet(), this) : this.map.entrySet();
    }

    public boolean isSetValueChecking() {
        return true;
    }

    public AbstractInputCheckedMapDecorator(Map<K, V> map) {
        super(map);
    }

    /* loaded from: classes11.dex */
    public class EntrySet extends AbstractSetDecorator<Map.Entry<K, V>> {
        private static final long serialVersionUID = 4354731610923110264L;
        private final AbstractInputCheckedMapDecorator<K, V> parent;

        public EntrySet(Set<Map.Entry<K, V>> set, AbstractInputCheckedMapDecorator<K, V> abstractInputCheckedMapDecorator) {
            super(set);
            this.parent = abstractInputCheckedMapDecorator;
        }

        @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections4.Bag
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C18751a(decorated().iterator(), this.parent);
        }

        @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
        public Object[] toArray() {
            Object[] array = decorated().toArray();
            for (int i = 0; i < array.length; i++) {
                array[i] = new C18752b((Map.Entry) array[i], this.parent);
            }
            return array;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2 = (T[]) decorated().toArray(tArr.length > 0 ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), 0) : tArr);
            for (int i = 0; i < tArr2.length; i++) {
                tArr2[i] = new C18752b((Map.Entry) tArr2[i], this.parent);
            }
            if (tArr2.length > tArr.length) {
                return tArr2;
            }
            System.arraycopy(tArr2, 0, tArr, 0, tArr2.length);
            if (tArr.length > tArr2.length) {
                tArr[tArr2.length] = null;
            }
            return tArr;
        }
    }
}
