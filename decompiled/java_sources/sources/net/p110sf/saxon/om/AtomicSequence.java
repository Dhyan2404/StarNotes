package net.p110sf.saxon.om;

import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public interface AtomicSequence extends GroundedValue, Iterable<AtomicValue> {
    UnicodeString getCanonicalLexicalRepresentation();

    @Override // net.p110sf.saxon.om.GroundedValue
    int getLength();

    @Override // net.p110sf.saxon.om.GroundedValue
    UnicodeString getUnicodeStringValue();

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    AtomicValue head();

    @Override // net.p110sf.saxon.om.GroundedValue
    AtomicValue itemAt(int i);

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    AtomicIterator iterate();
}
