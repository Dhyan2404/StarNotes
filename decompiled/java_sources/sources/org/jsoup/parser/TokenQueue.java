package org.jsoup.parser;

import com.google.firebase.installations.local.IidStore;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;

/* loaded from: classes13.dex */
public class TokenQueue {

    /* renamed from: c */
    public static final char f114206c = '\\';

    /* renamed from: a */
    public String f114207a;

    /* renamed from: b */
    public int f114208b = 0;

    public TokenQueue(String str) {
        Validate.notNull(str);
        this.f114207a = str;
    }

    public static String unescape(String str) {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (i < length) {
            char c2 = charArray[i];
            if (c2 != '\\' || (c != 0 && c == '\\')) {
                borrowBuilder.append(c2);
            }
            i++;
            c = c2;
        }
        return StringUtil.releaseBuilder(borrowBuilder);
    }

    /* renamed from: a */
    public final int m71315a() {
        return this.f114207a.length() - this.f114208b;
    }

    public void addFirst(Character ch) {
        addFirst(ch.toString());
    }

    public void advance() {
        if (isEmpty()) {
            return;
        }
        this.f114208b++;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[EDGE_INSN: B:14:0x0048->B:15:0x0048 BREAK  A[LOOP:0: B:2:0x0007->B:22:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[LOOP:0: B:2:0x0007->B:22:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String chompBalanced(char r10, char r11) {
        /*
            r9 = this;
            r0 = -1
            r1 = 0
            r5 = r0
            r6 = r5
            r2 = r1
            r3 = r2
            r4 = r3
        L7:
            boolean r7 = r9.isEmpty()
            if (r7 == 0) goto Le
            goto L48
        Le:
            char r7 = r9.consume()
            if (r1 == 0) goto L18
            r8 = 92
            if (r1 == r8) goto L3f
        L18:
            r8 = 39
            if (r7 != r8) goto L23
            if (r7 == r10) goto L23
            if (r2 != 0) goto L23
            r3 = r3 ^ 1
            goto L2d
        L23:
            r8 = 34
            if (r7 != r8) goto L2d
            if (r7 == r10) goto L2d
            if (r3 != 0) goto L2d
            r2 = r2 ^ 1
        L2d:
            if (r3 != 0) goto L46
            if (r2 == 0) goto L32
            goto L46
        L32:
            if (r7 != r10) goto L3b
            int r4 = r4 + 1
            if (r5 != r0) goto L3f
            int r5 = r9.f114208b
            goto L3f
        L3b:
            if (r7 != r11) goto L3f
            int r4 = r4 + (-1)
        L3f:
            if (r4 <= 0) goto L45
            if (r1 == 0) goto L45
            int r6 = r9.f114208b
        L45:
            r1 = r7
        L46:
            if (r4 > 0) goto L7
        L48:
            if (r6 < 0) goto L51
            java.lang.String r9 = r9.f114207a
            java.lang.String r9 = r9.substring(r5, r6)
            goto L53
        L51:
            java.lang.String r9 = ""
        L53:
            if (r4 <= 0) goto L6e
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "Did not find balanced marker at '"
            r10.append(r11)
            r10.append(r9)
            java.lang.String r11 = "'"
            r10.append(r11)
            java.lang.String r10 = r10.toString()
            org.jsoup.helper.Validate.fail(r10)
        L6e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokenQueue.chompBalanced(char, char):java.lang.String");
    }

    public String chompTo(String str) {
        String consumeTo = consumeTo(str);
        matchChomp(str);
        return consumeTo;
    }

    public String chompToIgnoreCase(String str) {
        String consumeToIgnoreCase = consumeToIgnoreCase(str);
        matchChomp(str);
        return consumeToIgnoreCase;
    }

    public char consume() {
        String str = this.f114207a;
        int i = this.f114208b;
        this.f114208b = i + 1;
        return str.charAt(i);
    }

    public String consumeAttributeKey() {
        int i = this.f114208b;
        while (!isEmpty() && (matchesWord() || matchesAny('-', NameUtil.USCORE, ':'))) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public String consumeCssIdentifier() {
        int i = this.f114208b;
        while (!isEmpty() && (matchesWord() || matchesAny('-', NameUtil.USCORE))) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public String consumeElementSelector() {
        int i = this.f114208b;
        while (!isEmpty() && (matchesWord() || matchesAny("*|", IidStore.f35940g, "_", "-"))) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public String consumeTagName() {
        int i = this.f114208b;
        while (!isEmpty() && (matchesWord() || matchesAny(':', NameUtil.USCORE, '-'))) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public String consumeTo(String str) {
        int indexOf = this.f114207a.indexOf(str, this.f114208b);
        if (indexOf == -1) {
            return remainder();
        }
        String substring = this.f114207a.substring(this.f114208b, indexOf);
        this.f114208b += substring.length();
        return substring;
    }

    public String consumeToAny(String... strArr) {
        int i = this.f114208b;
        while (!isEmpty() && !matchesAny(strArr)) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public String consumeToIgnoreCase(String str) {
        int i;
        int i2;
        int i3 = this.f114208b;
        String substring = str.substring(0, 1);
        boolean equals = substring.toLowerCase().equals(substring.toUpperCase());
        while (!isEmpty() && !matches(str)) {
            if (equals) {
                int indexOf = this.f114207a.indexOf(substring, this.f114208b);
                int i4 = this.f114208b;
                int i5 = indexOf - i4;
                if (i5 == 0) {
                    i2 = i4 + 1;
                } else if (i5 < 0) {
                    i = this.f114207a.length();
                } else {
                    i2 = i4 + i5;
                }
                this.f114208b = i2;
            } else {
                i = this.f114208b + 1;
            }
            this.f114208b = i;
        }
        return this.f114207a.substring(i3, this.f114208b);
    }

    public boolean consumeWhitespace() {
        boolean z = false;
        while (matchesWhitespace()) {
            this.f114208b++;
            z = true;
        }
        return z;
    }

    public String consumeWord() {
        int i = this.f114208b;
        while (matchesWord()) {
            this.f114208b++;
        }
        return this.f114207a.substring(i, this.f114208b);
    }

    public boolean isEmpty() {
        return m71315a() == 0;
    }

    public boolean matchChomp(String str) {
        if (!matches(str)) {
            return false;
        }
        this.f114208b += str.length();
        return true;
    }

    public boolean matches(String str) {
        return this.f114207a.regionMatches(true, this.f114208b, str, 0, str.length());
    }

    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        for (char c : cArr) {
            if (this.f114207a.charAt(this.f114208b) == c) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesCS(String str) {
        return this.f114207a.startsWith(str, this.f114208b);
    }

    public boolean matchesStartTag() {
        return m71315a() >= 2 && this.f114207a.charAt(this.f114208b) == '<' && Character.isLetter(this.f114207a.charAt(this.f114208b + 1));
    }

    public boolean matchesWhitespace() {
        return !isEmpty() && StringUtil.isWhitespace(this.f114207a.charAt(this.f114208b));
    }

    public boolean matchesWord() {
        return !isEmpty() && Character.isLetterOrDigit(this.f114207a.charAt(this.f114208b));
    }

    public char peek() {
        if (isEmpty()) {
            return (char) 0;
        }
        return this.f114207a.charAt(this.f114208b);
    }

    public String remainder() {
        String str = this.f114207a;
        String substring = str.substring(this.f114208b, str.length());
        this.f114208b = this.f114207a.length();
        return substring;
    }

    public String toString() {
        return this.f114207a.substring(this.f114208b);
    }

    public void addFirst(String str) {
        this.f114207a = str + this.f114207a.substring(this.f114208b);
        this.f114208b = 0;
    }

    public void consume(String str) {
        if (!matches(str)) {
            throw new IllegalStateException("Queue did not match expected sequence");
        }
        int length = str.length();
        if (length > m71315a()) {
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        this.f114208b += length;
    }

    public boolean matchesAny(String... strArr) {
        for (String str : strArr) {
            if (matches(str)) {
                return true;
            }
        }
        return false;
    }
}
