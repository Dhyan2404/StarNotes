package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public abstract class IntSet {
    public abstract boolean add(int i);

    public abstract void clear();

    public abstract boolean contains(int i);

    public boolean containsAll(IntSet intSet) {
        if (intSet == IntUniversalSet.getInstance() || (intSet instanceof IntComplementSet)) {
            return false;
        }
        IntIterator it2 = intSet.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public abstract IntSet copy();

    public IntSet except(IntSet intSet) {
        IntHashSet intHashSet = new IntHashSet(size());
        IntIterator it2 = iterator();
        while (it2.hasNext()) {
            int next = it2.next();
            if (!intSet.contains(next)) {
                intHashSet.add(next);
            }
        }
        return intHashSet;
    }

    public IntSet intersect(IntSet intSet) {
        if (isEmpty() || intSet.isEmpty()) {
            return IntEmptySet.getInstance();
        }
        IntHashSet intHashSet = new IntHashSet(size());
        IntIterator it2 = iterator();
        while (it2.hasNext()) {
            int next = it2.next();
            if (intSet.contains(next)) {
                intHashSet.add(next);
            }
        }
        return intHashSet;
    }

    public abstract boolean isEmpty();

    public boolean isMutable() {
        return true;
    }

    public abstract IntIterator iterator();

    public abstract IntSet mutableCopy();

    public abstract boolean remove(int i);

    public abstract int size();

    public IntSet union(IntSet intSet) {
        if (intSet == IntUniversalSet.getInstance()) {
            return intSet;
        }
        if (isEmpty()) {
            return intSet.copy();
        }
        if (intSet.isEmpty()) {
            return copy();
        }
        if (intSet instanceof IntComplementSet) {
            return intSet.union(this);
        }
        IntHashSet intHashSet = new IntHashSet(size() + intSet.size());
        IntIterator it2 = iterator();
        while (it2.hasNext()) {
            intHashSet.add(it2.next());
        }
        IntIterator it3 = intSet.iterator();
        while (it3.hasNext()) {
            intHashSet.add(it3.next());
        }
        return intHashSet;
    }
}
