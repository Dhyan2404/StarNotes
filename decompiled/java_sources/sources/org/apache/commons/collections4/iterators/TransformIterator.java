package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class TransformIterator<I, O> implements Iterator<O> {

    /* renamed from: e */
    public Iterator<? extends I> f105108e;

    /* renamed from: f */
    public Transformer<? super I, ? extends O> f105109f;

    public TransformIterator() {
    }

    public Iterator<? extends I> getIterator() {
        return this.f105108e;
    }

    public Transformer<? super I, ? extends O> getTransformer() {
        return this.f105109f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105108e.hasNext();
    }

    @Override // java.util.Iterator
    public O next() {
        return transform(this.f105108e.next());
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f105108e.remove();
    }

    public void setIterator(Iterator<? extends I> it2) {
        this.f105108e = it2;
    }

    public void setTransformer(Transformer<? super I, ? extends O> transformer) {
        this.f105109f = transformer;
    }

    public O transform(I i) {
        return this.f105109f.transform(i);
    }

    public TransformIterator(Iterator<? extends I> it2) {
        this.f105108e = it2;
    }

    public TransformIterator(Iterator<? extends I> it2, Transformer<? super I, ? extends O> transformer) {
        this.f105108e = it2;
        this.f105109f = transformer;
    }
}
