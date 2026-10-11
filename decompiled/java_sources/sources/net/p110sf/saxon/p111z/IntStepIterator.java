package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntStepIterator implements IntIterator {

    /* renamed from: a */
    public int f103040a;

    /* renamed from: b */
    public final int f103041b;

    /* renamed from: c */
    public final int f103042c;

    public IntStepIterator(int i, int i2, int i3) {
        this.f103040a = i;
        this.f103041b = i2;
        this.f103042c = i3;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public boolean hasNext() {
        if (this.f103041b > 0) {
            if (this.f103040a <= this.f103042c) {
                return true;
            }
        } else if (this.f103040a >= this.f103042c) {
            return true;
        }
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntIterator
    public int next() {
        int i = this.f103040a;
        this.f103040a = this.f103041b + i;
        return i;
    }
}
