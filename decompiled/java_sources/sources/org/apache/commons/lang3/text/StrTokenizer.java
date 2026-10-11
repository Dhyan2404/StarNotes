package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

@Deprecated
/* loaded from: classes12.dex */
public class StrTokenizer implements ListIterator<String>, Cloneable {

    /* renamed from: n */
    public static final StrTokenizer f107588n;

    /* renamed from: o */
    public static final StrTokenizer f107589o;

    /* renamed from: e */
    public char[] f107590e;

    /* renamed from: f */
    public String[] f107591f;

    /* renamed from: g */
    public int f107592g;

    /* renamed from: h */
    public StrMatcher f107593h;

    /* renamed from: i */
    public StrMatcher f107594i;

    /* renamed from: j */
    public StrMatcher f107595j;

    /* renamed from: k */
    public StrMatcher f107596k;

    /* renamed from: l */
    public boolean f107597l;

    /* renamed from: m */
    public boolean f107598m;

    static {
        StrTokenizer strTokenizer = new StrTokenizer();
        f107588n = strTokenizer;
        strTokenizer.setDelimiterMatcher(StrMatcher.commaMatcher());
        strTokenizer.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        strTokenizer.setIgnoredMatcher(StrMatcher.noneMatcher());
        strTokenizer.setTrimmerMatcher(StrMatcher.trimMatcher());
        strTokenizer.setEmptyTokenAsNull(false);
        strTokenizer.setIgnoreEmptyTokens(false);
        StrTokenizer strTokenizer2 = new StrTokenizer();
        f107589o = strTokenizer2;
        strTokenizer2.setDelimiterMatcher(StrMatcher.tabMatcher());
        strTokenizer2.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        strTokenizer2.setIgnoredMatcher(StrMatcher.noneMatcher());
        strTokenizer2.setTrimmerMatcher(StrMatcher.trimMatcher());
        strTokenizer2.setEmptyTokenAsNull(false);
        strTokenizer2.setIgnoreEmptyTokens(false);
    }

    public StrTokenizer() {
        this.f107593h = StrMatcher.splitMatcher();
        this.f107594i = StrMatcher.noneMatcher();
        this.f107595j = StrMatcher.noneMatcher();
        this.f107596k = StrMatcher.noneMatcher();
        this.f107597l = false;
        this.f107598m = true;
        this.f107590e = null;
    }

    /* renamed from: d */
    public static StrTokenizer m67371d() {
        return (StrTokenizer) f107588n.clone();
    }

    /* renamed from: e */
    public static StrTokenizer m67372e() {
        return (StrTokenizer) f107589o.clone();
    }

    public static StrTokenizer getCSVInstance() {
        return m67371d();
    }

    public static StrTokenizer getTSVInstance() {
        return m67372e();
    }

    /* renamed from: a */
    public final void m67373a(List<String> list, String str) {
        if (StringUtils.isEmpty(str)) {
            if (isIgnoreEmptyTokens()) {
                return;
            }
            if (isEmptyTokenAsNull()) {
                str = null;
            }
        }
        list.add(str);
    }

    /* renamed from: b */
    public final void m67374b() {
        if (this.f107591f == null) {
            char[] cArr = this.f107590e;
            if (cArr == null) {
                List<String> list = tokenize(null, 0, 0);
                this.f107591f = (String[]) list.toArray(new String[list.size()]);
            } else {
                List<String> list2 = tokenize(cArr, 0, cArr.length);
                this.f107591f = (String[]) list2.toArray(new String[list2.size()]);
            }
        }
    }

    /* renamed from: c */
    public Object m67375c() throws CloneNotSupportedException {
        StrTokenizer strTokenizer = (StrTokenizer) super.clone();
        char[] cArr = strTokenizer.f107590e;
        if (cArr != null) {
            strTokenizer.f107590e = (char[]) cArr.clone();
        }
        strTokenizer.reset();
        return strTokenizer;
    }

    public Object clone() {
        try {
            return m67375c();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* renamed from: f */
    public final boolean m67376f(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final int m67377g(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list) {
        while (i < i2) {
            int max = Math.max(getIgnoredMatcher().isMatch(cArr, i, i, i2), getTrimmerMatcher().isMatch(cArr, i, i, i2));
            if (max == 0 || getDelimiterMatcher().isMatch(cArr, i, i, i2) > 0 || getQuoteMatcher().isMatch(cArr, i, i, i2) > 0) {
                break;
            }
            i += max;
        }
        if (i >= i2) {
            m67373a(list, "");
            return -1;
        }
        int isMatch = getDelimiterMatcher().isMatch(cArr, i, i, i2);
        if (isMatch > 0) {
            m67373a(list, "");
            return i + isMatch;
        }
        int isMatch2 = getQuoteMatcher().isMatch(cArr, i, i, i2);
        return isMatch2 > 0 ? m67378h(cArr, i + isMatch2, i2, strBuilder, list, i, isMatch2) : m67378h(cArr, i, i2, strBuilder, list, 0, 0);
    }

    public String getContent() {
        char[] cArr = this.f107590e;
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public StrMatcher getDelimiterMatcher() {
        return this.f107593h;
    }

    public StrMatcher getIgnoredMatcher() {
        return this.f107595j;
    }

    public StrMatcher getQuoteMatcher() {
        return this.f107594i;
    }

    public String[] getTokenArray() {
        m67374b();
        return (String[]) this.f107591f.clone();
    }

    public List<String> getTokenList() {
        m67374b();
        ArrayList arrayList = new ArrayList(this.f107591f.length);
        arrayList.addAll(Arrays.asList(this.f107591f));
        return arrayList;
    }

    public StrMatcher getTrimmerMatcher() {
        return this.f107596k;
    }

    /* renamed from: h */
    public final int m67378h(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list, int i3, int i4) {
        strBuilder.clear();
        boolean z = i4 > 0;
        int i5 = i;
        int i6 = 0;
        while (i5 < i2) {
            if (z) {
                int i7 = i6;
                int i8 = i5;
                if (m67376f(cArr, i5, i2, i3, i4)) {
                    int i9 = i8 + i4;
                    if (m67376f(cArr, i9, i2, i3, i4)) {
                        strBuilder.append(cArr, i8, i4);
                        i5 = i8 + (i4 * 2);
                        i6 = strBuilder.size();
                    } else {
                        i6 = i7;
                        i5 = i9;
                        z = false;
                    }
                } else {
                    i5 = i8 + 1;
                    strBuilder.append(cArr[i8]);
                    i6 = strBuilder.size();
                }
            } else {
                int i10 = i6;
                int i11 = i5;
                int isMatch = getDelimiterMatcher().isMatch(cArr, i11, i, i2);
                if (isMatch > 0) {
                    m67373a(list, strBuilder.substring(0, i10));
                    return i11 + isMatch;
                }
                if (i4 <= 0 || !m67376f(cArr, i11, i2, i3, i4)) {
                    int isMatch2 = getIgnoredMatcher().isMatch(cArr, i11, i, i2);
                    if (isMatch2 <= 0) {
                        isMatch2 = getTrimmerMatcher().isMatch(cArr, i11, i, i2);
                        if (isMatch2 > 0) {
                            strBuilder.append(cArr, i11, isMatch2);
                        } else {
                            i5 = i11 + 1;
                            strBuilder.append(cArr[i11]);
                            i6 = strBuilder.size();
                        }
                    }
                    i5 = i11 + isMatch2;
                    i6 = i10;
                } else {
                    i5 = i11 + i4;
                    i6 = i10;
                    z = true;
                }
            }
        }
        m67373a(list, strBuilder.substring(0, i6));
        return -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        m67374b();
        return this.f107592g < this.f107591f.length;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        m67374b();
        return this.f107592g > 0;
    }

    public boolean isEmptyTokenAsNull() {
        return this.f107597l;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.f107598m;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f107592g;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.f107591f;
        int i = this.f107592g;
        this.f107592g = i + 1;
        return strArr[i];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f107592g - 1;
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.f107591f;
        int i = this.f107592g - 1;
        this.f107592g = i;
        return strArr[i];
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    public StrTokenizer reset() {
        this.f107592g = 0;
        this.f107591f = null;
        return this;
    }

    public StrTokenizer setDelimiterChar(char c) {
        return setDelimiterMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setDelimiterMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            this.f107593h = StrMatcher.noneMatcher();
        } else {
            this.f107593h = strMatcher;
        }
        return this;
    }

    public StrTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StrMatcher.stringMatcher(str));
    }

    public StrTokenizer setEmptyTokenAsNull(boolean z) {
        this.f107597l = z;
        return this;
    }

    public StrTokenizer setIgnoreEmptyTokens(boolean z) {
        this.f107598m = z;
        return this;
    }

    public StrTokenizer setIgnoredChar(char c) {
        return setIgnoredMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setIgnoredMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f107595j = strMatcher;
        }
        return this;
    }

    public StrTokenizer setQuoteChar(char c) {
        return setQuoteMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setQuoteMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f107594i = strMatcher;
        }
        return this;
    }

    public StrTokenizer setTrimmerMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f107596k = strMatcher;
        }
        return this;
    }

    public int size() {
        m67374b();
        return this.f107591f.length;
    }

    public String toString() {
        if (this.f107591f == null) {
            return "StrTokenizer[not tokenized yet]";
        }
        return "StrTokenizer" + getTokenList();
    }

    public List<String> tokenize(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        StrBuilder strBuilder = new StrBuilder();
        ArrayList arrayList = new ArrayList();
        int i3 = i;
        while (i3 >= 0 && i3 < i2) {
            i3 = m67377g(cArr, i3, i2, strBuilder, arrayList);
            if (i3 >= i2) {
                m67373a(arrayList, "");
            }
        }
        return arrayList;
    }

    public static StrTokenizer getCSVInstance(String str) {
        StrTokenizer m67371d = m67371d();
        m67371d.reset(str);
        return m67371d;
    }

    public static StrTokenizer getTSVInstance(String str) {
        StrTokenizer m67372e = m67372e();
        m67372e.reset(str);
        return m67372e;
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        if (hasNext()) {
            String[] strArr = this.f107591f;
            int i = this.f107592g;
            this.f107592g = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public String previous() {
        if (hasPrevious()) {
            String[] strArr = this.f107591f;
            int i = this.f107592g - 1;
            this.f107592g = i;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    public StrTokenizer reset(String str) {
        reset();
        if (str != null) {
            this.f107590e = str.toCharArray();
        } else {
            this.f107590e = null;
        }
        return this;
    }

    public static StrTokenizer getCSVInstance(char[] cArr) {
        StrTokenizer m67371d = m67371d();
        m67371d.reset(cArr);
        return m67371d;
    }

    public static StrTokenizer getTSVInstance(char[] cArr) {
        StrTokenizer m67372e = m67372e();
        m67372e.reset(cArr);
        return m67372e;
    }

    public StrTokenizer reset(char[] cArr) {
        reset();
        this.f107590e = ArrayUtils.clone(cArr);
        return this;
    }

    public StrTokenizer(String str) {
        this.f107593h = StrMatcher.splitMatcher();
        this.f107594i = StrMatcher.noneMatcher();
        this.f107595j = StrMatcher.noneMatcher();
        this.f107596k = StrMatcher.noneMatcher();
        this.f107597l = false;
        this.f107598m = true;
        if (str != null) {
            this.f107590e = str.toCharArray();
        } else {
            this.f107590e = null;
        }
    }

    public StrTokenizer(String str, char c) {
        this(str);
        setDelimiterChar(c);
    }

    public StrTokenizer(String str, String str2) {
        this(str);
        setDelimiterString(str2);
    }

    public StrTokenizer(String str, StrMatcher strMatcher) {
        this(str);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(String str, char c, char c2) {
        this(str, c);
        setQuoteChar(c2);
    }

    public StrTokenizer(String str, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(str, strMatcher);
        setQuoteMatcher(strMatcher2);
    }

    public StrTokenizer(char[] cArr) {
        this.f107593h = StrMatcher.splitMatcher();
        this.f107594i = StrMatcher.noneMatcher();
        this.f107595j = StrMatcher.noneMatcher();
        this.f107596k = StrMatcher.noneMatcher();
        this.f107597l = false;
        this.f107598m = true;
        this.f107590e = ArrayUtils.clone(cArr);
    }

    public StrTokenizer(char[] cArr, char c) {
        this(cArr);
        setDelimiterChar(c);
    }

    public StrTokenizer(char[] cArr, String str) {
        this(cArr);
        setDelimiterString(str);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher) {
        this(cArr);
        setDelimiterMatcher(strMatcher);
    }

    public StrTokenizer(char[] cArr, char c, char c2) {
        this(cArr, c);
        setQuoteChar(c2);
    }

    public StrTokenizer(char[] cArr, StrMatcher strMatcher, StrMatcher strMatcher2) {
        this(cArr, strMatcher);
        setQuoteMatcher(strMatcher2);
    }
}
