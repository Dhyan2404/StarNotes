package net.p110sf.saxon.om;

import java.util.Collections;
import java.util.Iterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class EmptyAtomicSequence implements AtomicSequence {

    /* renamed from: e */
    public static final EmptyAtomicSequence f100780e = new EmptyAtomicSequence();

    public static EmptyAtomicSequence getInstance() {
        return f100780e;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return false;
    }

    @Override // net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return EmptyUnicodeString.getInstance();
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public int getLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        return "";
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return EmptyUnicodeString.getInstance();
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public AtomicValue head() {
        return null;
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue
    public AtomicValue itemAt(int i) {
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<AtomicValue> iterator() {
        return Collections.emptyIterator();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public EmptyAtomicSequence reduce() {
        return this;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public EmptyAtomicSequence subsequence(int i, int i2) {
        return this;
    }

    @Override // net.p110sf.saxon.om.AtomicSequence, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public AtomicIterator iterate() {
        return EmptyIterator.ofAtomic();
    }
}
