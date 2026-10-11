package com.sunia.HTREnginev2;

import javax.security.auth.x500.X500Principal;

/* loaded from: classes9.dex */
public final class b6f {

    /* renamed from: a */
    public final String f65436a;

    /* renamed from: b */
    public final int f65437b;

    /* renamed from: c */
    public int f65438c;

    /* renamed from: d */
    public int f65439d;

    /* renamed from: e */
    public int f65440e;

    /* renamed from: f */
    public int f65441f;

    /* renamed from: g */
    public char[] f65442g;

    public b6f(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f65436a = name;
        this.f65437b = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        return new java.lang.String(r1, r2, r8.f65441f - r2);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m53187a() {
        /*
            r8 = this;
            int r0 = r8.f65438c
            r8.f65439d = r0
            r8.f65440e = r0
        L6:
            int r0 = r8.f65438c
            int r1 = r8.f65437b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f65442g
            int r2 = r8.f65439d
            int r8 = r8.f65440e
            int r8 = r8 - r2
            r0.<init>(r1, r2, r8)
            return r0
        L19:
            char[] r1 = r8.f65442g
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5c
            if (r2 == r5) goto L51
            r5 = 92
            if (r2 == r5) goto L3e
            if (r2 == r4) goto L51
            if (r2 == r3) goto L51
            int r3 = r8.f65440e
            int r4 = r3 + 1
            r8.f65440e = r4
            r1[r3] = r2
            int r0 = r0 + 1
            r8.f65438c = r0
            goto L6
        L3e:
            int r0 = r8.f65440e
            int r2 = r0 + 1
            r8.f65440e = r2
            char r2 = r8.m53190d()
            r1[r0] = r2
            int r0 = r8.f65438c
            int r0 = r0 + 1
            r8.f65438c = r0
            goto L6
        L51:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f65439d
            int r8 = r8.f65440e
            int r8 = r8 - r2
            r0.<init>(r1, r2, r8)
            return r0
        L5c:
            int r2 = r8.f65440e
            r8.f65441f = r2
            int r0 = r0 + 1
            r8.f65438c = r0
            int r0 = r2 + 1
            r8.f65440e = r0
            r1[r2] = r6
        L6a:
            int r0 = r8.f65438c
            int r1 = r8.f65437b
            if (r0 >= r1) goto L83
            char[] r2 = r8.f65442g
            char r7 = r2[r0]
            if (r7 != r6) goto L83
            int r1 = r8.f65440e
            int r7 = r1 + 1
            r8.f65440e = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.f65438c = r0
            goto L6a
        L83:
            if (r0 == r1) goto L8f
            char[] r1 = r8.f65442g
            char r0 = r1[r0]
            if (r0 == r3) goto L8f
            if (r0 == r4) goto L8f
            if (r0 != r5) goto L6
        L8f:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f65442g
            int r2 = r8.f65439d
            int r8 = r8.f65441f
            int r8 = r8 - r2
            r0.<init>(r1, r2, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.b6f.m53187a():java.lang.String");
    }

    /* renamed from: b */
    public String m53188b(String str) {
        this.f65438c = 0;
        this.f65439d = 0;
        this.f65440e = 0;
        this.f65441f = 0;
        this.f65442g = this.f65436a.toCharArray();
        String m53193g = m53193g();
        if (m53193g == null) {
            return null;
        }
        do {
            int i = this.f65438c;
            if (i == this.f65437b) {
                return null;
            }
            char c = this.f65442g[i];
            String m53187a = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : m53187a() : m53192f() : m53194h();
            if (str.equalsIgnoreCase(m53193g)) {
                return m53187a;
            }
            int i2 = this.f65438c;
            if (i2 >= this.f65437b) {
                return null;
            }
            char c2 = this.f65442g[i2];
            if (c2 != ',' && c2 != ';' && c2 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f65436a);
            }
            this.f65438c = i2 + 1;
            m53193g = m53193g();
        } while (m53193g != null);
        throw new IllegalStateException("Malformed DN: " + this.f65436a);
    }

    /* renamed from: c */
    public final int m53189c(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f65437b) {
            throw new IllegalStateException("Malformed DN: " + this.f65436a);
        }
        char[] cArr = this.f65442g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f65436a);
            }
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f65436a);
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* renamed from: d */
    public final char m53190d() {
        int i = this.f65438c + 1;
        this.f65438c = i;
        if (i == this.f65437b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
        }
        char c = this.f65442g[i];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return m53191e();
                    }
                case '*':
                case '+':
                case ',':
                    return c;
            }
        }
        return c;
    }

    /* renamed from: e */
    public final char m53191e() {
        int i;
        int i2;
        int m53189c = m53189c(this.f65438c);
        this.f65438c++;
        if (m53189c < 128) {
            return (char) m53189c;
        }
        if (m53189c < 192 || m53189c > 247) {
            return '?';
        }
        if (m53189c <= 223) {
            i = m53189c & 31;
            i2 = 1;
        } else if (m53189c <= 239) {
            i = m53189c & 15;
            i2 = 2;
        } else {
            i = m53189c & 7;
            i2 = 3;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f65438c + 1;
            this.f65438c = i4;
            if (i4 == this.f65437b || this.f65442g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f65438c = i5;
            int m53189c2 = m53189c(i5);
            this.f65438c++;
            if ((m53189c2 & 192) != 128) {
                return '?';
            }
            i = (i << 6) + (m53189c2 & 63);
        }
        return (char) i;
    }

    /* renamed from: f */
    public final String m53192f() {
        int i;
        char[] cArr;
        char c;
        int i2 = this.f65438c;
        if (i2 + 4 >= this.f65437b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
        }
        this.f65439d = i2;
        this.f65438c = i2 + 1;
        while (true) {
            i = this.f65438c;
            if (i == this.f65437b || (c = (cArr = this.f65442g)[i]) == '+' || c == ',' || c == ';') {
                break;
            }
            if (c == ' ') {
                this.f65440e = i;
                this.f65438c = i + 1;
                while (true) {
                    int i3 = this.f65438c;
                    if (i3 >= this.f65437b || this.f65442g[i3] != ' ') {
                        break;
                    }
                    this.f65438c = i3 + 1;
                }
            } else {
                if (c >= 'A' && c <= 'F') {
                    cArr[i] = (char) (c + ' ');
                }
                this.f65438c = i + 1;
            }
        }
        this.f65440e = i;
        int i4 = this.f65440e;
        int i5 = this.f65439d;
        int i6 = i4 - i5;
        if (i6 < 5 || (i6 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        int i8 = i5 + 1;
        for (int i9 = 0; i9 < i7; i9++) {
            bArr[i9] = (byte) m53189c(i8);
            i8 += 2;
        }
        return new String(this.f65442g, this.f65439d, i6);
    }

    /* renamed from: g */
    public final String m53193g() {
        int i;
        int i2;
        int i3;
        int i4;
        char c;
        int i5;
        int i6;
        char c2;
        char c3;
        while (true) {
            i = this.f65438c;
            i2 = this.f65437b;
            if (i >= i2 || this.f65442g[i] != ' ') {
                break;
            }
            this.f65438c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f65439d = i;
        this.f65438c = i + 1;
        while (true) {
            i3 = this.f65438c;
            i4 = this.f65437b;
            if (i3 >= i4 || (c3 = this.f65442g[i3]) == '=' || c3 == ' ') {
                break;
            }
            this.f65438c = i3 + 1;
        }
        if (i3 >= i4) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
        }
        this.f65440e = i3;
        if (this.f65442g[i3] == ' ') {
            while (true) {
                i5 = this.f65438c;
                i6 = this.f65437b;
                if (i5 >= i6 || (c2 = this.f65442g[i5]) == '=' || c2 != ' ') {
                    break;
                }
                this.f65438c = i5 + 1;
            }
            if (this.f65442g[i5] != '=' || i5 == i6) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
            }
        }
        this.f65438c++;
        while (true) {
            int i7 = this.f65438c;
            if (i7 >= this.f65437b || this.f65442g[i7] != ' ') {
                break;
            }
            this.f65438c = i7 + 1;
        }
        int i8 = this.f65440e;
        int i9 = this.f65439d;
        if (i8 - i9 > 4) {
            char[] cArr = this.f65442g;
            if (cArr[i9 + 3] == '.' && (((c = cArr[i9]) == 'O' || c == 'o') && ((cArr[i9 + 1] == 'I' || cArr[i9 + 1] == 'i') && (cArr[i9 + 2] == 'D' || cArr[i9 + 2] == 'd')))) {
                this.f65439d = i9 + 4;
            }
        }
        char[] cArr2 = this.f65442g;
        int i10 = this.f65439d;
        return new String(cArr2, i10, i8 - i10);
    }

    /* renamed from: h */
    public final String m53194h() {
        int i = this.f65438c + 1;
        this.f65438c = i;
        this.f65439d = i;
        this.f65440e = i;
        while (true) {
            int i2 = this.f65438c;
            if (i2 == this.f65437b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f65436a);
            }
            char[] cArr = this.f65442g;
            char c = cArr[i2];
            if (c == '\"') {
                this.f65438c = i2 + 1;
                while (true) {
                    int i3 = this.f65438c;
                    if (i3 >= this.f65437b || this.f65442g[i3] != ' ') {
                        break;
                    }
                    this.f65438c = i3 + 1;
                }
                char[] cArr2 = this.f65442g;
                int i4 = this.f65439d;
                return new String(cArr2, i4, this.f65440e - i4);
            }
            if (c == '\\') {
                cArr[this.f65440e] = m53190d();
            } else {
                cArr[this.f65440e] = c;
            }
            this.f65438c++;
            this.f65440e++;
        }
    }
}
