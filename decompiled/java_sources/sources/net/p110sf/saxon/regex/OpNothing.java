package net.p110sf.saxon.regex;

import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;

/* loaded from: classes11.dex */
public class OpNothing extends Operation {
    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return "()";
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        return new IntSingletonIterator(i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 7;
    }
}
