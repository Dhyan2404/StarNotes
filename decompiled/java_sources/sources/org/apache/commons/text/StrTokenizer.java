package org.apache.commons.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;

@Deprecated
/* loaded from: classes12.dex */
public class StrTokenizer implements ListIterator<String>, Cloneable {

    /* renamed from: n */
    public static final StrTokenizer f109984n;

    /* renamed from: o */
    public static final StrTokenizer f109985o;

    /* renamed from: e */
    public char[] f109986e;

    /* renamed from: f */
    public String[] f109987f;

    /* renamed from: g */
    public int f109988g;

    /* renamed from: h */
    public StrMatcher f109989h;

    /* renamed from: i */
    public StrMatcher f109990i;

    /* renamed from: j */
    public StrMatcher f109991j;

    /* renamed from: k */
    public StrMatcher f109992k;

    /* renamed from: l */
    public boolean f109993l;

    /* renamed from: m */
    public boolean f109994m;

    static {
        StrTokenizer strTokenizer = new StrTokenizer();
        f109984n = strTokenizer;
        strTokenizer.setDelimiterMatcher(StrMatcher.commaMatcher());
        strTokenizer.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        strTokenizer.setIgnoredMatcher(StrMatcher.noneMatcher());
        strTokenizer.setTrimmerMatcher(StrMatcher.trimMatcher());
        strTokenizer.setEmptyTokenAsNull(false);
        strTokenizer.setIgnoreEmptyTokens(false);
        StrTokenizer strTokenizer2 = new StrTokenizer();
        f109985o = strTokenizer2;
        strTokenizer2.setDelimiterMatcher(StrMatcher.tabMatcher());
        strTokenizer2.setQuoteMatcher(StrMatcher.doubleQuoteMatcher());
        strTokenizer2.setIgnoredMatcher(StrMatcher.noneMatcher());
        strTokenizer2.setTrimmerMatcher(StrMatcher.trimMatcher());
        strTokenizer2.setEmptyTokenAsNull(false);
        strTokenizer2.setIgnoreEmptyTokens(false);
    }

    public StrTokenizer() {
        this.f109989h = StrMatcher.splitMatcher();
        this.f109990i = StrMatcher.noneMatcher();
        this.f109991j = StrMatcher.noneMatcher();
        this.f109992k = StrMatcher.noneMatcher();
        this.f109993l = false;
        this.f109994m = true;
        this.f109986e = null;
    }

    /* renamed from: d */
    public static StrTokenizer m68243d() {
        return (StrTokenizer) f109984n.clone();
    }

    /* renamed from: e */
    public static StrTokenizer m68244e() {
        return (StrTokenizer) f109985o.clone();
    }

    public static StrTokenizer getCSVInstance() {
        return m68243d();
    }

    public static StrTokenizer getTSVInstance() {
        return m68244e();
    }

    /* renamed from: a */
    public final void m68245a(List<String> list, String str) {
        if (str == null || str.length() == 0) {
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
    public final void m68246b() {
        if (this.f109987f == null) {
            char[] cArr = this.f109986e;
            if (cArr == null) {
                List<String> list = tokenize(null, 0, 0);
                this.f109987f = (String[]) list.toArray(new String[list.size()]);
            } else {
                List<String> list2 = tokenize(cArr, 0, cArr.length);
                this.f109987f = (String[]) list2.toArray(new String[list2.size()]);
            }
        }
    }

    /* renamed from: c */
    public Object m68247c() throws CloneNotSupportedException {
        StrTokenizer strTokenizer = (StrTokenizer) super.clone();
        char[] cArr = strTokenizer.f109986e;
        if (cArr != null) {
            strTokenizer.f109986e = (char[]) cArr.clone();
        }
        strTokenizer.reset();
        return strTokenizer;
    }

    public Object clone() {
        try {
            return m68247c();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* renamed from: f */
    public final boolean m68248f(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final int m68249g(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list) {
        while (i < i2) {
            int max = Math.max(getIgnoredMatcher().isMatch(cArr, i, i, i2), getTrimmerMatcher().isMatch(cArr, i, i, i2));
            if (max == 0 || getDelimiterMatcher().isMatch(cArr, i, i, i2) > 0 || getQuoteMatcher().isMatch(cArr, i, i, i2) > 0) {
                break;
            }
            i += max;
        }
        if (i >= i2) {
            m68245a(list, "");
            return -1;
        }
        int isMatch = getDelimiterMatcher().isMatch(cArr, i, i, i2);
        if (isMatch > 0) {
            m68245a(list, "");
            return i + isMatch;
        }
        int isMatch2 = getQuoteMatcher().isMatch(cArr, i, i, i2);
        return isMatch2 > 0 ? m68250h(cArr, i + isMatch2, i2, strBuilder, list, i, isMatch2) : m68250h(cArr, i, i2, strBuilder, list, 0, 0);
    }

    public String getContent() {
        char[] cArr = this.f109986e;
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public StrMatcher getDelimiterMatcher() {
        return this.f109989h;
    }

    public StrMatcher getIgnoredMatcher() {
        return this.f109991j;
    }

    public StrMatcher getQuoteMatcher() {
        return this.f109990i;
    }

    public String[] getTokenArray() {
        m68246b();
        return (String[]) this.f109987f.clone();
    }

    public List<String> getTokenList() {
        m68246b();
        ArrayList arrayList = new ArrayList(this.f109987f.length);
        Collections.addAll(arrayList, this.f109987f);
        return arrayList;
    }

    public StrMatcher getTrimmerMatcher() {
        return this.f109992k;
    }

    /* renamed from: h */
    public final int m68250h(char[] cArr, int i, int i2, StrBuilder strBuilder, List<String> list, int i3, int i4) {
        strBuilder.clear();
        boolean z = i4 > 0;
        int i5 = i;
        int i6 = 0;
        while (i5 < i2) {
            if (z) {
                int i7 = i6;
                int i8 = i5;
                if (m68248f(cArr, i5, i2, i3, i4)) {
                    int i9 = i8 + i4;
                    if (m68248f(cArr, i9, i2, i3, i4)) {
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
                    m68245a(list, strBuilder.substring(0, i10));
                    return i11 + isMatch;
                }
                if (i4 <= 0 || !m68248f(cArr, i11, i2, i3, i4)) {
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
        m68245a(list, strBuilder.substring(0, i6));
        return -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        m68246b();
        return this.f109988g < this.f109987f.length;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        m68246b();
        return this.f109988g > 0;
    }

    public boolean isEmptyTokenAsNull() {
        return this.f109993l;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.f109994m;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f109988g;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.f109987f;
        int i = this.f109988g;
        this.f109988g = i + 1;
        return strArr[i];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f109988g - 1;
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.f109987f;
        int i = this.f109988g - 1;
        this.f109988g = i;
        return strArr[i];
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    public StrTokenizer reset() {
        this.f109988g = 0;
        this.f109987f = null;
        return this;
    }

    public StrTokenizer setDelimiterChar(char c) {
        return setDelimiterMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setDelimiterMatcher(StrMatcher strMatcher) {
        if (strMatcher == null) {
            this.f109989h = StrMatcher.noneMatcher();
        } else {
            this.f109989h = strMatcher;
        }
        return this;
    }

    public StrTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StrMatcher.stringMatcher(str));
    }

    public StrTokenizer setEmptyTokenAsNull(boolean z) {
        this.f109993l = z;
        return this;
    }

    public StrTokenizer setIgnoreEmptyTokens(boolean z) {
        this.f109994m = z;
        return this;
    }

    public StrTokenizer setIgnoredChar(char c) {
        return setIgnoredMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setIgnoredMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f109991j = strMatcher;
        }
        return this;
    }

    public StrTokenizer setQuoteChar(char c) {
        return setQuoteMatcher(StrMatcher.charMatcher(c));
    }

    public StrTokenizer setQuoteMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f109990i = strMatcher;
        }
        return this;
    }

    public StrTokenizer setTrimmerMatcher(StrMatcher strMatcher) {
        if (strMatcher != null) {
            this.f109992k = strMatcher;
        }
        return this;
    }

    public int size() {
        m68246b();
        return this.f109987f.length;
    }

    public String toString() {
        if (this.f109987f == null) {
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
            i3 = m68249g(cArr, i3, i2, strBuilder, arrayList);
            if (i3 >= i2) {
                m68245a(arrayList, "");
            }
        }
        return arrayList;
    }

    public static StrTokenizer getCSVInstance(String str) {
        StrTokenizer m68243d = m68243d();
        m68243d.reset(str);
        return m68243d;
    }

    public static StrTokenizer getTSVInstance(String str) {
        StrTokenizer m68244e = m68244e();
        m68244e.reset(str);
        return m68244e;
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        if (hasNext()) {
            String[] strArr = this.f109987f;
            int i = this.f109988g;
            this.f109988g = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public String previous() {
        if (hasPrevious()) {
            String[] strArr = this.f109987f;
            int i = this.f109988g - 1;
            this.f109988g = i;
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
            this.f109986e = str.toCharArray();
        } else {
            this.f109986e = null;
        }
        return this;
    }

    public static StrTokenizer getCSVInstance(char[] cArr) {
        StrTokenizer m68243d = m68243d();
        m68243d.reset(cArr);
        return m68243d;
    }

    public static StrTokenizer getTSVInstance(char[] cArr) {
        StrTokenizer m68244e = m68244e();
        m68244e.reset(cArr);
        return m68244e;
    }

    public StrTokenizer reset(char[] cArr) {
        reset();
        if (cArr != null) {
            this.f109986e = (char[]) cArr.clone();
        } else {
            this.f109986e = null;
        }
        return this;
    }

    public StrTokenizer(String str) {
        this.f109989h = StrMatcher.splitMatcher();
        this.f109990i = StrMatcher.noneMatcher();
        this.f109991j = StrMatcher.noneMatcher();
        this.f109992k = StrMatcher.noneMatcher();
        this.f109993l = false;
        this.f109994m = true;
        if (str != null) {
            this.f109986e = str.toCharArray();
        } else {
            this.f109986e = null;
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
        this.f109989h = StrMatcher.splitMatcher();
        this.f109990i = StrMatcher.noneMatcher();
        this.f109991j = StrMatcher.noneMatcher();
        this.f109992k = StrMatcher.noneMatcher();
        this.f109993l = false;
        this.f109994m = true;
        if (cArr == null) {
            this.f109986e = null;
        } else {
            this.f109986e = (char[]) cArr.clone();
        }
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
