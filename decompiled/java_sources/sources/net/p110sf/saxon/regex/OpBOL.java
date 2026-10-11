package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;

/* loaded from: classes11.dex */
public class OpBOL extends Operation {
    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return "^";
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        return i != 0 ? (rEMatcher.f101244a.flags.isMultiLine() && rEMatcher.m63599c(i + (-1)) && ((long) i) < rEMatcher.f101245b.length()) ? new IntSingletonIterator(i) : EmptyIntIterator.getInstance() : new IntSingletonIterator(i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 1;
    }
}
