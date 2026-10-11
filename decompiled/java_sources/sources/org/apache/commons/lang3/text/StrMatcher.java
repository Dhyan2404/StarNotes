package org.apache.commons.lang3.text;

import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.util.Chars;

@Deprecated
/* loaded from: classes12.dex */
public abstract class StrMatcher {

    /* renamed from: a */
    public static final StrMatcher f107569a = new C18967a(',');

    /* renamed from: b */
    public static final StrMatcher f107570b = new C18967a('\t');

    /* renamed from: c */
    public static final StrMatcher f107571c = new C18967a(' ');

    /* renamed from: d */
    public static final StrMatcher f107572d = new C18968b(" \t\n\r\f".toCharArray());

    /* renamed from: e */
    public static final StrMatcher f107573e = new C18971e();

    /* renamed from: f */
    public static final StrMatcher f107574f = new C18967a(Chars.QUOTE);

    /* renamed from: g */
    public static final StrMatcher f107575g = new C18967a('\"');

    /* renamed from: h */
    public static final StrMatcher f107576h = new C18968b("'\"".toCharArray());

    /* renamed from: i */
    public static final StrMatcher f107577i = new C18969c();

    /* renamed from: org.apache.commons.lang3.text.StrMatcher$a */
    /* loaded from: classes12.dex */
    public static final class C18967a extends StrMatcher {

        /* renamed from: j */
        public final char f107578j;

        public C18967a(char c) {
            this.f107578j = c;
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return this.f107578j == cArr[i] ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.StrMatcher$b */
    /* loaded from: classes12.dex */
    public static final class C18968b extends StrMatcher {

        /* renamed from: j */
        public final char[] f107579j;

        public C18968b(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.f107579j = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return Arrays.binarySearch(this.f107579j, cArr[i]) >= 0 ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.StrMatcher$c */
    /* loaded from: classes12.dex */
    public static final class C18969c extends StrMatcher {
        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return 0;
        }
    }

    /* renamed from: org.apache.commons.lang3.text.StrMatcher$d */
    /* loaded from: classes12.dex */
    public static final class C18970d extends StrMatcher {

        /* renamed from: j */
        public final char[] f107580j;

        public C18970d(String str) {
            this.f107580j = str.toCharArray();
        }

        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            int length = this.f107580j.length;
            if (i + length > i3) {
                return 0;
            }
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f107580j;
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
            return super.toString() + ' ' + Arrays.toString(this.f107580j);
        }
    }

    /* renamed from: org.apache.commons.lang3.text.StrMatcher$e */
    /* loaded from: classes12.dex */
    public static final class C18971e extends StrMatcher {
        @Override // org.apache.commons.lang3.text.StrMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return cArr[i] <= ' ' ? 1 : 0;
        }
    }

    public static StrMatcher charMatcher(char c) {
        return new C18967a(c);
    }

    public static StrMatcher charSetMatcher(char... cArr) {
        if (cArr != null && cArr.length != 0) {
            if (cArr.length == 1) {
                return new C18967a(cArr[0]);
            }
            return new C18968b(cArr);
        }
        return f107577i;
    }

    public static StrMatcher commaMatcher() {
        return f107569a;
    }

    public static StrMatcher doubleQuoteMatcher() {
        return f107575g;
    }

    public static StrMatcher noneMatcher() {
        return f107577i;
    }

    public static StrMatcher quoteMatcher() {
        return f107576h;
    }

    public static StrMatcher singleQuoteMatcher() {
        return f107574f;
    }

    public static StrMatcher spaceMatcher() {
        return f107571c;
    }

    public static StrMatcher splitMatcher() {
        return f107572d;
    }

    public static StrMatcher stringMatcher(String str) {
        return StringUtils.isEmpty(str) ? f107577i : new C18970d(str);
    }

    public static StrMatcher tabMatcher() {
        return f107570b;
    }

    public static StrMatcher trimMatcher() {
        return f107573e;
    }

    public int isMatch(char[] cArr, int i) {
        return isMatch(cArr, i, 0, cArr.length);
    }

    public abstract int isMatch(char[] cArr, int i, int i2, int i3);

    public static StrMatcher charSetMatcher(String str) {
        if (StringUtils.isEmpty(str)) {
            return f107577i;
        }
        if (str.length() == 1) {
            return new C18967a(str.charAt(0));
        }
        return new C18968b(str.toCharArray());
    }
}
