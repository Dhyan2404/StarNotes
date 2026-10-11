package com.squareup.okhttp;

import com.google.android.exoplayer2.extractor.p007ts.PsExtractor;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import okio.Buffer;
import org.apache.commons.collections4.IteratorUtils;
import org.mortbay.util.URIUtil;

/* loaded from: classes9.dex */
public final class HttpUrl {

    /* renamed from: j */
    public static final char[] f63527j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: k */
    public static final String f63528k = " \"':;<=>@[]^`{}|/\\?#";

    /* renamed from: l */
    public static final String f63529l = " \"':;<=>@[]\\^`{}|/\\?#";

    /* renamed from: m */
    public static final String f63530m = " \"<>^`{}|/\\?#";

    /* renamed from: n */
    public static final String f63531n = " \"'<>#";

    /* renamed from: o */
    public static final String f63532o = " \"'<>#&=";

    /* renamed from: p */
    public static final String f63533p = "";

    /* renamed from: a */
    public final String f63534a;

    /* renamed from: b */
    public final String f63535b;

    /* renamed from: c */
    public final String f63536c;

    /* renamed from: d */
    public final String f63537d;

    /* renamed from: e */
    public final int f63538e;

    /* renamed from: f */
    public final List<String> f63539f;

    /* renamed from: g */
    public final List<String> f63540g;

    /* renamed from: h */
    public final String f63541h;

    /* renamed from: i */
    public final String f63542i;

    /* loaded from: classes9.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f63543a;

        /* renamed from: d */
        public String f63546d;

        /* renamed from: f */
        public final List<String> f63548f;

        /* renamed from: g */
        public List<String> f63549g;

        /* renamed from: h */
        public String f63550h;

        /* renamed from: b */
        public String f63544b = "";

        /* renamed from: c */
        public String f63545c = "";

        /* renamed from: e */
        public int f63547e = -1;

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.f63548f = arrayList;
            arrayList.add("");
        }

        /* renamed from: a */
        public static String m52538a(String str, int i, int i2) {
            int length;
            String m52534m = HttpUrl.m52534m(str, i, i2);
            if (m52534m.startsWith(IteratorUtils.f104923a) && m52534m.endsWith(IteratorUtils.f104924b)) {
                InetAddress m52540c = m52540c(m52534m, 1, m52534m.length() - 1);
                if (m52540c != null) {
                    return m52540c.getHostAddress();
                }
                return null;
            }
            String m52541d = m52541d(m52534m);
            if (m52541d != null && HttpUrl.m52530i(m52541d, 0, length, "\u0000\t\n\r #%/:?@[\\]") == (length = m52541d.length())) {
                return m52541d;
            }
            return null;
        }

        /* renamed from: b */
        public static boolean m52539b(String str, int i, int i2, byte[] bArr, int i3) {
            int i4 = i3;
            while (i < i2) {
                if (i4 == bArr.length) {
                    return false;
                }
                if (i4 != i3) {
                    if (str.charAt(i) != '.') {
                        return false;
                    }
                    i++;
                }
                int i5 = i;
                int i6 = 0;
                while (i5 < i2) {
                    char charAt = str.charAt(i5);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + charAt) - 48) > 255) {
                        return false;
                    }
                    i5++;
                }
                if (i5 - i == 0) {
                    return false;
                }
                bArr[i4] = (byte) i6;
                i4++;
                i = i5;
            }
            return i4 == i3 + 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.net.InetAddress m52540c(java.lang.String r11, int r12, int r13) {
            /*
                r0 = 16
                byte[] r1 = new byte[r0]
                r2 = 0
                r3 = -1
                r4 = r2
                r5 = r3
                r6 = r5
            L9:
                r7 = 0
                if (r12 >= r13) goto L7a
                if (r4 != r0) goto Lf
                return r7
            Lf:
                int r8 = r12 + 2
                if (r8 > r13) goto L27
                java.lang.String r9 = "::"
                r10 = 2
                boolean r9 = r11.regionMatches(r12, r9, r2, r10)
                if (r9 == 0) goto L27
                if (r5 == r3) goto L1f
                return r7
            L1f:
                int r4 = r4 + 2
                r5 = r4
                if (r8 != r13) goto L25
                goto L7a
            L25:
                r6 = r8
                goto L4b
            L27:
                if (r4 == 0) goto L4a
                java.lang.String r8 = ":"
                r9 = 1
                boolean r8 = r11.regionMatches(r12, r8, r2, r9)
                if (r8 == 0) goto L35
                int r12 = r12 + 1
                goto L4a
            L35:
                java.lang.String r8 = "."
                boolean r12 = r11.regionMatches(r12, r8, r2, r9)
                if (r12 == 0) goto L49
                int r12 = r4 + (-2)
                boolean r11 = m52539b(r11, r6, r13, r1, r12)
                if (r11 != 0) goto L46
                return r7
            L46:
                int r4 = r4 + 2
                goto L7a
            L49:
                return r7
            L4a:
                r6 = r12
            L4b:
                r8 = r2
                r12 = r6
            L4d:
                if (r12 >= r13) goto L60
                char r9 = r11.charAt(r12)
                int r9 = com.squareup.okhttp.HttpUrl.m52529h(r9)
                if (r9 != r3) goto L5a
                goto L60
            L5a:
                int r8 = r8 << 4
                int r8 = r8 + r9
                int r12 = r12 + 1
                goto L4d
            L60:
                int r9 = r12 - r6
                if (r9 == 0) goto L79
                r10 = 4
                if (r9 <= r10) goto L68
                goto L79
            L68:
                int r7 = r4 + 1
                int r9 = r8 >>> 8
                r9 = r9 & 255(0xff, float:3.57E-43)
                byte r9 = (byte) r9
                r1[r4] = r9
                int r4 = r7 + 1
                r8 = r8 & 255(0xff, float:3.57E-43)
                byte r8 = (byte) r8
                r1[r7] = r8
                goto L9
            L79:
                return r7
            L7a:
                if (r4 == r0) goto L8b
                if (r5 != r3) goto L7f
                return r7
            L7f:
                int r11 = r4 - r5
                int r12 = 16 - r11
                java.lang.System.arraycopy(r1, r5, r1, r12, r11)
                int r0 = r0 - r4
                int r0 = r0 + r5
                java.util.Arrays.fill(r1, r5, r0, r2)
            L8b:
                java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L90
                return r11
            L90:
                java.lang.AssertionError r11 = new java.lang.AssertionError
                r11.<init>()
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.m52540c(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: d */
        public static String m52541d(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        /* renamed from: i */
        public static int m52542i(String str, int i, int i2) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(HttpUrl.m52526e(str, i, i2, "", false, false));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        /* renamed from: k */
        public static int m52543k(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                if (charAt != '[') {
                    i++;
                }
                do {
                    i++;
                    if (i < i2) {
                    }
                    i++;
                } while (str.charAt(i) != ']');
                i++;
            }
            return i2;
        }

        /* renamed from: o */
        public static int m52544o(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                if (charAt2 == ':') {
                                    return i;
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        /* renamed from: r */
        public static int m52545r(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        public Builder addEncodedPathSegment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            m52551l(str, 0, str.length(), false, true);
            return this;
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.f63549g == null) {
                this.f63549g = new ArrayList();
            }
            this.f63549g.add(HttpUrl.m52527f(str, " \"'<>#&=", true, true));
            this.f63549g.add(str2 != null ? HttpUrl.m52527f(str2, " \"'<>#&=", true, true) : null);
            return this;
        }

        public Builder addPathSegment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            m52551l(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.f63549g == null) {
                this.f63549g = new ArrayList();
            }
            this.f63549g.add(HttpUrl.m52527f(str, " \"'<>#&=", false, true));
            this.f63549g.add(str2 != null ? HttpUrl.m52527f(str2, " \"'<>#&=", false, true) : null);
            return this;
        }

        public HttpUrl build() {
            if (this.f63543a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f63546d != null) {
                return new HttpUrl(this);
            }
            throw new IllegalStateException("host == null");
        }

        /* renamed from: e */
        public int m52546e() {
            int i = this.f63547e;
            return i != -1 ? i : HttpUrl.defaultPort(this.f63543a);
        }

        public Builder encodedFragment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedFragment == null");
            }
            this.f63550h = HttpUrl.m52527f(str, "", true, false);
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPassword == null");
            }
            this.f63545c = HttpUrl.m52527f(str, HttpUrl.f63529l, true, false);
            return this;
        }

        public Builder encodedPath(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPath == null");
            }
            if (str.startsWith("/")) {
                m52553n(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("unexpected encodedPath: " + str);
        }

        public Builder encodedQuery(String str) {
            this.f63549g = str != null ? HttpUrl.m52536p(HttpUrl.m52527f(str, " \"'<>#", true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedUsername == null");
            }
            this.f63544b = HttpUrl.m52527f(str, " \"':;<=>@[]^`{}|/\\?#", true, false);
            return this;
        }

        /* renamed from: f */
        public final boolean m52547f(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        public Builder fragment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("fragment == null");
            }
            this.f63550h = HttpUrl.m52527f(str, "", false, false);
            return this;
        }

        /* renamed from: g */
        public final boolean m52548g(String str) {
            return str.equals(Constants.ATTRVAL_PARENT) || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: h */
        public HttpUrl m52549h(HttpUrl httpUrl, String str) {
            int m52530i;
            int i;
            boolean z = false;
            int m52554p = m52554p(str, 0, str.length());
            int m52555q = m52555q(str, m52554p, str.length());
            if (m52544o(str, m52554p, m52555q) != -1) {
                if (str.regionMatches(true, m52554p, URIUtil.HTTPS_COLON, 0, 6)) {
                    this.f63543a = "https";
                    m52554p += 6;
                } else {
                    if (!str.regionMatches(true, m52554p, URIUtil.HTTP_COLON, 0, 5)) {
                        return null;
                    }
                    this.f63543a = "http";
                    m52554p += 5;
                }
            } else {
                if (httpUrl == null) {
                    return null;
                }
                this.f63543a = httpUrl.f63534a;
            }
            int m52545r = m52545r(str, m52554p, m52555q);
            char c = '?';
            char c2 = '#';
            if (m52545r >= 2 || httpUrl == null || !httpUrl.f63534a.equals(this.f63543a)) {
                int i2 = m52554p + m52545r;
                boolean z2 = false;
                while (true) {
                    m52530i = HttpUrl.m52530i(str, i2, m52555q, "@/\\?#");
                    char charAt = m52530i != m52555q ? str.charAt(m52530i) : (char) 65535;
                    if (charAt == 65535 || charAt == c2 || charAt == '/' || charAt == '\\' || charAt == c) {
                        break;
                    }
                    if (charAt == '@') {
                        if (z) {
                            i = m52530i;
                            this.f63545c += "%40" + HttpUrl.m52526e(str, i2, i, HttpUrl.f63529l, true, false);
                        } else {
                            int m52530i2 = HttpUrl.m52530i(str, i2, m52530i, ":");
                            i = m52530i;
                            String m52526e = HttpUrl.m52526e(str, i2, m52530i2, " \"':;<=>@[]^`{}|/\\?#", true, false);
                            if (z2) {
                                m52526e = this.f63544b + "%40" + m52526e;
                            }
                            this.f63544b = m52526e;
                            if (m52530i2 != i) {
                                this.f63545c = HttpUrl.m52526e(str, m52530i2 + 1, i, HttpUrl.f63529l, true, false);
                                z = true;
                            }
                            z2 = true;
                        }
                        i2 = i + 1;
                    }
                    c = '?';
                    c2 = '#';
                }
                int m52543k = m52543k(str, i2, m52530i);
                int i3 = m52543k + 1;
                if (i3 < m52530i) {
                    this.f63546d = m52538a(str, i2, m52543k);
                    int m52542i = m52542i(str, i3, m52530i);
                    this.f63547e = m52542i;
                    if (m52542i == -1) {
                        return null;
                    }
                } else {
                    this.f63546d = m52538a(str, i2, m52543k);
                    this.f63547e = HttpUrl.defaultPort(this.f63543a);
                }
                if (this.f63546d == null) {
                    return null;
                }
                m52554p = m52530i;
            } else {
                this.f63544b = httpUrl.encodedUsername();
                this.f63545c = httpUrl.encodedPassword();
                this.f63546d = httpUrl.f63537d;
                this.f63547e = httpUrl.f63538e;
                this.f63548f.clear();
                this.f63548f.addAll(httpUrl.encodedPathSegments());
                if (m52554p == m52555q || str.charAt(m52554p) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int m52530i3 = HttpUrl.m52530i(str, m52554p, m52555q, "?#");
            m52553n(str, m52554p, m52530i3);
            if (m52530i3 < m52555q && str.charAt(m52530i3) == '?') {
                int m52530i4 = HttpUrl.m52530i(str, m52530i3, m52555q, "#");
                this.f63549g = HttpUrl.m52536p(HttpUrl.m52526e(str, m52530i3 + 1, m52530i4, " \"'<>#", true, true));
                m52530i3 = m52530i4;
            }
            if (m52530i3 < m52555q && str.charAt(m52530i3) == '#') {
                this.f63550h = HttpUrl.m52526e(str, 1 + m52530i3, m52555q, "", true, false);
            }
            return build();
        }

        public Builder host(String str) {
            if (str == null) {
                throw new IllegalArgumentException("host == null");
            }
            String m52538a = m52538a(str, 0, str.length());
            if (m52538a != null) {
                this.f63546d = m52538a;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        /* renamed from: j */
        public final void m52550j() {
            if (!this.f63548f.remove(r0.size() - 1).isEmpty() || this.f63548f.isEmpty()) {
                this.f63548f.add("");
            } else {
                this.f63548f.set(r2.size() - 1, "");
            }
        }

        /* renamed from: l */
        public final void m52551l(String str, int i, int i2, boolean z, boolean z2) {
            String m52526e = HttpUrl.m52526e(str, i, i2, " \"<>^`{}|/\\?#", z2, false);
            if (m52547f(m52526e)) {
                return;
            }
            if (m52548g(m52526e)) {
                m52550j();
                return;
            }
            if (this.f63548f.get(r8.size() - 1).isEmpty()) {
                this.f63548f.set(r8.size() - 1, m52526e);
            } else {
                this.f63548f.add(m52526e);
            }
            if (z) {
                this.f63548f.add("");
            }
        }

        /* renamed from: m */
        public final void m52552m(String str) {
            for (int size = this.f63549g.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.f63549g.get(size))) {
                    this.f63549g.remove(size + 1);
                    this.f63549g.remove(size);
                    if (this.f63549g.isEmpty()) {
                        this.f63549g = null;
                        return;
                    }
                }
            }
        }

        /* renamed from: n */
        public final void m52553n(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char charAt = str.charAt(i);
            if (charAt == '/' || charAt == '\\') {
                this.f63548f.clear();
                this.f63548f.add("");
                i++;
            } else {
                List<String> list = this.f63548f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = HttpUrl.m52530i(str, i3, i2, "/\\");
                boolean z = i < i2;
                m52551l(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        /* renamed from: p */
        public final int m52554p(String str, int i, int i2) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new IllegalArgumentException("password == null");
            }
            this.f63545c = HttpUrl.m52527f(str, HttpUrl.f63529l, false, false);
            return this;
        }

        public Builder port(int i) {
            if (i > 0 && i <= 65535) {
                this.f63547e = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        /* renamed from: q */
        public final int m52555q(String str, int i, int i2) {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                char charAt = str.charAt(i3);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i3 + 1;
                }
            }
            return i;
        }

        public Builder query(String str) {
            this.f63549g = str != null ? HttpUrl.m52536p(HttpUrl.m52527f(str, " \"'<>#", false, true)) : null;
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.f63549g == null) {
                return this;
            }
            m52552m(HttpUrl.m52527f(str, " \"'<>#&=", true, true));
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.f63549g == null) {
                return this;
            }
            m52552m(HttpUrl.m52527f(str, " \"'<>#&=", false, true));
            return this;
        }

        public Builder removePathSegment(int i) {
            this.f63548f.remove(i);
            if (this.f63548f.isEmpty()) {
                this.f63548f.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new IllegalArgumentException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f63543a = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f63543a = "https";
            }
            return this;
        }

        public Builder setEncodedPathSegment(int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            String m52526e = HttpUrl.m52526e(str, 0, str.length(), " \"<>^`{}|/\\?#", true, false);
            this.f63548f.set(i, m52526e);
            if (!m52547f(m52526e) && !m52548g(m52526e)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            String m52526e = HttpUrl.m52526e(str, 0, str.length(), " \"<>^`{}|/\\?#", false, false);
            if (!m52547f(m52526e) && !m52548g(m52526e)) {
                this.f63548f.set(i, m52526e);
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f63543a);
            sb.append("://");
            if (!this.f63544b.isEmpty() || !this.f63545c.isEmpty()) {
                sb.append(this.f63544b);
                if (!this.f63545c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f63545c);
                }
                sb.append('@');
            }
            if (this.f63546d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f63546d);
                sb.append(']');
            } else {
                sb.append(this.f63546d);
            }
            int m52546e = m52546e();
            if (m52546e != HttpUrl.defaultPort(this.f63543a)) {
                sb.append(':');
                sb.append(m52546e);
            }
            HttpUrl.m52532k(sb, this.f63548f);
            if (this.f63549g != null) {
                sb.append('?');
                HttpUrl.m52531j(sb, this.f63549g);
            }
            if (this.f63550h != null) {
                sb.append('#');
                sb.append(this.f63550h);
            }
            return sb.toString();
        }

        public Builder username(String str) {
            if (str == null) {
                throw new IllegalArgumentException("username == null");
            }
            this.f63544b = HttpUrl.m52527f(str, " \"':;<=>@[]^`{}|/\\?#", false, false);
            return this;
        }
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return PsExtractor.f24604m;
        }
        return -1;
    }

    /* renamed from: e */
    public static String m52526e(String str, int i, int i2, String str2, boolean z, boolean z2) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && !z) || (z2 && codePointAt == 43))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                m52528g(buffer, str, i3, i2, str2, z, z2);
                return buffer.readUtf8();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    /* renamed from: f */
    public static String m52527f(String str, String str2, boolean z, boolean z2) {
        return m52526e(str, 0, str.length(), str2, z, z2);
    }

    /* renamed from: g */
    public static void m52528g(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (z2 && codePointAt == 43) {
                    buffer.writeUtf8(z ? "%20" : "%2B");
                } else if (codePointAt < 32 || codePointAt >= 127 || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && !z)) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        int readByte = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        char[] cArr = f63527j;
                        buffer.writeByte((int) cArr[(readByte >> 4) & 15]);
                        buffer.writeByte((int) cArr[readByte & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    /* renamed from: h */
    public static int m52529h(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: i */
    public static int m52530i(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: j */
    public static void m52531j(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* renamed from: k */
    public static void m52532k(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: l */
    public static String m52533l(String str) {
        return m52534m(str, 0, str.length());
    }

    /* renamed from: m */
    public static String m52534m(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == '%') {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i, i3);
                m52535o(buffer, str, i3, i2);
                return buffer.readUtf8();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: o */
    public static void m52535o(Buffer buffer, String str, int i, int i2) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 37 && (i3 = i + 2) < i2) {
                int m52529h = m52529h(str.charAt(i + 1));
                int m52529h2 = m52529h(str.charAt(i3));
                if (m52529h != -1 && m52529h2 != -1) {
                    buffer.writeByte((m52529h << 4) + m52529h2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
            }
            buffer.writeUtf8CodePoint(codePointAt);
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: p */
    public static List<String> m52536p(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    public static HttpUrl parse(String str) {
        return new Builder().m52549h(null, str);
    }

    public String encodedFragment() {
        if (this.f63541h == null) {
            return null;
        }
        return this.f63542i.substring(this.f63542i.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.f63536c.isEmpty()) {
            return "";
        }
        return this.f63542i.substring(this.f63542i.indexOf(58, this.f63534a.length() + 3) + 1, this.f63542i.indexOf(64));
    }

    public String encodedPath() {
        int indexOf = this.f63542i.indexOf(47, this.f63534a.length() + 3);
        String str = this.f63542i;
        return this.f63542i.substring(indexOf, m52530i(str, indexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.f63542i.indexOf(47, this.f63534a.length() + 3);
        String str = this.f63542i;
        int m52530i = m52530i(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < m52530i) {
            int i = indexOf + 1;
            int m52530i2 = m52530i(this.f63542i, i, m52530i, "/");
            arrayList.add(this.f63542i.substring(i, m52530i2));
            indexOf = m52530i2;
        }
        return arrayList;
    }

    public String encodedQuery() {
        if (this.f63540g == null) {
            return null;
        }
        int indexOf = this.f63542i.indexOf(63) + 1;
        String str = this.f63542i;
        return this.f63542i.substring(indexOf, m52530i(str, indexOf + 1, str.length(), "#"));
    }

    public String encodedUsername() {
        if (this.f63535b.isEmpty()) {
            return "";
        }
        int length = this.f63534a.length() + 3;
        String str = this.f63542i;
        return this.f63542i.substring(length, m52530i(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).f63542i.equals(this.f63542i);
    }

    public String fragment() {
        return this.f63541h;
    }

    public int hashCode() {
        return this.f63542i.hashCode();
    }

    public String host() {
        return this.f63537d;
    }

    public boolean isHttps() {
        return this.f63534a.equals("https");
    }

    /* renamed from: n */
    public final List<String> m52537n(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            arrayList.add(next != null ? m52533l(next) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.f63543a = this.f63534a;
        builder.f63544b = encodedUsername();
        builder.f63545c = encodedPassword();
        builder.f63546d = this.f63537d;
        builder.f63547e = this.f63538e;
        builder.f63548f.clear();
        builder.f63548f.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.f63550h = encodedFragment();
        return builder;
    }

    public String password() {
        return this.f63536c;
    }

    public List<String> pathSegments() {
        return this.f63539f;
    }

    public int pathSize() {
        return this.f63539f.size();
    }

    public int port() {
        return this.f63538e;
    }

    public String query() {
        if (this.f63540g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m52531j(sb, this.f63540g);
        return sb.toString();
    }

    public String queryParameter(String str) {
        List<String> list = this.f63540g;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.f63540g.get(i))) {
                return this.f63540g.get(i + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i) {
        return this.f63540g.get(i * 2);
    }

    public Set<String> queryParameterNames() {
        if (this.f63540g == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.f63540g.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.f63540g.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i) {
        return this.f63540g.get((i * 2) + 1);
    }

    public List<String> queryParameterValues(String str) {
        if (this.f63540g == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f63540g.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.f63540g.get(i))) {
                arrayList.add(this.f63540g.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        List<String> list = this.f63540g;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public HttpUrl resolve(String str) {
        return new Builder().m52549h(this, str);
    }

    public String scheme() {
        return this.f63534a;
    }

    public String toString() {
        return this.f63542i;
    }

    public URI uri() {
        try {
            return new URI(this.f63542i);
        } catch (URISyntaxException unused) {
            throw new IllegalStateException("not valid as a java.net.URI: " + this.f63542i);
        }
    }

    public URL url() {
        try {
            return new URL(this.f63542i);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String username() {
        return this.f63535b;
    }

    public HttpUrl(Builder builder) {
        this.f63534a = builder.f63543a;
        this.f63535b = m52533l(builder.f63544b);
        this.f63536c = m52533l(builder.f63545c);
        this.f63537d = builder.f63546d;
        this.f63538e = builder.m52546e();
        this.f63539f = m52537n(builder.f63548f);
        List<String> list = builder.f63549g;
        this.f63540g = list != null ? m52537n(list) : null;
        String str = builder.f63550h;
        this.f63541h = str != null ? m52533l(str) : null;
        this.f63542i = builder.toString();
    }

    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }
}
