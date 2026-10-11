package net.p110sf.saxon.regex;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import net.p110sf.saxon.expr.LastPositionFinder;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntToIntHashMap;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class ARegexIterator implements RegexIterator, LastPositionFinder {

    /* renamed from: e */
    public final UnicodeString f101129e;

    /* renamed from: f */
    public final UnicodeString f101130f;

    /* renamed from: g */
    public final REMatcher f101131g;

    /* renamed from: h */
    public UnicodeString f101132h;

    /* renamed from: i */
    public UnicodeString f101133i;

    /* renamed from: j */
    public int f101134j = 0;

    /* renamed from: k */
    public IntToIntHashMap f101135k = null;

    /* renamed from: l */
    public boolean f101136l = false;

    public ARegexIterator(UnicodeString unicodeString, UnicodeString unicodeString2, REMatcher rEMatcher) {
        Objects.requireNonNull(unicodeString);
        Objects.requireNonNull(unicodeString2);
        Objects.requireNonNull(rEMatcher);
        this.f101129e = unicodeString;
        this.f101130f = unicodeString2;
        this.f101131g = rEMatcher;
        this.f101133i = null;
    }

    public static IntToIntHashMap computeNestingTable(UnicodeString unicodeString) {
        IntToIntHashMap intToIntHashMap = new IntToIntHashMap(16);
        int[] iArr = new int[unicodeString.length32()];
        boolean[] zArr = new boolean[unicodeString.length32()];
        iArr[0] = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        int i5 = 1;
        while (true) {
            long j = i;
            if (j >= unicodeString.length()) {
                return intToIntHashMap;
            }
            int codePointAt = unicodeString.codePointAt(j);
            if (codePointAt == 92) {
                i++;
            } else if (codePointAt == 91) {
                i2++;
            } else if (codePointAt == 93) {
                i2--;
            } else if (codePointAt == 40 && i2 == 0) {
                boolean z = unicodeString.codePointAt((long) (i + 1)) != 63;
                int i6 = i3 + 1;
                zArr[i3] = z;
                if (z) {
                    intToIntHashMap.put(i5, iArr[i4 - 1]);
                    iArr[i4] = i5;
                    i4++;
                    i5++;
                }
                i3 = i6;
            } else if (codePointAt == 41 && i2 == 0) {
                i3--;
                if (zArr[i3]) {
                    i4--;
                }
            }
            i++;
        }
    }

    /* renamed from: f */
    public final StringValue m63567f() {
        return new StringValue(this.f101132h);
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public int getLength() {
        ARegexIterator aRegexIterator = new ARegexIterator(this.f101129e, this.f101130f, new REMatcher(this.f101131g.getProgram()));
        int i = 0;
        while (aRegexIterator.next() != null) {
            i++;
        }
        return i;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public int getNumberOfGroups() {
        return this.f101131g.getParenCount();
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public UnicodeString getRegexGroup(int i) {
        if (!isMatching()) {
            return null;
        }
        if (i >= this.f101131g.getParenCount() || i < 0) {
            return EmptyUnicodeString.getInstance();
        }
        UnicodeString paren = this.f101131g.getParen(i);
        return paren == null ? EmptyUnicodeString.getInstance() : paren;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public boolean isMatching() {
        return this.f101133i == null && this.f101134j >= 0;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator
    public void processMatchingSubstring(RegexMatchHandler regexMatchHandler) throws XPathException {
        int i;
        int i2 = 1;
        int parenCount = this.f101131g.getParenCount() - 1;
        if (parenCount == 0) {
            regexMatchHandler.characters(this.f101132h);
            return;
        }
        IntHashMap intHashMap = new IntHashMap(parenCount);
        while (true) {
            i = 0;
            if (i2 > parenCount) {
                break;
            }
            int parenStart = this.f101131g.getParenStart(i2) - this.f101131g.getParenStart(0);
            if (parenStart != -1) {
                int parenEnd = this.f101131g.getParenEnd(i2) - this.f101131g.getParenStart(0);
                if (parenStart < parenEnd) {
                    List list = (List) intHashMap.get(parenStart);
                    if (list == null) {
                        list = new ArrayList(4);
                        intHashMap.put(parenStart, list);
                    }
                    list.add(Integer.valueOf(i2));
                    List list2 = (List) intHashMap.get(parenEnd);
                    if (list2 == null) {
                        list2 = new ArrayList(4);
                        intHashMap.put(parenEnd, list2);
                    }
                    list2.add(0, Integer.valueOf(-i2));
                } else {
                    if (this.f101135k == null) {
                        this.f101135k = computeNestingTable(this.f101130f);
                    }
                    int i3 = this.f101135k.get(i2);
                    List list3 = (List) intHashMap.get(parenStart);
                    if (list3 == null) {
                        ArrayList arrayList = new ArrayList(4);
                        intHashMap.put(parenStart, arrayList);
                        arrayList.add(Integer.valueOf(i2));
                        arrayList.add(Integer.valueOf(-i2));
                    } else {
                        int size = list3.size();
                        while (true) {
                            if (i >= list3.size()) {
                                break;
                            }
                            if (((Integer) list3.get(i)).intValue() == (-i3)) {
                                size = i;
                                break;
                            }
                            i++;
                        }
                        list3.add(size, Integer.valueOf(-i2));
                        list3.add(size, Integer.valueOf(i2));
                    }
                }
            }
            i2++;
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        while (true) {
            long j = i;
            if (j >= this.f101132h.length() + 1) {
                break;
            }
            List<Integer> list4 = (List) intHashMap.get(i);
            if (list4 != null) {
                if (!unicodeBuilder.isEmpty()) {
                    regexMatchHandler.characters(unicodeBuilder.toUnicodeString());
                    unicodeBuilder.clear();
                }
                for (Integer num : list4) {
                    if (num.intValue() > 0) {
                        regexMatchHandler.onGroupStart(num.intValue());
                    } else {
                        regexMatchHandler.onGroupEnd(-num.intValue());
                    }
                }
            }
            if (j < this.f101132h.length()) {
                unicodeBuilder.append(this.f101132h.codePointAt(j));
            }
            i++;
        }
        if (unicodeBuilder.isEmpty()) {
            return;
        }
        regexMatchHandler.characters(unicodeBuilder.toUnicodeString());
    }

    @Override // net.p110sf.saxon.expr.LastPositionFinder
    public boolean supportsGetLength() {
        return true;
    }

    @Override // net.p110sf.saxon.regex.RegexIterator, net.p110sf.saxon.om.SequenceIterator
    public StringValue next() {
        int i;
        try {
            UnicodeString unicodeString = this.f101133i;
            if (unicodeString == null && (i = this.f101134j) >= 0) {
                if (this.f101136l) {
                    i++;
                    if (i >= this.f101129e.length()) {
                        if (this.f101134j < this.f101129e.length()) {
                            this.f101132h = this.f101129e.substring(this.f101134j);
                            this.f101133i = null;
                        } else {
                            this.f101132h = null;
                            this.f101134j = -1;
                            return null;
                        }
                    }
                }
                if (this.f101131g.match(this.f101129e, i)) {
                    int parenStart = this.f101131g.getParenStart(0);
                    int parenEnd = this.f101131g.getParenEnd(0);
                    this.f101136l = parenStart == parenEnd;
                    int i2 = this.f101134j;
                    if (i2 == parenStart) {
                        this.f101133i = null;
                        this.f101132h = this.f101129e.substring(parenStart, parenEnd);
                        this.f101134j = parenEnd;
                    } else {
                        long j = parenStart;
                        this.f101132h = this.f101129e.substring(i2, j);
                        this.f101133i = this.f101129e.substring(j, parenEnd);
                    }
                } else if (this.f101134j < this.f101129e.length()) {
                    this.f101132h = this.f101129e.substring(this.f101134j);
                    this.f101133i = null;
                    this.f101134j = -1;
                } else {
                    this.f101132h = null;
                    this.f101134j = -1;
                    return null;
                }
            } else if (this.f101134j >= 0) {
                this.f101132h = unicodeString;
                this.f101133i = null;
                this.f101134j = this.f101131g.getParenEnd(0);
            } else {
                this.f101132h = null;
                return null;
            }
            return m63567f();
        } catch (StackOverflowError unused) {
            throw new UncheckedXPathException((XPathException) new XPathException.StackOverflow("Stack overflow (excessive recursion) during regular expression evaluation", SaxonErrorCode.SXRE0001, Loc.NONE));
        }
    }
}
