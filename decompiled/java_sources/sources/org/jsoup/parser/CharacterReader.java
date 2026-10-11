package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;
import org.jsoup.helper.Validate;

/* loaded from: classes13.dex */
public final class CharacterReader {

    /* renamed from: l */
    public static final char f114118l = 65535;

    /* renamed from: m */
    public static final int f114119m = 12;

    /* renamed from: n */
    public static final int f114120n = 32768;

    /* renamed from: o */
    public static final int f114121o = 24576;

    /* renamed from: p */
    public static final int f114122p = 1024;

    /* renamed from: q */
    public static final int f114123q = 512;

    /* renamed from: a */
    public char[] f114124a;

    /* renamed from: b */
    public Reader f114125b;

    /* renamed from: c */
    public int f114126c;

    /* renamed from: d */
    public int f114127d;

    /* renamed from: e */
    public int f114128e;

    /* renamed from: f */
    public int f114129f;

    /* renamed from: g */
    public int f114130g;

    /* renamed from: h */
    public int f114131h;

    /* renamed from: i */
    public int f114132i;

    /* renamed from: j */
    public String[] f114133j;

    /* renamed from: k */
    public boolean f114134k;

    public CharacterReader(Reader reader) {
        this(reader, 32768);
    }

    /* renamed from: F */
    public static boolean m71164F(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }

    /* renamed from: a */
    public static String m71165a(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = i2 * 31;
        int i4 = 0;
        int i5 = i;
        while (i4 < i2) {
            i3 = (i3 * 31) + cArr[i5];
            i4++;
            i5++;
        }
        int i6 = i3 & 511;
        String str = strArr[i6];
        if (str == null) {
            String str2 = new String(cArr, i, i2);
            strArr[i6] = str2;
            return str2;
        }
        if (m71164F(cArr, i, i2, str)) {
            return str;
        }
        String str3 = new String(cArr, i, i2);
        strArr[i6] = str3;
        return str3;
    }

    /* renamed from: A */
    public boolean m71166A(String str) {
        m71174b();
        int length = str.length();
        if (length > this.f114126c - this.f114128e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.f114124a[this.f114128e + i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    public boolean m71167B() {
        if (isEmpty()) {
            return false;
        }
        char c = this.f114124a[this.f114128e];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    /* renamed from: C */
    public int m71168C(char c) {
        m71174b();
        for (int i = this.f114128e; i < this.f114126c; i++) {
            if (c == this.f114124a[i]) {
                return i - this.f114128e;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0021, code lost:
    
        r2 = r1 + 1;
        r4 = (r9.length() + r2) - 1;
        r5 = r8.f114126c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r1 >= r5) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if (r4 > r5) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
    
        if (r5 >= r4) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r9.charAt(r3) != r8.f114124a[r5]) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
    
        r5 = r5 + 1;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5 != r4) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        return r1 - r8.f114128e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0047, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        if (r0 != r8.f114124a[r1]) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
    
        if (r1 >= r8.f114126c) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
    
        if (r0 == r8.f114124a[r1]) goto L32;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m71169D(java.lang.CharSequence r9) {
        /*
            r8 = this;
            r8.m71174b()
            r0 = 0
            char r0 = r9.charAt(r0)
            int r1 = r8.f114128e
        La:
            int r2 = r8.f114126c
            if (r1 >= r2) goto L49
            char[] r2 = r8.f114124a
            char r2 = r2[r1]
            r3 = 1
            if (r0 == r2) goto L21
        L15:
            int r1 = r1 + r3
            int r2 = r8.f114126c
            if (r1 >= r2) goto L21
            char[] r2 = r8.f114124a
            char r2 = r2[r1]
            if (r0 == r2) goto L21
            goto L15
        L21:
            int r2 = r1 + 1
            int r4 = r9.length()
            int r4 = r4 + r2
            int r4 = r4 - r3
            int r5 = r8.f114126c
            if (r1 >= r5) goto L47
            if (r4 > r5) goto L47
            r5 = r2
        L30:
            if (r5 >= r4) goto L41
            char r6 = r9.charAt(r3)
            char[] r7 = r8.f114124a
            char r7 = r7[r5]
            if (r6 != r7) goto L41
            int r5 = r5 + 1
            int r3 = r3 + 1
            goto L30
        L41:
            if (r5 != r4) goto L47
            int r8 = r8.f114128e
            int r1 = r1 - r8
            return r1
        L47:
            r1 = r2
            goto La
        L49:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.m71169D(java.lang.CharSequence):int");
    }

    /* renamed from: E */
    public boolean m71170E(int i, int i2, String str) {
        return m71164F(this.f114124a, i, i2, str);
    }

    /* renamed from: G */
    public void m71171G() {
        int i = this.f114132i;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.f114128e = i;
        m71173I();
    }

    /* renamed from: H */
    public void m71172H() {
        int i = this.f114128e;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("No buffer left to unconsume"));
        }
        this.f114128e = i - 1;
        m71190r();
    }

    /* renamed from: I */
    public void m71173I() {
        this.f114132i = -1;
    }

    public void advance() {
        this.f114128e++;
        m71177e();
    }

    /* renamed from: b */
    public final void m71174b() {
        int i;
        int i2;
        boolean z;
        if (this.f114134k || (i = this.f114128e) < this.f114127d) {
            return;
        }
        int i3 = this.f114132i;
        if (i3 != -1) {
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        try {
            long j = i;
            long skip = this.f114125b.skip(j);
            this.f114125b.mark(32768);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 > 1024) {
                    break;
                }
                Reader reader = this.f114125b;
                char[] cArr = this.f114124a;
                int read = reader.read(cArr, i4, cArr.length - i4);
                if (read == -1) {
                    this.f114134k = true;
                }
                if (read <= 0) {
                    break;
                } else {
                    i4 += read;
                }
            }
            this.f114125b.reset();
            if (i4 > 0) {
                if (skip != j) {
                    z = false;
                }
                Validate.isTrue(z);
                this.f114126c = i4;
                this.f114131h += i;
                this.f114128e = i2;
                if (this.f114132i != -1) {
                    this.f114132i = 0;
                }
                if (i4 > 24576) {
                    i4 = 24576;
                }
                this.f114127d = i4;
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public int byteEndPos() {
        return this.f114129f;
    }

    public int byteStartPos() {
        return this.f114130g;
    }

    /* renamed from: c */
    public final void m71175c(String str) {
        this.f114129f += str.getBytes().length;
    }

    public int charEndPos() {
        return pos();
    }

    public void close() {
        Reader reader = this.f114125b;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.f114125b = null;
            this.f114124a = null;
            this.f114133j = null;
            throw th;
        }
        this.f114125b = null;
        this.f114124a = null;
        this.f114133j = null;
    }

    public String consumeTo(char c) {
        int m71168C = m71168C(c);
        if (m71168C == -1) {
            return m71188p();
        }
        String m71165a = m71165a(this.f114124a, this.f114133j, this.f114128e, m71168C);
        this.f114128e += m71168C;
        m71175c(m71165a);
        return m71165a;
    }

    public String consumeToAny(char... cArr) {
        m71174b();
        int i = this.f114128e;
        int i2 = this.f114126c;
        char[] cArr2 = this.f114124a;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.f114128e = i3;
        String m71165a = i3 > i ? m71165a(this.f114124a, this.f114133j, i, i3 - i) : "";
        m71175c(m71165a);
        return m71165a;
    }

    public char current() {
        m71174b();
        if (m71176d()) {
            return (char) 65535;
        }
        return this.f114124a[this.f114128e];
    }

    /* renamed from: d */
    public final boolean m71176d() {
        return this.f114128e >= this.f114126c;
    }

    /* renamed from: e */
    public final void m71177e() {
        this.f114129f++;
    }

    /* renamed from: f */
    public char m71178f() {
        m71174b();
        char c = m71176d() ? (char) 65535 : this.f114124a[this.f114128e];
        this.f114128e++;
        m71177e();
        return c;
    }

    /* renamed from: g */
    public String m71179g() {
        int i = this.f114128e;
        int i2 = this.f114126c;
        char[] cArr = this.f114124a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.f114128e = i3;
        String m71165a = i3 > i ? m71165a(this.f114124a, this.f114133j, i, i3 - i) : "";
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: h */
    public String m71180h() {
        int i;
        char c;
        m71174b();
        int i2 = this.f114128e;
        while (true) {
            i = this.f114128e;
            if (i >= this.f114126c || (c = this.f114124a[i]) < '0' || c > '9') {
                break;
            }
            this.f114128e = i + 1;
        }
        String m71165a = m71165a(this.f114124a, this.f114133j, i2, i - i2);
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: i */
    public String m71181i() {
        int i;
        char c;
        m71174b();
        int i2 = this.f114128e;
        while (true) {
            i = this.f114128e;
            if (i >= this.f114126c || (((c = this.f114124a[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.f114128e = i + 1;
        }
        String m71165a = m71165a(this.f114124a, this.f114133j, i2, i - i2);
        m71175c(m71165a);
        return m71165a;
    }

    public boolean isEmpty() {
        m71174b();
        return this.f114128e >= this.f114126c;
    }

    /* renamed from: j */
    public String m71182j() {
        char c;
        m71174b();
        int i = this.f114128e;
        while (true) {
            int i2 = this.f114128e;
            if (i2 >= this.f114126c || (((c = this.f114124a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.f114128e++;
        }
        String m71165a = m71165a(this.f114124a, this.f114133j, i, this.f114128e - i);
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: k */
    public String m71183k() {
        char c;
        m71174b();
        int i = this.f114128e;
        while (true) {
            int i2 = this.f114128e;
            if (i2 >= this.f114126c || (((c = this.f114124a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.f114128e++;
        }
        while (!m71176d()) {
            char[] cArr = this.f114124a;
            int i3 = this.f114128e;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.f114128e = i3 + 1;
        }
        String m71165a = m71165a(this.f114124a, this.f114133j, i, this.f114128e - i);
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: l */
    public String m71184l() {
        int i = this.f114128e;
        int i2 = this.f114126c;
        char[] cArr = this.f114124a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '<') {
                break;
            }
            i3++;
        }
        this.f114128e = i3;
        String m71165a = i3 > i ? m71165a(this.f114124a, this.f114133j, i, i3 - i) : "";
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: m */
    public String m71185m() {
        m71174b();
        int i = this.f114128e;
        int i2 = this.f114126c;
        char[] cArr = this.f114124a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == ' ' || c == '/' || c == '<' || c == '>' || c == '\t' || c == '\n' || c == '\f' || c == '\r') {
                break;
            }
            i3++;
        }
        this.f114128e = i3;
        String m71165a = i3 > i ? m71165a(this.f114124a, this.f114133j, i, i3 - i) : "";
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: n */
    public String m71186n(String str) {
        int m71169D = m71169D(str);
        if (m71169D != -1) {
            String m71165a = m71165a(this.f114124a, this.f114133j, this.f114128e, m71169D);
            this.f114128e += m71169D;
            m71175c(m71165a);
            return m71165a;
        }
        if (this.f114126c - this.f114128e < str.length()) {
            return m71188p();
        }
        int length = (this.f114126c - str.length()) + 1;
        char[] cArr = this.f114124a;
        String[] strArr = this.f114133j;
        int i = this.f114128e;
        String m71165a2 = m71165a(cArr, strArr, i, length - i);
        this.f114128e = length;
        return m71165a2;
    }

    public void nextPos() {
        this.f114130g = this.f114129f;
    }

    /* renamed from: o */
    public String m71187o(char... cArr) {
        m71174b();
        int i = this.f114128e;
        int i2 = this.f114126c;
        char[] cArr2 = this.f114124a;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.f114128e = i3;
        String m71165a = i3 > i ? m71165a(this.f114124a, this.f114133j, i, i3 - i) : "";
        m71175c(m71165a);
        return m71165a;
    }

    /* renamed from: p */
    public String m71188p() {
        m71174b();
        char[] cArr = this.f114124a;
        String[] strArr = this.f114133j;
        int i = this.f114128e;
        String m71165a = m71165a(cArr, strArr, i, this.f114126c - i);
        this.f114128e = this.f114126c;
        return m71165a;
    }

    public int pos() {
        return this.f114131h + this.f114128e;
    }

    /* renamed from: q */
    public boolean m71189q(String str) {
        Locale locale = Locale.ENGLISH;
        return m71169D(str.toLowerCase(locale)) > -1 || m71169D(str.toUpperCase(locale)) > -1;
    }

    /* renamed from: r */
    public final void m71190r() {
        this.f114129f--;
    }

    /* renamed from: s */
    public void m71191s() {
        if (this.f114126c - this.f114128e < 1024) {
            this.f114127d = 0;
        }
        m71174b();
        this.f114132i = this.f114128e;
    }

    /* renamed from: t */
    public boolean m71192t(String str) {
        m71174b();
        if (!m71195w(str)) {
            return false;
        }
        this.f114128e += str.length();
        m71175c(str);
        return true;
    }

    public String toString() {
        int i = this.f114126c;
        int i2 = this.f114128e;
        return i - i2 < 0 ? "" : new String(this.f114124a, i2, i - i2);
    }

    /* renamed from: u */
    public boolean m71193u(String str) {
        if (!m71166A(str)) {
            return false;
        }
        this.f114128e += str.length();
        m71175c(str);
        return true;
    }

    /* renamed from: v */
    public boolean m71194v(char c) {
        return !isEmpty() && this.f114124a[this.f114128e] == c;
    }

    /* renamed from: w */
    public boolean m71195w(String str) {
        m71174b();
        int length = str.length();
        if (length > this.f114126c - this.f114128e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.f114124a[this.f114128e + i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: x */
    public boolean m71196x(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        m71174b();
        char c = this.f114124a[this.f114128e];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: y */
    public boolean m71197y(char[] cArr) {
        m71174b();
        return !isEmpty() && Arrays.binarySearch(cArr, this.f114124a[this.f114128e]) >= 0;
    }

    /* renamed from: z */
    public boolean m71198z() {
        char c;
        return !isEmpty() && (c = this.f114124a[this.f114128e]) >= '0' && c <= '9';
    }

    public CharacterReader(Reader reader, int i) {
        this.f114132i = -1;
        this.f114133j = new String[512];
        Validate.notNull(reader);
        Validate.isTrue(reader.markSupported());
        this.f114125b = reader;
        this.f114124a = new char[i > 32768 ? 32768 : i];
        m71174b();
    }

    public CharacterReader(String str) {
        this(new StringReader(str), str.length());
    }
}
