package net.p110sf.saxon.p111z;

import java.util.function.Supplier;

/* loaded from: classes11.dex */
public class ConcatenatingIntIterator implements IntIterator {

    /* renamed from: a */
    public IntIterator f102974a;

    /* renamed from: b */
    public Supplier<IntIterator> f102975b;

    /* renamed from: c */
    public IntIterator f102976c;

    public ConcatenatingIntIterator(IntIterator intIterator, Supplier<IntIterator> supplier) {
        this.f102974a = intIterator;
        this.f102975b = supplier;
        this.f102976c = intIterator;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public boolean hasNext() {
        if (this.f102976c.hasNext()) {
            return true;
        }
        if (this.f102976c != this.f102974a) {
            return false;
        }
        this.f102974a = null;
        IntIterator intIterator = this.f102975b.get();
        this.f102976c = intIterator;
        return intIterator.hasNext();
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public int next() {
        return this.f102976c.next();
    }
}
