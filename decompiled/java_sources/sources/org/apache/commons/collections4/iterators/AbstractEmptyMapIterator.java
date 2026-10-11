package org.apache.commons.collections4.iterators;

import com.sunia.HTREnginev2.AbstractC13549c3;

/* loaded from: classes11.dex */
public abstract class AbstractEmptyMapIterator<K, V> extends AbstractC13549c3<K> {
    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void add(Object obj) {
        super.add(obj);
    }

    public K getKey() {
        throw new IllegalStateException("Iterator contains no elements");
    }

    public V getValue() {
        throw new IllegalStateException("Iterator contains no elements");
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ boolean hasNext() {
        return super.hasNext();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ boolean hasPrevious() {
        return super.hasPrevious();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ Object next() {
        return super.next();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ int nextIndex() {
        return super.nextIndex();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ Object previous() {
        return super.previous();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ int previousIndex() {
        return super.previousIndex();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void remove() {
        super.remove();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void set(Object obj) {
        super.set(obj);
    }

    public V setValue(V v) {
        throw new IllegalStateException("Iterator contains no elements");
    }
}
