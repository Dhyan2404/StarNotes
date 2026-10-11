package net.p110sf.saxon.p111z;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;

/* loaded from: classes11.dex */
public class IntBlockSet extends IntSet {

    /* renamed from: a */
    public final int f102982a;

    /* renamed from: b */
    public final int f102983b;

    /* renamed from: c */
    public int f102984c = -1;

    public IntBlockSet(int i, int i2) {
        this.f102982a = i;
        this.f102983b = i2;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        throw new UnsupportedOperationException("add");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        throw new UnsupportedOperationException(Constants.CLEAR_ATTRIBUTES);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return i >= this.f102982a && i <= this.f102983b;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        return this;
    }

    public boolean equals(Object obj) {
        return mutableCopy().equals(obj);
    }

    public int getEndPoint() {
        return this.f102983b;
    }

    public int getStartPoint() {
        return this.f102982a;
    }

    public int hashCode() {
        if (this.f102984c == -1) {
            this.f102984c = (this.f102982a + (this.f102983b << 3)) ^ 594184689;
        }
        return this.f102984c;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isMutable() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        return mutableCopy().iterator();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return new IntRangeSet(new int[]{this.f102982a}, new int[]{this.f102983b});
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException(SyncConstant.SYNC_ACTION_REMOVE);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return this.f102983b - this.f102982a;
    }

    public String toString() {
        return this.f102982a + " - " + this.f102983b;
    }
}
