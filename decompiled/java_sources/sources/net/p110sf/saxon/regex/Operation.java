package net.p110sf.saxon.regex;

import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.regex.charclass.CharacterClass;
import net.p110sf.saxon.regex.charclass.EmptyCharacterClass;

/* loaded from: classes11.dex */
public abstract class Operation {
    protected static final int MATCHES_ZLS_ANYWHERE = 7;
    protected static final int MATCHES_ZLS_AT_END = 2;
    protected static final int MATCHES_ZLS_AT_START = 1;
    protected static final int MATCHES_ZLS_NEVER = 1024;

    /* loaded from: classes11.dex */
    public static class ForceProgressIterator implements IntIterator {

        /* renamed from: a */
        public final IntIterator f101213a;

        /* renamed from: b */
        public int f101214b = 0;

        /* renamed from: c */
        public int f101215c = -1;

        public ForceProgressIterator(IntIterator intIterator) {
            this.f101213a = intIterator;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            return this.f101214b <= 3 && this.f101213a.hasNext();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int next = this.f101213a.next();
            if (next == this.f101215c) {
                this.f101214b++;
            } else {
                this.f101214b = 0;
                this.f101215c = next;
            }
            return next;
        }
    }

    public boolean containsCapturingExpressions() {
        return false;
    }

    public abstract String display();

    public CharacterClass getInitialCharacterClass(boolean z) {
        return EmptyCharacterClass.getComplement();
    }

    public int getMatchLength() {
        return -1;
    }

    public int getMinimumMatchLength() {
        return Math.max(getMatchLength(), 0);
    }

    public abstract IntIterator iterateMatches(REMatcher rEMatcher, int i);

    public abstract int matchesEmptyString();

    public Operation optimize(REProgram rEProgram, REFlags rEFlags) {
        return this;
    }
}
