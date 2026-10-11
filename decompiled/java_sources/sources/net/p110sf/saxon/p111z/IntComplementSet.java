package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntComplementSet extends IntSet {

    /* renamed from: a */
    public final IntSet f102985a;

    public IntComplementSet(IntSet intSet) {
        this.f102985a = intSet.copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        boolean contains = contains(i);
        if (!contains) {
            this.f102985a.remove(i);
        }
        return contains;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        throw new UnsupportedOperationException("IntComplementSet cannot be emptied");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return !this.f102985a.contains(i);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean containsAll(IntSet intSet) {
        if (intSet instanceof IntComplementSet) {
            return ((IntComplementSet) intSet).f102985a.containsAll(this.f102985a);
        }
        if (intSet instanceof IntUniversalSet) {
            return !this.f102985a.isEmpty();
        }
        IntIterator it2 = intSet.iterator();
        while (it2.hasNext()) {
            if (this.f102985a.contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        return new IntComplementSet(this.f102985a.copy());
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet except(IntSet intSet) {
        return new IntComplementSet(this.f102985a.union(intSet));
    }

    public IntSet getExclusions() {
        return this.f102985a;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet intersect(IntSet intSet) {
        return intSet.isEmpty() ? IntEmptySet.getInstance() : intSet == IntUniversalSet.getInstance() ? copy() : intSet instanceof IntComplementSet ? new IntComplementSet(this.f102985a.union(((IntComplementSet) intSet).f102985a)) : intSet.intersect(this);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntIterator iterator() {
        throw new UnsupportedOperationException("Cannot enumerate an infinite set");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        return copy();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        boolean contains = contains(i);
        if (contains) {
            this.f102985a.add(i);
        }
        return contains;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return Integer.MAX_VALUE - this.f102985a.size();
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet union(IntSet intSet) {
        return new IntComplementSet(this.f102985a.except(intSet));
    }
}
