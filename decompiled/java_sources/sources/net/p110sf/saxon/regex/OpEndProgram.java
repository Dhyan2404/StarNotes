package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;

/* loaded from: classes11.dex */
public class OpEndProgram extends Operation {
    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return "\\Z";
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        if (rEMatcher.f101252i) {
            return ((long) i) >= rEMatcher.f101245b.length() ? new IntSingletonIterator(i) : EmptyIntIterator.getInstance();
        }
        rEMatcher.setParenEnd(0, i);
        return new IntSingletonIterator(i);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 7;
    }
}
