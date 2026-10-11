package org.mortbay.jetty;

import java.io.UnsupportedEncodingException;
import org.mortbay.util.MultiMap;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;
import org.mortbay.util.UrlEncoded;
import org.mortbay.util.Utf8StringBuffer;

/* loaded from: classes13.dex */
public class HttpURI {

    /* renamed from: n */
    public static byte[] f114658n = new byte[0];

    /* renamed from: o */
    public static final int f114659o = 0;

    /* renamed from: p */
    public static final int f114660p = 1;

    /* renamed from: q */
    public static final int f114661q = 2;

    /* renamed from: r */
    public static final int f114662r = 4;

    /* renamed from: s */
    public static final int f114663s = 5;

    /* renamed from: t */
    public static final int f114664t = 6;

    /* renamed from: u */
    public static final int f114665u = 7;

    /* renamed from: v */
    public static final int f114666v = 8;

    /* renamed from: w */
    public static final int f114667w = 9;

    /* renamed from: x */
    public static final int f114668x = 10;

    /* renamed from: a */
    public boolean f114669a;

    /* renamed from: b */
    public byte[] f114670b;

    /* renamed from: c */
    public String f114671c;

    /* renamed from: d */
    public int f114672d;

    /* renamed from: e */
    public int f114673e;

    /* renamed from: f */
    public int f114674f;

    /* renamed from: g */
    public int f114675g;

    /* renamed from: h */
    public int f114676h;

    /* renamed from: i */
    public int f114677i;

    /* renamed from: j */
    public int f114678j;

    /* renamed from: k */
    public int f114679k;

    /* renamed from: l */
    public int f114680l;

    /* renamed from: m */
    public Utf8StringBuffer f114681m;

    public HttpURI() {
        this.f114669a = false;
        this.f114670b = f114658n;
        this.f114681m = new Utf8StringBuffer(64);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0039. Please report as an issue. */
    /* renamed from: a */
    public final void m71523a(byte[] bArr, int i, int i2) {
        this.f114670b = bArr;
        int i3 = i + i2;
        this.f114680l = i3;
        this.f114672d = i;
        this.f114673e = i;
        this.f114674f = i;
        this.f114675g = i;
        this.f114676h = i;
        this.f114677i = i3;
        this.f114678j = i3;
        this.f114679k = i3;
        char c = 0;
        int i4 = i;
        int i5 = i4;
        while (i4 < i3) {
            byte[] bArr2 = this.f114670b;
            char c2 = (char) (bArr2[i4] & 255);
            int i6 = i4 + 1;
            switch (c) {
                case 0:
                    if (c2 == '#') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        this.f114679k = i4;
                    } else if (c2 == '*') {
                        this.f114676h = i4;
                        c = '\n';
                    } else if (c2 == '/') {
                        i5 = i4;
                        i4 = i6;
                        c = 1;
                    } else if (c2 == ';') {
                        this.f114677i = i4;
                        i5 = i4;
                        i4 = i6;
                        c = '\b';
                    } else if (c2 == '?') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        i5 = i4;
                        i4 = i6;
                        c = '\t';
                    } else {
                        if (!Character.isLetterOrDigit(c2)) {
                            throw new IllegalArgumentException(StringUtil.toString(this.f114670b, i, i2, URIUtil.__CHARSET));
                        }
                        c = 2;
                    }
                    i5 = i4;
                    i4 = i6;
                case 1:
                    if ((this.f114669a || this.f114672d != this.f114673e) && c2 == '/') {
                        this.f114674f = i6;
                        int i7 = this.f114680l;
                        this.f114675g = i7;
                        this.f114676h = i7;
                        i4 = i6;
                        c = 4;
                    } else if (c2 == ';' || c2 == '?' || c2 == '#') {
                        i4 = i6 - 1;
                        c = 7;
                    } else {
                        this.f114674f = i5;
                        this.f114675g = i5;
                        i4 = i6;
                        c = 7;
                    }
                    break;
                case 2:
                    if (i2 > 6 && c2 == 't') {
                        int i8 = i + 3;
                        if (bArr2[i8] == 58) {
                            i6 = i + 4;
                        } else {
                            i8 = i + 4;
                            if (bArr2[i8] == 58) {
                                i6 = i + 5;
                            } else {
                                i8 = i + 5;
                                if (bArr2[i8] == 58) {
                                    i6 = i + 6;
                                }
                            }
                        }
                        i4 = i8;
                        c2 = ':';
                    }
                    if (c2 == '#') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        this.f114679k = i4;
                    } else if (c2 == '/') {
                        i4 = i6;
                        c = 7;
                    } else if (c2 == '?') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        i4 = i6;
                        c = '\t';
                    } else if (c2 == ':') {
                        int i9 = i6 + 1;
                        this.f114673e = i6;
                        this.f114676h = i6;
                        if (((char) (bArr2[i9] & 255)) == '/') {
                            i4 = i9;
                            i5 = i6;
                            c = 1;
                        } else {
                            this.f114674f = i6;
                            this.f114675g = i6;
                            i4 = i9;
                            i5 = i6;
                            c = 7;
                        }
                    } else if (c2 == ';') {
                        this.f114677i = i4;
                        i4 = i6;
                        c = '\b';
                    }
                    i4 = i6;
                    break;
                case 3:
                default:
                    i4 = i6;
                case 4:
                    if (c2 == '/') {
                        this.f114676h = i4;
                        this.f114675g = i4;
                        i5 = i4;
                        c = 7;
                    } else if (c2 == ':') {
                        this.f114675g = i4;
                        c = 6;
                    } else if (c2 == '@') {
                        this.f114674f = i6;
                    } else if (c2 == '[') {
                        c = 5;
                    }
                    i4 = i6;
                case 5:
                    if (c2 == '/') {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("No closing ']' for ");
                        stringBuffer.append(StringUtil.toString(this.f114670b, i, i2, URIUtil.__CHARSET));
                        throw new IllegalArgumentException(stringBuffer.toString());
                    }
                    if (c2 == ']') {
                        c = 4;
                    }
                    i4 = i6;
                case 6:
                    if (c2 == '/') {
                        this.f114676h = i4;
                        if (this.f114675g <= this.f114673e) {
                            this.f114675g = i4;
                        }
                        i5 = i4;
                        i4 = i6;
                        c = 7;
                    } else {
                        i4 = i6;
                    }
                case 7:
                    if (c2 == '#') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        this.f114679k = i4;
                    } else if (c2 == ';') {
                        this.f114677i = i4;
                        c = '\b';
                    } else if (c2 == '?') {
                        this.f114677i = i4;
                        this.f114678j = i4;
                        c = '\t';
                    }
                    i4 = i6;
                case '\b':
                    if (c2 == '#') {
                        this.f114678j = i4;
                        this.f114679k = i4;
                    } else if (c2 == '?') {
                        this.f114678j = i4;
                        c = '\t';
                    }
                    i4 = i6;
                case '\t':
                    if (c2 == '#') {
                        this.f114679k = i4;
                    }
                    i4 = i6;
                case '\n':
                    throw new IllegalArgumentException("only '*'");
            }
        }
    }

    /* renamed from: b */
    public final String m71524b(int i, int i2) {
        this.f114681m.reset();
        this.f114681m.append(this.f114670b, i, i2);
        return this.f114681m.toString();
    }

    public void clear() {
        this.f114680l = 0;
        this.f114679k = 0;
        this.f114678j = 0;
        this.f114677i = 0;
        this.f114676h = 0;
        this.f114675g = 0;
        this.f114674f = 0;
        this.f114673e = 0;
        this.f114672d = 0;
        this.f114670b = f114658n;
        this.f114671c = "";
    }

    public void decodeQueryTo(MultiMap multiMap) {
        if (this.f114678j == this.f114679k) {
            return;
        }
        this.f114681m.reset();
        UrlEncoded.decodeUtf8To(this.f114670b, this.f114678j + 1, (this.f114679k - r1) - 1, multiMap, this.f114681m);
    }

    public String getAuthority() {
        int i = this.f114673e;
        int i2 = this.f114676h;
        if (i == i2) {
            return null;
        }
        return m71524b(i, i2 - i);
    }

    public String getCompletePath() {
        int i = this.f114676h;
        int i2 = this.f114680l;
        if (i == i2) {
            return null;
        }
        return m71524b(i, i2 - i);
    }

    public String getDecodedPath() {
        int i;
        int i2 = this.f114676h;
        int i3 = this.f114677i;
        byte[] bArr = null;
        if (i2 == i3) {
            return null;
        }
        int i4 = i3 - i2;
        int i5 = 0;
        while (true) {
            int i6 = this.f114677i;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr2 = this.f114670b;
            byte b = bArr2[i2];
            if (b == 37 && (i = i2 + 2) < i6) {
                b = (byte) (TypeUtil.parseInt(bArr2, i2 + 1, 2, 16) & 255);
                i2 = i;
            } else if (bArr == null) {
                i5++;
                i2++;
            }
            if (bArr == null) {
                bArr = new byte[i4];
                for (int i7 = 0; i7 < i5; i7++) {
                    bArr[i7] = this.f114670b[this.f114676h + i7];
                }
            }
            bArr[i5] = b;
            i5++;
            i2++;
        }
        if (bArr == null) {
            return m71524b(this.f114676h, i4);
        }
        this.f114681m.reset();
        this.f114681m.append(bArr, 0, i5);
        return this.f114681m.toString();
    }

    public String getFragment() {
        int i = this.f114679k;
        if (i == this.f114680l) {
            return null;
        }
        return m71524b(i + 1, (r1 - i) - 1);
    }

    public String getHost() {
        int i = this.f114674f;
        int i2 = this.f114675g;
        if (i == i2) {
            return null;
        }
        return m71524b(i, i2 - i);
    }

    public String getParam() {
        int i = this.f114677i;
        if (i == this.f114678j) {
            return null;
        }
        return m71524b(i + 1, (r1 - i) - 1);
    }

    public String getPath() {
        int i = this.f114676h;
        int i2 = this.f114677i;
        if (i == i2) {
            return null;
        }
        return m71524b(i, i2 - i);
    }

    public String getPathAndParam() {
        int i = this.f114676h;
        int i2 = this.f114678j;
        if (i == i2) {
            return null;
        }
        return m71524b(i, i2 - i);
    }

    public int getPort() {
        int i = this.f114675g;
        if (i == this.f114676h) {
            return -1;
        }
        return TypeUtil.parseInt(this.f114670b, i + 1, (r1 - i) - 1, 10);
    }

    public String getQuery() {
        int i = this.f114678j;
        if (i == this.f114679k) {
            return null;
        }
        return m71524b(i + 1, (r1 - i) - 1);
    }

    public String getScheme() {
        int i = this.f114672d;
        int i2 = this.f114673e;
        if (i == i2) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 == 5) {
            byte[] bArr = this.f114670b;
            if (bArr[i] == 104 && bArr[i + 1] == 116 && bArr[i + 2] == 116 && bArr[i + 3] == 112) {
                return "http";
            }
        }
        if (i3 == 6) {
            byte[] bArr2 = this.f114670b;
            if (bArr2[i] == 104 && bArr2[i + 1] == 116 && bArr2[i + 2] == 116 && bArr2[i + 3] == 112 && bArr2[i + 4] == 115) {
                return "https";
            }
        }
        return m71524b(i, (i2 - i) - 1);
    }

    public boolean hasQuery() {
        return this.f114679k > this.f114678j;
    }

    public void parse(String str) {
        byte[] bytes = str.getBytes();
        m71523a(bytes, 0, bytes.length);
        this.f114671c = str;
    }

    public String toString() {
        if (this.f114671c == null) {
            int i = this.f114672d;
            this.f114671c = m71524b(i, this.f114680l - i);
        }
        return this.f114671c;
    }

    public void writeTo(Utf8StringBuffer utf8StringBuffer) {
        byte[] bArr = this.f114670b;
        int i = this.f114672d;
        utf8StringBuffer.append(bArr, i, this.f114680l - i);
    }

    public String getQuery(String str) {
        int i = this.f114678j;
        if (i == this.f114679k) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, str);
    }

    public void decodeQueryTo(MultiMap multiMap, String str) throws UnsupportedEncodingException {
        if (this.f114678j == this.f114679k) {
            return;
        }
        if (str != null && !StringUtil.isUTF8(str)) {
            UrlEncoded.decodeTo(m71524b(this.f114678j + 1, (this.f114679k - r0) - 1), multiMap, str);
        } else {
            UrlEncoded.decodeUtf8To(this.f114670b, this.f114678j + 1, (this.f114679k - r0) - 1, multiMap);
        }
    }

    public void parse(byte[] bArr, int i, int i2) {
        this.f114671c = null;
        m71523a(bArr, i, i2);
    }

    public HttpURI(boolean z) {
        this.f114669a = false;
        this.f114670b = f114658n;
        this.f114681m = new Utf8StringBuffer(64);
        this.f114669a = z;
    }

    public HttpURI(String str) {
        this.f114669a = false;
        this.f114670b = f114658n;
        this.f114681m = new Utf8StringBuffer(64);
        this.f114671c = str;
        byte[] bytes = str.getBytes();
        parse(bytes, 0, bytes.length);
    }

    public HttpURI(byte[] bArr, int i, int i2) {
        this.f114669a = false;
        this.f114670b = f114658n;
        this.f114681m = new Utf8StringBuffer(64);
        m71523a(bArr, i, i2);
    }
}
