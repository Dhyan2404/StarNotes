package com.squareup.okhttp.internal.spdy;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.m0i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.apache.http.cookie.ClientCookie;

/* renamed from: com.squareup.okhttp.internal.spdy.a */
/* loaded from: classes9.dex */
public final class C13208a {

    /* renamed from: a */
    public static final int f64013a = 15;

    /* renamed from: b */
    public static final int f64014b = 31;

    /* renamed from: c */
    public static final int f64015c = 63;

    /* renamed from: d */
    public static final int f64016d = 127;

    /* renamed from: e */
    public static final Header[] f64017e;

    /* renamed from: f */
    public static final Map<ByteString, Integer> f64018f;

    /* renamed from: com.squareup.okhttp.internal.spdy.a$a */
    /* loaded from: classes9.dex */
    public static final class a {

        /* renamed from: b */
        public final BufferedSource f64020b;

        /* renamed from: c */
        public int f64021c;

        /* renamed from: d */
        public int f64022d;

        /* renamed from: f */
        public int f64024f;

        /* renamed from: a */
        public final List<Header> f64019a = new ArrayList();

        /* renamed from: e */
        public Header[] f64023e = new Header[8];

        /* renamed from: g */
        public int f64025g = 0;

        /* renamed from: h */
        public int f64026h = 0;

        public a(int i, Source source) {
            this.f64024f = r0.length - 1;
            this.f64021c = i;
            this.f64022d = i;
            this.f64020b = Okio.buffer(source);
        }

        /* renamed from: a */
        public final void m52865a() {
            int i = this.f64022d;
            int i2 = this.f64026h;
            if (i < i2) {
                if (i == 0) {
                    m52866b();
                } else {
                    m52868d(i2 - i);
                }
            }
        }

        /* renamed from: b */
        public final void m52866b() {
            this.f64019a.clear();
            Arrays.fill(this.f64023e, (Object) null);
            this.f64024f = this.f64023e.length - 1;
            this.f64025g = 0;
            this.f64026h = 0;
        }

        /* renamed from: c */
        public final int m52867c(int i) {
            return this.f64024f + 1 + i;
        }

        /* renamed from: d */
        public final int m52868d(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f64023e.length;
                while (true) {
                    length--;
                    i2 = this.f64024f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    int i4 = this.f64023e[length].f63835a;
                    i -= i4;
                    this.f64026h -= i4;
                    this.f64025g--;
                    i3++;
                }
                Header[] headerArr = this.f64023e;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f64025g);
                this.f64024f += i3;
            }
            return i3;
        }

        /* renamed from: e */
        public List<Header> m52869e() {
            ArrayList arrayList = new ArrayList(this.f64019a);
            this.f64019a.clear();
            return arrayList;
        }

        /* renamed from: f */
        public final ByteString m52870f(int i) {
            return m52873i(i) ? C13208a.f64017e[i].name : this.f64023e[m52867c(i - C13208a.f64017e.length)].name;
        }

        /* renamed from: g */
        public void m52871g(int i) {
            this.f64021c = i;
            this.f64022d = i;
            m52865a();
        }

        /* renamed from: h */
        public final void m52872h(int i, Header header) {
            this.f64019a.add(header);
            int i2 = header.f63835a;
            if (i != -1) {
                i2 -= this.f64023e[m52867c(i)].f63835a;
            }
            int i3 = this.f64022d;
            if (i2 > i3) {
                m52866b();
                return;
            }
            int m52868d = m52868d((this.f64026h + i2) - i3);
            if (i == -1) {
                int i4 = this.f64025g + 1;
                Header[] headerArr = this.f64023e;
                if (i4 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.f64024f = this.f64023e.length - 1;
                    this.f64023e = headerArr2;
                }
                int i5 = this.f64024f;
                this.f64024f = i5 - 1;
                this.f64023e[i5] = header;
                this.f64025g++;
            } else {
                this.f64023e[i + m52867c(i) + m52868d] = header;
            }
            this.f64026h += i2;
        }

        /* renamed from: i */
        public final boolean m52873i(int i) {
            return i >= 0 && i <= C13208a.f64017e.length - 1;
        }

        /* renamed from: j */
        public int m52874j() {
            return this.f64022d;
        }

        /* renamed from: k */
        public final int m52875k() throws IOException {
            return this.f64020b.readByte() & 255;
        }

        /* renamed from: l */
        public ByteString m52876l() throws IOException {
            int m52875k = m52875k();
            boolean z = (m52875k & 128) == 128;
            int m52879o = m52879o(m52875k, 127);
            return z ? ByteString.m65002of(m0i.m55528f().m55531c(this.f64020b.readByteArray(m52879o))) : this.f64020b.readByteString(m52879o);
        }

        /* renamed from: m */
        public void m52877m() throws IOException {
            while (!this.f64020b.exhausted()) {
                int readByte = this.f64020b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    m52878n(m52879o(readByte, 127) - 1);
                } else if (readByte == 64) {
                    m52881q();
                } else if ((readByte & 64) == 64) {
                    m52880p(m52879o(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int m52879o = m52879o(readByte, 31);
                    this.f64022d = m52879o;
                    if (m52879o < 0 || m52879o > this.f64021c) {
                        throw new IOException("Invalid dynamic table size update " + this.f64022d);
                    }
                    m52865a();
                } else if (readByte == 16 || readByte == 0) {
                    m52883s();
                } else {
                    m52882r(m52879o(readByte, 15) - 1);
                }
            }
        }

        /* renamed from: n */
        public final void m52878n(int i) throws IOException {
            if (m52873i(i)) {
                this.f64019a.add(C13208a.f64017e[i]);
                return;
            }
            int m52867c = m52867c(i - C13208a.f64017e.length);
            if (m52867c >= 0) {
                Header[] headerArr = this.f64023e;
                if (m52867c <= headerArr.length - 1) {
                    this.f64019a.add(headerArr[m52867c]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: o */
        public int m52879o(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m52875k = m52875k();
                if ((m52875k & 128) == 0) {
                    return i2 + (m52875k << i4);
                }
                i2 += (m52875k & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: p */
        public final void m52880p(int i) throws IOException {
            m52872h(-1, new Header(m52870f(i), m52876l()));
        }

        /* renamed from: q */
        public final void m52881q() throws IOException {
            m52872h(-1, new Header(C13208a.m52863d(m52876l()), m52876l()));
        }

        /* renamed from: r */
        public final void m52882r(int i) throws IOException {
            this.f64019a.add(new Header(m52870f(i), m52876l()));
        }

        /* renamed from: s */
        public final void m52883s() throws IOException {
            this.f64019a.add(new Header(C13208a.m52863d(m52876l()), m52876l()));
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.a$b */
    /* loaded from: classes9.dex */
    public static final class b {

        /* renamed from: a */
        public final Buffer f64027a;

        public b(Buffer buffer) {
            this.f64027a = buffer;
        }

        /* renamed from: a */
        public void m52884a(ByteString byteString) throws IOException {
            m52886c(byteString.size(), 127, 0);
            this.f64027a.write(byteString);
        }

        /* renamed from: b */
        public void m52885b(List<Header> list) throws IOException {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString asciiLowercase = list.get(i).name.toAsciiLowercase();
                Integer num = (Integer) C13208a.f64018f.get(asciiLowercase);
                if (num != null) {
                    m52886c(num.intValue() + 1, 15, 0);
                    m52884a(list.get(i).value);
                } else {
                    this.f64027a.writeByte(0);
                    m52884a(asciiLowercase);
                    m52884a(list.get(i).value);
                }
            }
        }

        /* renamed from: c */
        public void m52886c(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.f64027a.writeByte(i | i3);
                return;
            }
            this.f64027a.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.f64027a.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.f64027a.writeByte(i4);
        }
    }

    static {
        Header header = new Header(Header.TARGET_AUTHORITY, "");
        ByteString byteString = Header.TARGET_METHOD;
        Header header2 = new Header(byteString, "GET");
        Header header3 = new Header(byteString, "POST");
        ByteString byteString2 = Header.TARGET_PATH;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.TARGET_SCHEME;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.RESPONSE_STATUS;
        f64017e = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header(Constant.TAG_AUTHORIZATION, ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header(BreakpointSQLiteKey.ETAG, ""), new Header("expect", ""), new Header(ClientCookie.EXPIRES_ATTR, ""), new Header("from", ""), new Header(Http2ExchangeCodec.f103778h, ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header(SessionDescription.f26441q, ""), new Header(RequestParameters.SUBRESOURCE_REFERER, ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header(Http2ExchangeCodec.f103781k, ""), new Header(Constant.HEADER_USER_AGENT, ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        f64018f = m52864e();
    }

    /* renamed from: d */
    public static ByteString m52863d(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b2 = byteString.getByte(i);
            if (b2 >= 65 && b2 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    /* renamed from: e */
    public static Map<ByteString, Integer> m52864e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f64017e.length);
        int i = 0;
        while (true) {
            Header[] headerArr = f64017e;
            if (i >= headerArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(headerArr[i].name)) {
                linkedHashMap.put(headerArr[i].name, Integer.valueOf(i));
            }
            i++;
        }
    }
}
