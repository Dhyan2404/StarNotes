package net.p110sf.saxon.regex;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeChar;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public class REMatcher {

    /* renamed from: j */
    public static final int f101243j = 16;

    /* renamed from: a */
    public REProgram f101244a;

    /* renamed from: b */
    public UnicodeString f101245b;

    /* renamed from: c */
    public History f101246c = new History();

    /* renamed from: d */
    public int f101247d = 16;

    /* renamed from: e */
    public State f101248e = new State();

    /* renamed from: f */
    public int[] f101249f;

    /* renamed from: g */
    public int[] f101250g;

    /* renamed from: h */
    public Operation f101251h;

    /* renamed from: i */
    public boolean f101252i;

    public REMatcher(REProgram rEProgram) {
        setProgram(rEProgram);
    }

    /* renamed from: a */
    public final boolean m63597a(int i) {
        Iterator<RegexPrecondition> it2 = this.f101244a.preconditions.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                return true;
            }
            RegexPrecondition next = it2.next();
            int i2 = next.fixedPosition;
            if (i2 == -1) {
                int i3 = next.minPosition;
                if (i >= i3) {
                    i3 = i;
                }
                while (true) {
                    if (i3 >= this.f101245b.length()) {
                        z = false;
                        break;
                    }
                    int i4 = next.fixedPosition;
                    if ((i4 == -1 || i4 == i3) && next.operation.iterateMatches(this, i3).hasNext()) {
                        break;
                    }
                    i3++;
                }
                if (!z) {
                    return false;
                }
            } else if (!next.operation.iterateMatches(this, i2).hasNext()) {
                return false;
            }
        }
    }

    /* renamed from: b */
    public boolean m63598b(int i, int i2) {
        if (i == i2) {
            return true;
        }
        for (int i3 : CaseVariants.getCaseVariants(i2)) {
            if (i == i3) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public boolean m63599c(int i) {
        return this.f101245b.codePointAt((long) i) == 10;
    }

    public State captureState() {
        return new State(this.f101248e);
    }

    public void clearCapturedGroupsBeyond(int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            State state = this.f101248e;
            int[] iArr = state.f101254b;
            if (i3 >= iArr.length) {
                break;
            }
            int i4 = iArr[i3];
            if (i4 >= i) {
                state.f101255c[i3] = i4;
            }
            i3++;
        }
        if (this.f101249f == null) {
            return;
        }
        while (true) {
            int[] iArr2 = this.f101249f;
            if (i2 >= iArr2.length) {
                return;
            }
            int i5 = iArr2[i2];
            if (i5 >= i) {
                this.f101250g[i2] = i5;
            }
            i2++;
        }
    }

    public UnicodeString getParen(int i) {
        int parenStart;
        if (i >= this.f101248e.f101253a || (parenStart = getParenStart(i)) < 0) {
            return null;
        }
        return this.f101245b.substring(parenStart, getParenEnd(i));
    }

    public int getParenCount() {
        return this.f101248e.f101253a;
    }

    public final int getParenEnd(int i) {
        int[] iArr = this.f101248e.f101255c;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public final int getParenStart(int i) {
        int[] iArr = this.f101248e.f101254b;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public REProgram getProgram() {
        return this.f101244a;
    }

    public boolean isAnchoredMatch(UnicodeString unicodeString) {
        this.f101245b = unicodeString;
        return matchAt(0, true);
    }

    public boolean match(UnicodeString unicodeString, int i) {
        boolean z;
        Objects.requireNonNull(unicodeString);
        this.f101245b = unicodeString.tidy();
        this.f101248e = new State();
        REProgram rEProgram = this.f101244a;
        if ((rEProgram.optimizationFlags & 2) == 2) {
            if (!rEProgram.flags.isMultiLine()) {
                return i == 0 && m63597a(i) && matchAt(i, false);
            }
            if (matchAt(i, false)) {
                return true;
            }
            do {
                i = ((int) unicodeString.indexOf(10, i)) + 1;
                if (i >= unicodeString.length() || i <= 0) {
                    return false;
                }
            } while (!matchAt(i, false));
            return true;
        }
        int length32 = unicodeString.length32() - i;
        REProgram rEProgram2 = this.f101244a;
        if (length32 < rEProgram2.minimumLength) {
            return false;
        }
        UnicodeString unicodeString2 = rEProgram2.prefix;
        if (unicodeString2 == null) {
            IntPredicateProxy intPredicateProxy = rEProgram2.initialCharClass;
            if (intPredicateProxy != null) {
                while (i < unicodeString.length32()) {
                    if (intPredicateProxy.test(unicodeString.codePointAt(i)) && matchAt(i, false)) {
                        return true;
                    }
                    i++;
                }
                return false;
            }
            if (!m63597a(i)) {
                return false;
            }
            while (i - 1 < unicodeString.length32()) {
                if (matchAt(i, false)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        int length322 = unicodeString2.length32();
        boolean isCaseIndependent = this.f101244a.flags.isCaseIndependent();
        while ((i + length322) - 1 < unicodeString.length()) {
            if (isCaseIndependent) {
                int i2 = i;
                for (int i3 = 0; i3 < length322; i3++) {
                    if (!m63598b(unicodeString.codePointAt(i2), unicodeString2.codePointAt(i3))) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                z = true;
            } else {
                int i4 = i;
                for (int i5 = 0; i5 < length322; i5++) {
                    if (unicodeString.codePointAt(i4) != unicodeString2.codePointAt(i5)) {
                        z = false;
                        break;
                    }
                    i4++;
                }
                z = true;
            }
            if (z && matchAt(i, false)) {
                return true;
            }
            i++;
        }
        return false;
    }

    public boolean matchAt(int i, boolean z) {
        this.f101248e.f101253a = 1;
        this.f101252i = z;
        setParenStart(0, i);
        if ((this.f101244a.optimizationFlags & 1) != 0) {
            int i2 = this.f101247d;
            this.f101249f = new int[i2];
            this.f101250g = new int[i2];
        }
        IntIterator iterateMatches = this.f101251h.iterateMatches(this, i);
        if (iterateMatches.hasNext()) {
            setParenEnd(0, iterateMatches.next());
            return true;
        }
        this.f101248e.f101253a = 0;
        return false;
    }

    public UnicodeString replace(UnicodeString unicodeString, UnicodeString unicodeString2) {
        UnicodeString paren;
        UnicodeString emptyUnicodeString = EmptyUnicodeString.getInstance();
        int length32 = unicodeString.length32();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        loop0: while (i < length32 && match(unicodeString, i)) {
            emptyUnicodeString = emptyUnicodeString.concat(unicodeString.substring(i, getParenStart(0)));
            if (z2) {
                z = this.f101244a.flags.isLiteral();
                z2 = false;
            }
            if (!z) {
                int i2 = this.f101244a.maxParens - 1;
                int i3 = 0;
                boolean z3 = true;
                while (true) {
                    long j = i3;
                    if (j >= unicodeString2.length()) {
                        z = z3;
                        break;
                    }
                    int codePointAt = unicodeString2.codePointAt(j);
                    if (codePointAt == 92) {
                        i3++;
                        int codePointAt2 = unicodeString2.codePointAt(i3);
                        if (codePointAt2 != 92 && codePointAt2 != 36) {
                            throw new RESyntaxException("Invalid escape '" + codePointAt2 + "' in replacement string");
                        }
                        emptyUnicodeString = emptyUnicodeString.concat(BMPString.m63877of("" + ((char) codePointAt2)));
                    } else if (codePointAt == 36) {
                        i3++;
                        int codePointAt3 = unicodeString2.codePointAt(i3);
                        if (codePointAt3 < 48 || codePointAt3 > 57) {
                            break loop0;
                        }
                        int i4 = codePointAt3 - 48;
                        if (i2 > 9) {
                            while (true) {
                                i3++;
                                long j2 = i3;
                                if (j2 >= unicodeString2.length()) {
                                    break;
                                }
                                int codePointAt4 = unicodeString2.codePointAt(j2);
                                if (codePointAt4 < 48 || codePointAt4 > 57) {
                                    break;
                                }
                                int i5 = (codePointAt4 - 48) + (i4 * 10);
                                if (i5 > i2) {
                                    break;
                                }
                                i4 = i5;
                            }
                            i3--;
                            UnicodeString paren2 = getParen(i4);
                            if (paren2 != null) {
                                emptyUnicodeString = emptyUnicodeString.concat(paren2);
                            }
                        } else if (i2 >= i4 && (paren = getParen(i4)) != null) {
                            emptyUnicodeString = emptyUnicodeString.concat(paren);
                        }
                    } else {
                        emptyUnicodeString = emptyUnicodeString.concat(new UnicodeChar(codePointAt));
                        i3++;
                    }
                    z3 = false;
                    i3++;
                }
                throw new RESyntaxException("$ in replacement string must be followed by a digit");
            }
            emptyUnicodeString = emptyUnicodeString.concat(unicodeString2);
            int parenEnd = getParenEnd(0);
            if (parenEnd == i) {
                parenEnd++;
            }
            i = parenEnd;
        }
        return z2 ? unicodeString : emptyUnicodeString.concat(unicodeString.substring(i, length32)).economize();
    }

    public UnicodeString replaceWith(UnicodeString unicodeString, Function<UnicodeString, UnicodeString> function) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        int length32 = unicodeString.length32();
        int i = 0;
        while (i < length32 && match(unicodeString, i)) {
            for (long j = i; j < getParenStart(0); j++) {
                unicodeBuilder.append(unicodeString.codePointAt(j));
            }
            IntIterator codePoints = function.apply(unicodeString.substring(getParenStart(0), getParenEnd(0))).codePoints();
            while (codePoints.hasNext()) {
                unicodeBuilder.append(codePoints.next());
            }
            int parenEnd = getParenEnd(0);
            if (parenEnd == i) {
                parenEnd++;
            }
            i = parenEnd;
        }
        while (i < length32) {
            unicodeBuilder.append(unicodeString.codePointAt(i));
            i++;
        }
        return unicodeBuilder.toUnicodeString();
    }

    public void resetState(State state) {
        this.f101248e = new State(state);
    }

    public final void setParenEnd(int i, int i2) {
        while (true) {
            int[] iArr = this.f101248e.f101255c;
            if (i <= iArr.length - 1) {
                iArr[i] = i2;
                return;
            }
            int length = iArr.length * 2;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            Arrays.fill(iArr2, this.f101248e.f101255c.length, length, -1);
            this.f101248e.f101255c = iArr2;
        }
    }

    public final void setParenStart(int i, int i2) {
        while (true) {
            int[] iArr = this.f101248e.f101254b;
            if (i <= iArr.length - 1) {
                iArr[i] = i2;
                return;
            }
            int length = iArr.length * 2;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            Arrays.fill(iArr2, this.f101248e.f101254b.length, length, -1);
            this.f101248e.f101254b = iArr2;
        }
    }

    public void setProgram(REProgram rEProgram) {
        int i;
        this.f101244a = rEProgram;
        if (rEProgram == null || (i = rEProgram.maxParens) == -1) {
            this.f101247d = 16;
        } else {
            this.f101251h = rEProgram.operation;
            this.f101247d = i;
        }
    }

    public List<UnicodeString> split(UnicodeString unicodeString) {
        ArrayList arrayList = new ArrayList();
        int length32 = unicodeString.length32();
        int i = 0;
        while (i < length32 && match(unicodeString, i)) {
            int parenStart = getParenStart(0);
            int parenEnd = getParenEnd(0);
            if (parenEnd == i) {
                arrayList.add(unicodeString.substring(i, parenStart + 1));
                parenEnd++;
            } else {
                arrayList.add(unicodeString.substring(i, parenStart));
            }
            i = parenEnd;
        }
        arrayList.add(unicodeString.substring(i, length32));
        return arrayList;
    }

    /* loaded from: classes11.dex */
    public static class State {

        /* renamed from: a */
        public int f101253a;

        /* renamed from: b */
        public int[] f101254b;

        /* renamed from: c */
        public int[] f101255c;

        public State() {
            this.f101253a = 0;
            this.f101254b = r2;
            int[] iArr = {-1, -1, -1};
            this.f101255c = r1;
            int[] iArr2 = {-1, -1, -1};
        }

        public State(State state) {
            this.f101253a = state.f101253a;
            int[] iArr = state.f101254b;
            this.f101254b = Arrays.copyOf(iArr, iArr.length);
            int[] iArr2 = state.f101255c;
            this.f101255c = Arrays.copyOf(iArr2, iArr2.length);
        }
    }

    public boolean match(String str) {
        return match(StringView.m63901of(str).tidy(), 0);
    }
}
