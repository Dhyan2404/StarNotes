package org.apache.commons.text;

import java.util.Arrays;
import org.apache.logging.log4j.util.Chars;

@Deprecated
/* loaded from: classes12.dex */
public abstract class StrMatcher {

    /* renamed from: a */
    public static final StrMatcher f109964a = new C19319a(',');

    /* renamed from: b */
    public static final StrMatcher f109965b = new C19319a('\t');

    /* renamed from: c */
    public static final StrMatcher f109966c = new C19319a(' ');

    /* renamed from: d */
    public static final StrMatcher f109967d = new C19320b(" \t\n\r\f".toCharArray());

    /* renamed from: e */
    public static final StrMatcher f109968e = new C19323e();

    /* renamed from: f */
    public static final StrMatcher f109969f = new C19319a(Chars.QUOTE);

    /* renamed from: g */
    public static final StrMatcher f109970g = new C19319a('\"');

    /* renamed from: h */
    public static final StrMatcher f109971h = new C19320b("'\"".toCharArray());

    /* renamed from: i */
    public static final StrMatcher f109972i = new C19321c();

    /* renamed from: org.apache.commons.text.StrMatcher$a */
    /* loaded from: classes12.dex */
    public static final class C19319a extends StrMatcher {

        /* renamed from: j */
        public final char f109973j;

        public C19319a(char c) {
            this.f109973j = c;
        }

        @Override // org.apache.commons.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return this.f109973j == cArr[i] ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.text.StrMatcher$b */
    /* loaded from: classes12.dex */
    public static final class C19320b extends StrMatcher {

        /* renamed from: j */
        public final char[] f109974j;

        public C19320b(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.f109974j = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return Arrays.binarySearch(this.f109974j, cArr[i]) >= 0 ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.text.StrMatcher$c */
    /* loaded from: classes12.dex */
    public static final class C19321c extends StrMatcher {
        @Override // org.apache.commons.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return 0;
        }
    }

    /* renamed from: org.apache.commons.text.StrMatcher$d */
    /* loaded from: classes12.dex */
    public static final class C19322d extends StrMatcher {

        /* renamed from: j */
        public final char[] f109975j;

        public C19322d(String str) {
            this.f109975j = str.toCharArray();
        }

        @Override // org.apache.commons.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            int length = this.f109975j.length;
            if (i + length > i3) {
                return 0;
            }
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f109975j;
                if (i4 >= cArr2.length) {
                    return length;
                }
                if (cArr2[i4] != cArr[i]) {
                    return 0;
                }
                i4++;
                i++;
            }
        }

        public String toString() {
            return super.toString() + ' ' + Arrays.toString(this.f109975j);
        }
    }

    /* renamed from: org.apache.commons.text.StrMatcher$e */
    /* loaded from: classes12.dex */
    public static final class C19323e extends StrMatcher {
        @Override // org.apache.commons.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return cArr[i] <= ' ' ? 1 : 0;
        }
    }

    public static StrMatcher charMatcher(char c) {
        return new C19319a(c);
    }

    public static StrMatcher charSetMatcher(char... cArr) {
        if (cArr != null && cArr.length != 0) {
            if (cArr.length == 1) {
                return new C19319a(cArr[0]);
            }
            return new C19320b(cArr);
        }
        return f109972i;
    }

    public static StrMatcher commaMatcher() {
        return f109964a;
    }

    public static StrMatcher doubleQuoteMatcher() {
        return f109970g;
    }

    public static StrMatcher noneMatcher() {
        return f109972i;
    }

    public static StrMatcher quoteMatcher() {
        return f109971h;
    }

    public static StrMatcher singleQuoteMatcher() {
        return f109969f;
    }

    public static StrMatcher spaceMatcher() {
        return f109966c;
    }

    public static StrMatcher splitMatcher() {
        return f109967d;
    }

    public static StrMatcher stringMatcher(String str) {
        return (str == null || str.length() == 0) ? f109972i : new C19322d(str);
    }

    public static StrMatcher tabMatcher() {
        return f109965b;
    }

    public static StrMatcher trimMatcher() {
        return f109968e;
    }

    public int isMatch(char[] cArr, int i) {
        return isMatch(cArr, i, 0, cArr.length);
    }

    public abstract int isMatch(char[] cArr, int i, int i2, int i3);

    public static StrMatcher charSetMatcher(String str) {
        if (str != null && str.length() != 0) {
            if (str.length() == 1) {
                return new C19319a(str.charAt(0));
            }
            return new C19320b(str.toCharArray());
        }
        return f109972i;
    }
}
