package net.p110sf.saxon.ma.zeno;

import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.GroundedIterator;
import net.p110sf.saxon.tree.iter.LookaheadIterator;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public class ZenoSequence implements GroundedValue {

    /* renamed from: e */
    public final ZenoChain<Item> f100743e;

    /* loaded from: classes11.dex */
    public static class ZenoSequenceIterator implements GroundedIterator, LastPositionFinder, LookaheadIterator {

        /* renamed from: e */
        public final ZenoSequence f100744e;

        /* renamed from: f */
        public final Iterator<Item> f100745f;

        /* renamed from: g */
        public int f100746g = 0;

        public ZenoSequenceIterator(ZenoSequence zenoSequence) {
            this.f100744e = zenoSequence;
            this.f100745f = zenoSequence.f100743e.iterator();
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public int getLength() {
            return this.f100744e.getLength();
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue getResidue() {
            return this.f100744e.subsequence(this.f100746g, Integer.MAX_VALUE);
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean hasNext() {
            return this.f100745f.hasNext();
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public boolean isActuallyGrounded() {
            return true;
        }

        @Override // net.p110sf.saxon.tree.iter.GroundedIterator
        public GroundedValue materialize() {
            return this.f100744e;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public Item next() {
            this.f100746g++;
            if (this.f100745f.hasNext()) {
                return this.f100745f.next();
            }
            return null;
        }

        @Override // net.p110sf.saxon.expr.LastPositionFinder
        public boolean supportsGetLength() {
            return true;
        }

        @Override // net.p110sf.saxon.tree.iter.LookaheadIterator
        public boolean supportsHasNext() {
            return true;
        }
    }

    public ZenoSequence() {
        this.f100743e = new ZenoChain<>();
    }

    public static ZenoSequence fromList(List<Item> list) {
        return new ZenoSequence(new ZenoChain().addAll(list));
    }

    public static ZenoSequence join(List<GroundedValue> list) {
        ZenoChain zenoChain = new ZenoChain();
        for (GroundedValue groundedValue : list) {
            if (groundedValue instanceof ZenoSequence) {
                zenoChain = zenoChain.concat(((ZenoSequence) groundedValue).f100743e);
            } else {
                Iterator<? extends Item> it2 = groundedValue.asIterable().iterator();
                while (it2.hasNext()) {
                    zenoChain = zenoChain.add(it2.next());
                }
            }
        }
        return new ZenoSequence(zenoChain);
    }

    public ZenoSequence append(Item item) {
        return new ZenoSequence(this.f100743e.add(item));
    }

    public ZenoSequence appendSequence(GroundedValue groundedValue) {
        if (this.f100743e.isEmpty() && (groundedValue instanceof ZenoSequence)) {
            return (ZenoSequence) groundedValue;
        }
        int length = groundedValue.getLength();
        if (length == 0) {
            return this;
        }
        if (length != 1) {
            return groundedValue instanceof ZenoSequence ? new ZenoSequence(this.f100743e.concat(((ZenoSequence) groundedValue).f100743e)) : new ZenoSequence(this.f100743e.addAll(groundedValue.asIterable()));
        }
        return new ZenoSequence(this.f100743e.add(groundedValue.head()));
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return this.f100743e.size();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() throws XPathException {
        int length = getLength();
        String str = "";
        if (length == 0) {
            return "";
        }
        if (length == 1) {
            return head().getStringValue();
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Item> it2 = this.f100743e.iterator();
        while (it2.hasNext()) {
            Item next = it2.next();
            sb.append(str);
            sb.append(next.getStringValue());
            str = " ";
        }
        return sb.toString();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() throws XPathException {
        int length = getLength();
        if (length == 0) {
            return EmptyUnicodeString.getInstance();
        }
        if (length == 1) {
            return head().getUnicodeStringValue();
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        UnicodeString emptyUnicodeString = EmptyUnicodeString.getInstance();
        Iterator<Item> it2 = this.f100743e.iterator();
        while (it2.hasNext()) {
            Item next = it2.next();
            unicodeBuilder.append(emptyUnicodeString);
            emptyUnicodeString = StringConstants.SINGLE_SPACE;
            unicodeBuilder.append(next.getStringValue());
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public Item head() {
        if (this.f100743e.isEmpty()) {
            return null;
        }
        return this.f100743e.get(0);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public Item itemAt(int i) {
        try {
            return this.f100743e.get(i);
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public SequenceIterator iterate() {
        return new ZenoSequenceIterator(this);
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        int size = this.f100743e.size();
        if (i >= size || i2 <= 0) {
            return EmptySequence.getInstance();
        }
        if (i + i2 > size) {
            i2 = size - i;
        }
        return i2 == 1 ? itemAt(i) : new ZenoSequence(this.f100743e.subList(i, i2 + i));
    }

    public ZenoSequence(ZenoChain<Item> zenoChain) {
        this.f100743e = zenoChain;
    }
}
