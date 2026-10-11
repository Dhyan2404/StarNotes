package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntEmptySet extends IntSet {

    /* renamed from: a */
    public static final IntEmptySet f102986a = new IntEmptySet();

    /* renamed from: net.sf.saxon.z.IntEmptySet$b */
    /* loaded from: classes11.dex */
    public static class C18584b implements IntIterator {
        public C18584b() {
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return false;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            return Integer.MIN_VALUE;
        }
    }

    public static IntEmptySet getInstance() {
        return f102986a;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        throw new UnsupportedOperationException("IntEmptySet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        throw new UnsupportedOperationException("IntEmptySet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean containsAll(IntSet intSet) {
        return intSet.isEmpty();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        return this;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet except(IntSet intSet) {
        return this;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet intersect(IntSet intSet) {
        return this;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isMutable() {
        return false;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        return new C18584b();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return new IntHashSet();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException("IntEmptySet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet union(IntSet intSet) {
        return intSet.copy();
    }
}
