package net.p110sf.saxon.value;

import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.tree.iter.EmptyIterator;

/* loaded from: classes11.dex */
public final class EmptySequence implements GroundedValue {

    /* renamed from: e */
    public static final EmptySequence f102867e = new EmptySequence();

    public static EmptySequence getInstance() {
        return f102867e;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return false;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof GroundedValue) && ((GroundedValue) obj).getLength() == 0) {
            return true;
        }
        throw new ClassCastException("Cannot compare " + obj.getClass() + " to empty sequence");
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public final int getLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        return "";
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return EmptyUnicodeString.getInstance();
    }

    public int hashCode() {
        return 42;
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public Item head() {
        return null;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public Item itemAt(int i) {
        return null;
    }

    @Override // net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public SequenceIterator iterate() {
        return EmptyIterator.emptyIterator();
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue reduce() {
        return this;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public GroundedValue subsequence(int i, int i2) {
        return this;
    }

    public String toString() {
        return "()";
    }
}
