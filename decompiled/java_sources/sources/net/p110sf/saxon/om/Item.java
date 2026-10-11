package net.p110sf.saxon.om;

import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.value.EmptySequence;

/* loaded from: classes11.dex */
public interface Item extends GroundedValue {
    AtomicSequence atomize() throws XPathException;

    Genre getGenre();

    @Override // net.p110sf.saxon.om.GroundedValue
    default int getLength() {
        return 1;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    default String getStringValue() {
        return getUnicodeStringValue().toString();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    UnicodeString getUnicodeStringValue();

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    default Item head() {
        return this;
    }

    default boolean isStreamed() {
        return false;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    default Item itemAt(int i) {
        if (i == 0) {
            return head();
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    default GroundedValue reduce() {
        return this;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    default GroundedValue subsequence(int i, int i2) {
        return (i > 0 || i + i2 <= 0) ? EmptySequence.getInstance() : this;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    default String toShortString() {
        return toString();
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    default SingletonIterator iterate() {
        return (SingletonIterator) SingletonIterator.makeIterator(this);
    }
}
