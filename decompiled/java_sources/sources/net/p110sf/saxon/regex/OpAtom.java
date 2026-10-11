package net.p110sf.saxon.regex;

import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntHashSet;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntSingletonIterator;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.regex.charclass.EmptyCharacterClass;
import net.p110sf.saxon.regex.charclass.IntSetCharacterClass;
import net.p110sf.saxon.regex.charclass.SingletonCharacterClass;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class OpAtom extends Operation {

    /* renamed from: a */
    public final UnicodeString f101162a;

    /* renamed from: b */
    public final int f101163b;

    public OpAtom(UnicodeString unicodeString) {
        this.f101162a = unicodeString;
        this.f101163b = unicodeString.length32();
    }

    /* renamed from: a */
    public UnicodeString m63571a() {
        return this.f101162a;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public String display() {
        return this.f101162a.toString();
    }

    @Override // net.p110sf.saxon.regex.Operation
    public CharacterClass getInitialCharacterClass(boolean z) {
        if (this.f101163b == 0) {
            return EmptyCharacterClass.getInstance();
        }
        if (z) {
            int codePointAt = this.f101162a.codePointAt(0L);
            int[] caseVariants = CaseVariants.getCaseVariants(codePointAt);
            if (caseVariants.length > 0) {
                IntHashSet intHashSet = new IntHashSet(caseVariants.length);
                intHashSet.add(codePointAt);
                for (int i : caseVariants) {
                    intHashSet.add(i);
                }
                return new IntSetCharacterClass(intHashSet);
            }
        }
        return new SingletonCharacterClass(this.f101162a.codePointAt(0L));
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int getMatchLength() {
        return this.f101163b;
    }

    @Override // net.p110sf.saxon.regex.Operation
    public IntIterator iterateMatches(REMatcher rEMatcher, int i) {
        UnicodeString unicodeString = rEMatcher.f101245b;
        if (this.f101163b + i > unicodeString.length()) {
            return EmptyIntIterator.getInstance();
        }
        int i2 = 0;
        if (rEMatcher.f101244a.flags.isCaseIndependent()) {
            while (i2 < this.f101163b) {
                if (!rEMatcher.m63598b(unicodeString.codePointAt(i + i2), this.f101162a.codePointAt(i2))) {
                    return EmptyIntIterator.getInstance();
                }
                i2++;
            }
        } else {
            while (i2 < this.f101163b) {
                if (unicodeString.codePointAt(i + i2) != this.f101162a.codePointAt(i2)) {
                    return EmptyIntIterator.getInstance();
                }
                i2++;
            }
        }
        return new IntSingletonIterator(i + this.f101163b);
    }

    @Override // net.p110sf.saxon.regex.Operation
    public int matchesEmptyString() {
        return this.f101163b == 0 ? 7 : 1024;
    }
}
