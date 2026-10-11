package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntRepeatIterator implements IntIterator {

    /* renamed from: a */
    public final int f103034a;

    /* renamed from: b */
    public int f103035b;

    public IntRepeatIterator(int i, int i2) {
        this.f103034a = i;
        this.f103035b = i2;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public boolean hasNext() {
        return this.f103035b > 0;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public int next() {
        this.f103035b--;
        return this.f103034a;
    }
}
