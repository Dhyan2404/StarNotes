package org.apache.commons.text.matcher;

import java.util.Arrays;

/* renamed from: org.apache.commons.text.matcher.a */
/* loaded from: classes12.dex */
public abstract class AbstractC19330a implements StringMatcher {

    /* renamed from: org.apache.commons.text.matcher.a$a */
    /* loaded from: classes12.dex */
    public static final class a extends AbstractC19330a {

        /* renamed from: a */
        public final char f110046a;

        public a(char c) {
            this.f110046a = c;
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return this.f110046a == cArr[i] ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.text.matcher.a$b */
    /* loaded from: classes12.dex */
    public static final class b extends AbstractC19330a {

        /* renamed from: a */
        public final char[] f110047a;

        public b(char[] cArr) {
            char[] cArr2 = (char[]) cArr.clone();
            this.f110047a = cArr2;
            Arrays.sort(cArr2);
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return Arrays.binarySearch(this.f110047a, cArr[i]) >= 0 ? 1 : 0;
        }
    }

    /* renamed from: org.apache.commons.text.matcher.a$c */
    /* loaded from: classes12.dex */
    public static final class c extends AbstractC19330a {
        @Override // org.apache.commons.text.matcher.StringMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return 0;
        }
    }

    /* renamed from: org.apache.commons.text.matcher.a$d */
    /* loaded from: classes12.dex */
    public static final class d extends AbstractC19330a {

        /* renamed from: a */
        public final char[] f110048a;

        public d(String str) {
            this.f110048a = str.toCharArray();
        }

        @Override // org.apache.commons.text.matcher.StringMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            int length = this.f110048a.length;
            if (i + length > i3) {
                return 0;
            }
            int i4 = 0;
            while (true) {
                char[] cArr2 = this.f110048a;
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
            return super.toString() + ' ' + Arrays.toString(this.f110048a);
        }
    }

    /* renamed from: org.apache.commons.text.matcher.a$e */
    /* loaded from: classes12.dex */
    public static final class e extends AbstractC19330a {

        /* renamed from: a */
        public static final int f110049a = 32;

        @Override // org.apache.commons.text.matcher.StringMatcher
        public int isMatch(char[] cArr, int i, int i2, int i3) {
            return cArr[i] <= ' ' ? 1 : 0;
        }
    }

    /* renamed from: a */
    public int m68268a(char[] cArr, int i) {
        return isMatch(cArr, i, 0, cArr.length);
    }
}
