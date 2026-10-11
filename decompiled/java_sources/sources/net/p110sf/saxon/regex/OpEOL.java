package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class OpEOL extends Operation {
    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return "$";
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return 0;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        UnicodeString unicodeString = rEMatcher.f101245b;
        return rEMatcher.f101244a.flags.isMultiLine() ? (0 >= unicodeString.length() || ((long) i) >= unicodeString.length() || rEMatcher.m63599c(i)) ? new IntSingletonIterator(i) : EmptyIntIterator.getInstance() : (0 >= unicodeString.length() || ((long) i) >= unicodeString.length()) ? new IntSingletonIterator(i) : EmptyIntIterator.getInstance();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 2;
    }
}
