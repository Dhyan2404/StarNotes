package org.apache.commons.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.text.matcher.StringMatcher;
import org.apache.commons.text.matcher.StringMatcherFactory;

/* loaded from: classes12.dex */
public class StringTokenizer implements ListIterator<String>, Cloneable {

    /* renamed from: n */
    public static final StringTokenizer f110006n;

    /* renamed from: o */
    public static final StringTokenizer f110007o;

    /* renamed from: e */
    public char[] f110008e;

    /* renamed from: f */
    public String[] f110009f;

    /* renamed from: g */
    public int f110010g;

    /* renamed from: h */
    public StringMatcher f110011h;

    /* renamed from: i */
    public StringMatcher f110012i;

    /* renamed from: j */
    public StringMatcher f110013j;

    /* renamed from: k */
    public StringMatcher f110014k;

    /* renamed from: l */
    public boolean f110015l;

    /* renamed from: m */
    public boolean f110016m;

    static {
        StringTokenizer stringTokenizer = new StringTokenizer();
        f110006n = stringTokenizer;
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        stringTokenizer.setDelimiterMatcher(stringMatcherFactory.commaMatcher());
        stringTokenizer.setQuoteMatcher(stringMatcherFactory.doubleQuoteMatcher());
        stringTokenizer.setIgnoredMatcher(stringMatcherFactory.noneMatcher());
        stringTokenizer.setTrimmerMatcher(stringMatcherFactory.trimMatcher());
        stringTokenizer.setEmptyTokenAsNull(false);
        stringTokenizer.setIgnoreEmptyTokens(false);
        StringTokenizer stringTokenizer2 = new StringTokenizer();
        f110007o = stringTokenizer2;
        stringTokenizer2.setDelimiterMatcher(stringMatcherFactory.tabMatcher());
        stringTokenizer2.setQuoteMatcher(stringMatcherFactory.doubleQuoteMatcher());
        stringTokenizer2.setIgnoredMatcher(stringMatcherFactory.noneMatcher());
        stringTokenizer2.setTrimmerMatcher(stringMatcherFactory.trimMatcher());
        stringTokenizer2.setEmptyTokenAsNull(false);
        stringTokenizer2.setIgnoreEmptyTokens(false);
    }

    public StringTokenizer() {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.f110011h = stringMatcherFactory.splitMatcher();
        this.f110012i = stringMatcherFactory.noneMatcher();
        this.f110013j = stringMatcherFactory.noneMatcher();
        this.f110014k = stringMatcherFactory.noneMatcher();
        this.f110015l = false;
        this.f110016m = true;
        this.f110008e = null;
    }

    /* renamed from: d */
    public static StringTokenizer m68253d() {
        return (StringTokenizer) f110006n.clone();
    }

    /* renamed from: e */
    public static StringTokenizer m68254e() {
        return (StringTokenizer) f110007o.clone();
    }

    public static StringTokenizer getCSVInstance() {
        return m68253d();
    }

    public static StringTokenizer getTSVInstance() {
        return m68254e();
    }

    /* renamed from: a */
    public final void m68255a(List<String> list, String str) {
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
    public final void m68256b() {
        if (this.f110009f == null) {
            char[] cArr = this.f110008e;
            if (cArr == null) {
                List<String> list = tokenize(null, 0, 0);
                this.f110009f = (String[]) list.toArray(new String[list.size()]);
            } else {
                List<String> list2 = tokenize(cArr, 0, cArr.length);
                this.f110009f = (String[]) list2.toArray(new String[list2.size()]);
            }
        }
    }

    /* renamed from: c */
    public Object m68257c() throws CloneNotSupportedException {
        StringTokenizer stringTokenizer = (StringTokenizer) super.clone();
        char[] cArr = stringTokenizer.f110008e;
        if (cArr != null) {
            stringTokenizer.f110008e = (char[]) cArr.clone();
        }
        stringTokenizer.reset();
        return stringTokenizer;
    }

    public Object clone() {
        try {
            return m68257c();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* renamed from: f */
    public final boolean m68258f(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: g */
    public final int m68259g(char[] cArr, int i, int i2, TextStringBuilder textStringBuilder, List<String> list) {
        while (i < i2) {
            int max = Math.max(getIgnoredMatcher().isMatch(cArr, i, i, i2), getTrimmerMatcher().isMatch(cArr, i, i, i2));
            if (max == 0 || getDelimiterMatcher().isMatch(cArr, i, i, i2) > 0 || getQuoteMatcher().isMatch(cArr, i, i, i2) > 0) {
                break;
            }
            i += max;
        }
        if (i >= i2) {
            m68255a(list, "");
            return -1;
        }
        int isMatch = getDelimiterMatcher().isMatch(cArr, i, i, i2);
        if (isMatch > 0) {
            m68255a(list, "");
            return i + isMatch;
        }
        int isMatch2 = getQuoteMatcher().isMatch(cArr, i, i, i2);
        return isMatch2 > 0 ? m68260h(cArr, i + isMatch2, i2, textStringBuilder, list, i, isMatch2) : m68260h(cArr, i, i2, textStringBuilder, list, 0, 0);
    }

    public String getContent() {
        char[] cArr = this.f110008e;
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    public StringMatcher getDelimiterMatcher() {
        return this.f110011h;
    }

    public StringMatcher getIgnoredMatcher() {
        return this.f110013j;
    }

    public StringMatcher getQuoteMatcher() {
        return this.f110012i;
    }

    public String[] getTokenArray() {
        m68256b();
        return (String[]) this.f110009f.clone();
    }

    public List<String> getTokenList() {
        m68256b();
        ArrayList arrayList = new ArrayList(this.f110009f.length);
        Collections.addAll(arrayList, this.f110009f);
        return arrayList;
    }

    public StringMatcher getTrimmerMatcher() {
        return this.f110014k;
    }

    /* renamed from: h */
    public final int m68260h(char[] cArr, int i, int i2, TextStringBuilder textStringBuilder, List<String> list, int i3, int i4) {
        textStringBuilder.clear();
        boolean z = i4 > 0;
        int i5 = i;
        int i6 = 0;
        while (i5 < i2) {
            if (z) {
                int i7 = i6;
                int i8 = i5;
                if (m68258f(cArr, i5, i2, i3, i4)) {
                    int i9 = i8 + i4;
                    if (m68258f(cArr, i9, i2, i3, i4)) {
                        textStringBuilder.append(cArr, i8, i4);
                        i5 = i8 + (i4 * 2);
                        i6 = textStringBuilder.size();
                    } else {
                        i6 = i7;
                        i5 = i9;
                        z = false;
                    }
                } else {
                    i5 = i8 + 1;
                    textStringBuilder.append(cArr[i8]);
                    i6 = textStringBuilder.size();
                }
            } else {
                int i10 = i6;
                int i11 = i5;
                int isMatch = getDelimiterMatcher().isMatch(cArr, i11, i, i2);
                if (isMatch > 0) {
                    m68255a(list, textStringBuilder.substring(0, i10));
                    return i11 + isMatch;
                }
                if (i4 <= 0 || !m68258f(cArr, i11, i2, i3, i4)) {
                    int isMatch2 = getIgnoredMatcher().isMatch(cArr, i11, i, i2);
                    if (isMatch2 <= 0) {
                        isMatch2 = getTrimmerMatcher().isMatch(cArr, i11, i, i2);
                        if (isMatch2 > 0) {
                            textStringBuilder.append(cArr, i11, isMatch2);
                        } else {
                            i5 = i11 + 1;
                            textStringBuilder.append(cArr[i11]);
                            i6 = textStringBuilder.size();
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
        m68255a(list, textStringBuilder.substring(0, i6));
        return -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        m68256b();
        return this.f110010g < this.f110009f.length;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        m68256b();
        return this.f110010g > 0;
    }

    public boolean isEmptyTokenAsNull() {
        return this.f110015l;
    }

    public boolean isIgnoreEmptyTokens() {
        return this.f110016m;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f110010g;
    }

    public String nextToken() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.f110009f;
        int i = this.f110010g;
        this.f110010g = i + 1;
        return strArr[i];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f110010g - 1;
    }

    public String previousToken() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.f110009f;
        int i = this.f110010g - 1;
        this.f110010g = i;
        return strArr[i];
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    public StringTokenizer reset() {
        this.f110010g = 0;
        this.f110009f = null;
        return this;
    }

    public StringTokenizer setDelimiterChar(char c) {
        return setDelimiterMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setDelimiterMatcher(StringMatcher stringMatcher) {
        if (stringMatcher == null) {
            this.f110011h = StringMatcherFactory.INSTANCE.noneMatcher();
        } else {
            this.f110011h = stringMatcher;
        }
        return this;
    }

    public StringTokenizer setDelimiterString(String str) {
        return setDelimiterMatcher(StringMatcherFactory.INSTANCE.stringMatcher(str));
    }

    public StringTokenizer setEmptyTokenAsNull(boolean z) {
        this.f110015l = z;
        return this;
    }

    public StringTokenizer setIgnoreEmptyTokens(boolean z) {
        this.f110016m = z;
        return this;
    }

    public StringTokenizer setIgnoredChar(char c) {
        return setIgnoredMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setIgnoredMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.f110013j = stringMatcher;
        }
        return this;
    }

    public StringTokenizer setQuoteChar(char c) {
        return setQuoteMatcher(StringMatcherFactory.INSTANCE.charMatcher(c));
    }

    public StringTokenizer setQuoteMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.f110012i = stringMatcher;
        }
        return this;
    }

    public StringTokenizer setTrimmerMatcher(StringMatcher stringMatcher) {
        if (stringMatcher != null) {
            this.f110014k = stringMatcher;
        }
        return this;
    }

    public int size() {
        m68256b();
        return this.f110009f.length;
    }

    public String toString() {
        if (this.f110009f == null) {
            return "StringTokenizer[not tokenized yet]";
        }
        return "StringTokenizer" + getTokenList();
    }

    public List<String> tokenize(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        TextStringBuilder textStringBuilder = new TextStringBuilder();
        ArrayList arrayList = new ArrayList();
        int i3 = i;
        while (i3 >= 0 && i3 < i2) {
            i3 = m68259g(cArr, i3, i2, textStringBuilder, arrayList);
            if (i3 >= i2) {
                m68255a(arrayList, "");
            }
        }
        return arrayList;
    }

    public static StringTokenizer getCSVInstance(String str) {
        StringTokenizer m68253d = m68253d();
        m68253d.reset(str);
        return m68253d;
    }

    public static StringTokenizer getTSVInstance(String str) {
        StringTokenizer m68254e = m68254e();
        m68254e.reset(str);
        return m68254e;
    }

    @Override // java.util.ListIterator
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        if (hasNext()) {
            String[] strArr = this.f110009f;
            int i = this.f110010g;
            this.f110010g = i + 1;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public String previous() {
        if (hasPrevious()) {
            String[] strArr = this.f110009f;
            int i = this.f110010g - 1;
            this.f110010g = i;
            return strArr[i];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    public StringTokenizer reset(String str) {
        reset();
        if (str != null) {
            this.f110008e = str.toCharArray();
        } else {
            this.f110008e = null;
        }
        return this;
    }

    public static StringTokenizer getCSVInstance(char[] cArr) {
        StringTokenizer m68253d = m68253d();
        m68253d.reset(cArr);
        return m68253d;
    }

    public static StringTokenizer getTSVInstance(char[] cArr) {
        StringTokenizer m68254e = m68254e();
        m68254e.reset(cArr);
        return m68254e;
    }

    public StringTokenizer reset(char[] cArr) {
        reset();
        if (cArr != null) {
            this.f110008e = (char[]) cArr.clone();
        } else {
            this.f110008e = null;
        }
        return this;
    }

    public StringTokenizer(String str) {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.f110011h = stringMatcherFactory.splitMatcher();
        this.f110012i = stringMatcherFactory.noneMatcher();
        this.f110013j = stringMatcherFactory.noneMatcher();
        this.f110014k = stringMatcherFactory.noneMatcher();
        this.f110015l = false;
        this.f110016m = true;
        if (str != null) {
            this.f110008e = str.toCharArray();
        } else {
            this.f110008e = null;
        }
    }

    public StringTokenizer(String str, char c) {
        this(str);
        setDelimiterChar(c);
    }

    public StringTokenizer(String str, String str2) {
        this(str);
        setDelimiterString(str2);
    }

    public StringTokenizer(String str, StringMatcher stringMatcher) {
        this(str);
        setDelimiterMatcher(stringMatcher);
    }

    public StringTokenizer(String str, char c, char c2) {
        this(str, c);
        setQuoteChar(c2);
    }

    public StringTokenizer(String str, StringMatcher stringMatcher, StringMatcher stringMatcher2) {
        this(str, stringMatcher);
        setQuoteMatcher(stringMatcher2);
    }

    public StringTokenizer(char[] cArr) {
        StringMatcherFactory stringMatcherFactory = StringMatcherFactory.INSTANCE;
        this.f110011h = stringMatcherFactory.splitMatcher();
        this.f110012i = stringMatcherFactory.noneMatcher();
        this.f110013j = stringMatcherFactory.noneMatcher();
        this.f110014k = stringMatcherFactory.noneMatcher();
        this.f110015l = false;
        this.f110016m = true;
        if (cArr == null) {
            this.f110008e = null;
        } else {
            this.f110008e = (char[]) cArr.clone();
        }
    }

    public StringTokenizer(char[] cArr, char c) {
        this(cArr);
        setDelimiterChar(c);
    }

    public StringTokenizer(char[] cArr, String str) {
        this(cArr);
        setDelimiterString(str);
    }

    public StringTokenizer(char[] cArr, StringMatcher stringMatcher) {
        this(cArr);
        setDelimiterMatcher(stringMatcher);
    }

    public StringTokenizer(char[] cArr, char c, char c2) {
        this(cArr, c);
        setQuoteChar(c2);
    }

    public StringTokenizer(char[] cArr, StringMatcher stringMatcher, StringMatcher stringMatcher2) {
        this(cArr, stringMatcher);
        setQuoteMatcher(stringMatcher2);
    }
}
