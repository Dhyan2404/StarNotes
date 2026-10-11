package net.p110sf.saxon.tree.iter;

import java.util.Iterator;
import java.util.function.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;

/* loaded from: classes11.dex */
public class SequenceIteratorOverJavaIterator<J> implements SequenceIterator {

    /* renamed from: e */
    public final Iterator<J> f102456e;

    /* renamed from: f */
    public final Function<J, Item> f102457f;

    public SequenceIteratorOverJavaIterator(Iterator<J> it2, Function<J, Item> function) {
        this.f102456e = it2;
        this.f102457f = function;
    }

    @Override // net.p110sf.saxon.om.SequenceIterator
    public Item next() {
        if (this.f102456e.hasNext()) {
            return (Item) this.f102457f.apply(this.f102456e.next());
        }
        return null;
    }
}
