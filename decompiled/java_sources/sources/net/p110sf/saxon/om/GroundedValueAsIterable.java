package net.p110sf.saxon.om;

import java.util.Iterator;
import net.p110sf.saxon.tree.jiter.WrappingJavaIterator;

/* loaded from: classes11.dex */
public class GroundedValueAsIterable implements Iterable<Item> {

    /* renamed from: e */
    public final GroundedValue f100798e;

    public GroundedValueAsIterable(GroundedValue groundedValue) {
        this.f100798e = groundedValue;
    }

    @Override // java.lang.Iterable
    public Iterator<Item> iterator() {
        return new WrappingJavaIterator(this.f100798e.iterate());
    }
}
