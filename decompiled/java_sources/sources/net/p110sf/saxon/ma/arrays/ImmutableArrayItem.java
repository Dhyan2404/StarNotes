package net.p110sf.saxon.ma.arrays;

import java.util.Arrays;
import net.p110sf.saxon.ma.zeno.ZenoChain;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSet;

/* loaded from: classes11.dex */
public class ImmutableArrayItem extends AbstractArrayItem {

    /* renamed from: f */
    public final ZenoChain<GroundedValue> f100613f;

    public ImmutableArrayItem(SimpleArrayItem simpleArrayItem) {
        this.f100613f = new ZenoChain().addAll(simpleArrayItem.getMembers());
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public int arrayLength() {
        return this.f100613f.size();
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem concat(ArrayItem arrayItem) {
        if (arrayItem.arrayLength() == 0) {
            return this;
        }
        return new ImmutableArrayItem(this.f100613f.addAll(arrayItem instanceof ImmutableArrayItem ? ((ImmutableArrayItem) arrayItem).f100613f : new ImmutableArrayItem((SimpleArrayItem) arrayItem).f100613f));
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public GroundedValue get(int i) {
        return this.f100613f.get(i);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem insert(int i, GroundedValue groundedValue) {
        return new ImmutableArrayItem(this.f100613f.insert(i, groundedValue));
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public boolean isEmpty() {
        return this.f100613f.isEmpty();
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public Iterable<GroundedValue> members() {
        return this.f100613f;
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem put(int i, GroundedValue groundedValue) {
        ZenoChain<GroundedValue> replace = this.f100613f.replace(i, groundedValue);
        return replace == this.f100613f ? this : new ImmutableArrayItem(replace);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem remove(int i) {
        ZenoChain<GroundedValue> remove = this.f100613f.remove(i);
        return remove == this.f100613f ? this : new ImmutableArrayItem(remove);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem removeSeveral(IntSet intSet) {
        int size = intSet.size();
        int[] iArr = new int[size];
        IntIterator it2 = intSet.iterator();
        int i = 0;
        while (it2.hasNext()) {
            iArr[i] = it2.next();
            i++;
        }
        Arrays.sort(iArr);
        ZenoChain<GroundedValue> zenoChain = this.f100613f;
        for (int i2 = size - 1; i2 >= 0; i2--) {
            zenoChain = zenoChain.remove(iArr[i2]);
        }
        return zenoChain == this.f100613f ? this : new ImmutableArrayItem(zenoChain);
    }

    @Override // net.p110sf.saxon.ma.arrays.ArrayItem
    public ArrayItem subArray(int i, int i2) {
        return new ImmutableArrayItem(this.f100613f.subList(i, i2));
    }

    public ImmutableArrayItem(ZenoChain<GroundedValue> zenoChain) {
        this.f100613f = zenoChain;
    }
}
