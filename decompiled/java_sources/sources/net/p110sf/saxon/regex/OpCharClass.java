package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.p111z.IntRangeSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.p111z.IntSetPredicate;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.p111z.IntSingletonSet;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.str.UnicodeString;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class OpCharClass extends Operation {

    /* renamed from: a */
    public final IntPredicateProxy f101171a;

    public OpCharClass(IntPredicateProxy intPredicateProxy) {
        this.f101171a = intPredicateProxy;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        IntPredicateProxy intPredicateProxy = this.f101171a;
        if (intPredicateProxy instanceof IntSetPredicate) {
            IntSet intSet = ((IntSetPredicate) intPredicateProxy).getIntSet();
            if (intSet instanceof IntSingletonSet) {
                return "" + ((char) ((IntSingletonSet) intSet).getMember());
            }
            if (intSet instanceof IntRangeSet) {
                StringBuilder sb = new StringBuilder(64);
                IntRangeSet intRangeSet = (IntRangeSet) intSet;
                sb.append(IteratorUtils.f104923a);
                for (int i = 0; i < intRangeSet.getNumberOfRanges(); i++) {
                    sb.append((char) intRangeSet.getStartPoints()[1]);
                    sb.append("-");
                    sb.append((char) intRangeSet.getEndPoints()[1]);
                }
                sb.append(IteratorUtils.f104923a);
                return sb.toString();
            }
        }
        return "[....]";
    }

    @Override // net.p110sf.saxon.regex.Operation
    public CharacterClass getInitialCharacterClass(boolean z) {
        IntPredicateProxy intPredicateProxy = this.f101171a;
        return intPredicateProxy instanceof CharacterClass ? (CharacterClass) intPredicateProxy : super.getInitialCharacterClass(z);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return 1;
    }

    public IntPredicateProxy getPredicate() {
        return this.f101171a;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        UnicodeString unicodeString = rEMatcher.f101245b;
        long j = i;
        return (j >= unicodeString.length() || !this.f101171a.test(unicodeString.codePointAt(j))) ? EmptyIntIterator.getInstance() : new IntSingletonIterator(i + 1);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return 1024;
    }
}
