package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntSingletonSet extends IntSet {

    /* renamed from: a */
    public final int f103039a;

    public IntSingletonSet(int i) {
        this.f103039a = i;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean add(int i) {
        throw new UnsupportedOperationException("IntSingletonSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public void clear() {
        throw new UnsupportedOperationException("IntSingletonSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean contains(int i) {
        return this.f103039a == i;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean containsAll(IntSet intSet) {
        if (intSet.size() > 1) {
            return false;
        }
        IntIterator it2 = intSet.iterator();
        while (it2.hasNext()) {
            if (this.f103039a != it2.next()) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet copy() {
        return this;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet except(IntSet intSet) {
        return intSet.contains(this.f103039a) ? IntEmptySet.getInstance() : this;
    }

    public int getMember() {
        return this.f103039a;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet intersect(IntSet intSet) {
        return intSet.contains(this.f103039a) ? this : IntEmptySet.getInstance();
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
        return new IntSingletonIterator(this.f103039a);
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet mutableCopy() {
        IntHashSet intHashSet = new IntHashSet();
        intHashSet.add(this.f103039a);
        return intHashSet;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public boolean remove(int i) {
        throw new UnsupportedOperationException("IntSingletonSet is immutable");
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public int size() {
        return 1;
    }

    @Override // net.p110sf.saxon.p111z.IntSet
    public IntSet union(IntSet intSet) {
        IntSet mutableCopy = intSet.mutableCopy();
        mutableCopy.add(this.f103039a);
        return mutableCopy;
    }
}
