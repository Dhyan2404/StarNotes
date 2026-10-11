package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntUniversalSet extends IntSet {

    /* renamed from: a */
    public static final IntUniversalSet f103066a = new IntUniversalSet();

    public static IntUniversalSet getInstance() {
        return f103066a;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        throw new UnsupportedOperationException("IntUniversalSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        throw new UnsupportedOperationException("IntUniversalSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean containsAll(IntSet intSet) {
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        return this;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet except(IntSet intSet) {
        return intSet instanceof IntUniversalSet ? IntEmptySet.getInstance() : new IntComplementSet(intSet.copy());
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet intersect(IntSet intSet) {
        return intSet.copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isMutable() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        throw new UnsupportedOperationException("Cannot enumerate an infinite set");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return new IntComplementSet(new IntHashSet());
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException("IntUniversalSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return Integer.MAX_VALUE;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet union(IntSet intSet) {
        return this;
    }
}
