package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class EmptyIntIterator implements IntIterator {

    /* renamed from: a */
    public static final EmptyIntIterator f100035a = new EmptyIntIterator();

    public static EmptyIntIterator getInstance() {
        return f100035a;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public boolean hasNext() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public int next() {
        return 0;
    }
}
