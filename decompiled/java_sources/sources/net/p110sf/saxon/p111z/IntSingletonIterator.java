package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntSingletonIterator implements IntIterator {

    /* renamed from: a */
    public final int f103037a;

    /* renamed from: b */
    public boolean f103038b = false;

    public IntSingletonIterator(int i) {
        this.f103037a = i;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public boolean hasNext() {
        return !this.f103038b;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public int next() {
        this.f103038b = true;
        return this.f103037a;
    }
}
