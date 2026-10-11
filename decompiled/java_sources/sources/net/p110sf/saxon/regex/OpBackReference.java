package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class OpBackReference extends Operation {

    /* renamed from: a */
    public int f101164a;

    public OpBackReference(int i) {
        this.f101164a = i;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return "\\" + this.f101164a;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        int[] iArr = rEMatcher.f101249f;
        int i2 = this.f101164a;
        int i3 = iArr[i2];
        int i4 = rEMatcher.f101250g[i2];
        if (i3 == -1 || i4 == -1) {
            return EmptyIntIterator.getInstance();
        }
        if (i3 == i4) {
            return new IntSingletonIterator(i);
        }
        int i5 = i4 - i3;
        UnicodeString unicodeString = rEMatcher.f101245b;
        int i6 = i + i5;
        if (i6 - 1 >= unicodeString.length()) {
            return EmptyIntIterator.getInstance();
        }
        int i7 = 0;
        if (rEMatcher.f101244a.flags.isCaseIndependent()) {
            while (i7 < i5) {
                if (!rEMatcher.m63598b(unicodeString.codePointAt(i + i7), unicodeString.codePointAt(i3 + i7))) {
                    return EmptyIntIterator.getInstance();
                }
                i7++;
            }
        } else {
            while (i7 < i5) {
                if (unicodeString.codePointAt(i + i7) != unicodeString.codePointAt(i3 + i7)) {
                    return EmptyIntIterator.getInstance();
                }
                i7++;
            }
        }
        return new IntSingletonIterator(i6);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 0;
    }
}
