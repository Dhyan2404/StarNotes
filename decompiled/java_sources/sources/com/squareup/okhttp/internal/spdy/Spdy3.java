package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.FrameReader;
import com.sunia.HTREnginev2.gsj;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.List;
import java.util.zip.Deflater;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Okio;
import okio.Sink;

/* loaded from: classes9.dex */
public final class Spdy3 implements Variant {

    /* renamed from: a */
    public static final int f63902a = 0;

    /* renamed from: b */
    public static final int f63903b = 1;

    /* renamed from: c */
    public static final int f63904c = 2;

    /* renamed from: d */
    public static final int f63905d = 3;

    /* renamed from: e */
    public static final int f63906e = 4;

    /* renamed from: f */
    public static final int f63907f = 6;

    /* renamed from: g */
    public static final int f63908g = 7;

    /* renamed from: h */
    public static final int f63909h = 8;

    /* renamed from: i */
    public static final int f63910i = 9;

    /* renamed from: j */
    public static final int f63911j = 1;

    /* renamed from: k */
    public static final int f63912k = 2;

    /* renamed from: l */
    public static final int f63913l = 3;

    /* renamed from: m */
    public static final byte[] f63914m;

    /* renamed from: com.squareup.okhttp.internal.spdy.Spdy3$a */
    /* loaded from: classes9.dex */
    public static final class C13194a implements FrameReader {

        /* renamed from: e */
        public final BufferedSource f63915e;

        /* renamed from: f */
        public final boolean f63916f;

        /* renamed from: g */
        public final gsj f63917g;

        public C13194a(BufferedSource bufferedSource, boolean z) {
            this.f63915e = bufferedSource;
            this.f63917g = new gsj(bufferedSource);
            this.f63916f = z;
        }

        /* renamed from: f */
        public static IOException m52775f(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(str, objArr));
        }

        /* renamed from: H */
        public final void m52776H(FrameReader.Handler handler, int i, int i2) throws IOException {
            if (i2 != 4) {
                throw m52775f("TYPE_PING length: %d != 4", Integer.valueOf(i2));
            }
            int readInt = this.f63915e.readInt();
            handler.ping(this.f63916f == ((readInt & 1) == 1), readInt, 0);
        }

        /* renamed from: I */
        public final void m52777I(FrameReader.Handler handler, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw m52775f("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i2));
            }
            int readInt = this.f63915e.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f63915e.readInt();
            ErrorCode fromSpdy3Rst = ErrorCode.fromSpdy3Rst(readInt2);
            if (fromSpdy3Rst == null) {
                throw m52775f("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt2));
            }
            handler.rstStream(readInt, fromSpdy3Rst);
        }

        /* renamed from: M */
        public final void m52778M(FrameReader.Handler handler, int i, int i2) throws IOException {
            int readInt = this.f63915e.readInt();
            if (i2 != (readInt * 8) + 4) {
                throw m52775f("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i2), Integer.valueOf(readInt));
            }
            Settings settings = new Settings();
            for (int i3 = 0; i3 < readInt; i3++) {
                int readInt2 = this.f63915e.readInt();
                settings.m52773u(readInt2 & 16777215, ((-16777216) & readInt2) >>> 24, this.f63915e.readInt());
            }
            handler.settings((i & 1) != 0, settings);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f63917g.m54344c();
        }

        /* renamed from: e0 */
        public final void m52779e0(FrameReader.Handler handler, int i, int i2) throws IOException {
            handler.headers(false, (i & 1) != 0, this.f63915e.readInt() & Integer.MAX_VALUE, -1, this.f63917g.m54347f(i2 - 4), HeadersMode.SPDY_REPLY);
        }

        /* renamed from: f0 */
        public final void m52780f0(FrameReader.Handler handler, int i, int i2) throws IOException {
            int readInt = this.f63915e.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f63915e.readInt() & Integer.MAX_VALUE;
            this.f63915e.readShort();
            handler.headers((i & 2) != 0, (i & 1) != 0, readInt, readInt2, this.f63917g.m54347f(i2 - 10), HeadersMode.SPDY_SYN_STREAM);
        }

        /* renamed from: g0 */
        public final void m52781g0(FrameReader.Handler handler, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw m52775f("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i2));
            }
            int readInt = this.f63915e.readInt() & Integer.MAX_VALUE;
            long readInt2 = this.f63915e.readInt() & Integer.MAX_VALUE;
            if (readInt2 == 0) {
                throw m52775f("windowSizeIncrement was 0", Long.valueOf(readInt2));
            }
            handler.windowUpdate(readInt, readInt2);
        }

        /* renamed from: j */
        public final void m52782j(FrameReader.Handler handler, int i, int i2) throws IOException {
            if (i2 != 8) {
                throw m52775f("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i2));
            }
            int readInt = this.f63915e.readInt() & Integer.MAX_VALUE;
            int readInt2 = this.f63915e.readInt();
            ErrorCode fromSpdyGoAway = ErrorCode.fromSpdyGoAway(readInt2);
            if (fromSpdyGoAway == null) {
                throw m52775f("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            handler.goAway(readInt, fromSpdyGoAway, ByteString.EMPTY);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                int readInt = this.f63915e.readInt();
                int readInt2 = this.f63915e.readInt();
                int i = ((-16777216) & readInt2) >>> 24;
                int i2 = readInt2 & 16777215;
                if (!((Integer.MIN_VALUE & readInt) != 0)) {
                    handler.data((i & 1) != 0, readInt & Integer.MAX_VALUE, this.f63915e, i2);
                    return true;
                }
                int i3 = (2147418112 & readInt) >>> 16;
                int i4 = readInt & 65535;
                if (i3 != 3) {
                    throw new ProtocolException("version != 3: " + i3);
                }
                switch (i4) {
                    case 1:
                        m52780f0(handler, i, i2);
                        return true;
                    case 2:
                        m52779e0(handler, i, i2);
                        return true;
                    case 3:
                        m52777I(handler, i, i2);
                        return true;
                    case 4:
                        m52778M(handler, i, i2);
                        return true;
                    case 5:
                    default:
                        this.f63915e.skip(i2);
                        return true;
                    case 6:
                        m52776H(handler, i, i2);
                        return true;
                    case 7:
                        m52782j(handler, i, i2);
                        return true;
                    case 8:
                        m52783w(handler, i, i2);
                        return true;
                    case 9:
                        m52781g0(handler, i, i2);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader
        public void readConnectionPreface() {
        }

        /* renamed from: w */
        public final void m52783w(FrameReader.Handler handler, int i, int i2) throws IOException {
            handler.headers(false, false, this.f63915e.readInt() & Integer.MAX_VALUE, -1, this.f63917g.m54347f(i2 - 4), HeadersMode.SPDY_HEADERS);
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.Spdy3$b */
    /* loaded from: classes9.dex */
    public static final class C13195b implements FrameWriter {

        /* renamed from: e */
        public final BufferedSink f63918e;

        /* renamed from: f */
        public final Buffer f63919f;

        /* renamed from: g */
        public final BufferedSink f63920g;

        /* renamed from: h */
        public final boolean f63921h;

        /* renamed from: i */
        public boolean f63922i;

        public C13195b(BufferedSink bufferedSink, boolean z) {
            this.f63918e = bufferedSink;
            this.f63921h = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(Spdy3.f63914m);
            Buffer buffer = new Buffer();
            this.f63919f = buffer;
            this.f63920g = Okio.buffer(new DeflaterSink((Sink) buffer, deflater));
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public void ackSettings(Settings settings) {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f63922i = true;
            Util.closeAll(this.f63918e, this.f63920g);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void connectionPreface() {
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void data(boolean z, int i, Buffer buffer, int i2) throws IOException {
            m52784f(i, z ? 1 : 0, buffer, i2);
        }

        /* renamed from: f */
        public void m52784f(int i, int i2, Buffer buffer, int i3) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            long j = i3;
            if (j > 16777215) {
                throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + i3);
            }
            this.f63918e.writeInt(i & Integer.MAX_VALUE);
            this.f63918e.writeInt(((i2 & 255) << 24) | (16777215 & i3));
            if (i3 > 0) {
                this.f63918e.write(buffer, j);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void flush() throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            if (errorCode.spdyGoAwayCode == -1) {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
            this.f63918e.writeInt(-2147287033);
            this.f63918e.writeInt(8);
            this.f63918e.writeInt(i);
            this.f63918e.writeInt(errorCode.spdyGoAwayCode);
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            m52785j(list);
            int size = (int) (this.f63919f.size() + 4);
            this.f63918e.writeInt(-2147287032);
            this.f63918e.writeInt((size & 16777215) | 0);
            this.f63918e.writeInt(i & Integer.MAX_VALUE);
            this.f63918e.writeAll(this.f63919f);
        }

        /* renamed from: j */
        public final void m52785j(List<Header> list) throws IOException {
            if (this.f63919f.size() != 0) {
                throw new IllegalStateException();
            }
            this.f63920g.writeInt(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString byteString = list.get(i).name;
                this.f63920g.writeInt(byteString.size());
                this.f63920g.write(byteString);
                ByteString byteString2 = list.get(i).value;
                this.f63920g.writeInt(byteString2.size());
                this.f63920g.write(byteString2);
            }
            this.f63920g.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public int maxDataLength() {
            return 16383;
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            if (z != (this.f63921h != ((i & 1) == 1))) {
                throw new IllegalArgumentException("payload != reply");
            }
            this.f63918e.writeInt(-2147287034);
            this.f63918e.writeInt(4);
            this.f63918e.writeInt(i);
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public void pushPromise(int i, int i2, List<Header> list) throws IOException {
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            if (errorCode.spdyRstCode == -1) {
                throw new IllegalArgumentException();
            }
            this.f63918e.writeInt(-2147287037);
            this.f63918e.writeInt(8);
            this.f63918e.writeInt(i & Integer.MAX_VALUE);
            this.f63918e.writeInt(errorCode.spdyRstCode);
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void settings(Settings settings) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            int m52774v = settings.m52774v();
            this.f63918e.writeInt(-2147287036);
            this.f63918e.writeInt((((m52774v * 8) + 4) & 16777215) | 0);
            this.f63918e.writeInt(m52774v);
            for (int i = 0; i <= 10; i++) {
                if (settings.m52770r(i)) {
                    this.f63918e.writeInt(((settings.m52754b(i) & 255) << 24) | (i & 16777215));
                    this.f63918e.writeInt(settings.m52755c(i));
                }
            }
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            m52785j(list);
            int i2 = z ? 1 : 0;
            int size = (int) (this.f63919f.size() + 4);
            this.f63918e.writeInt(-2147287038);
            this.f63918e.writeInt(((i2 & 255) << 24) | (size & 16777215));
            this.f63918e.writeInt(i & Integer.MAX_VALUE);
            this.f63918e.writeAll(this.f63919f);
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void synStream(boolean z, boolean z2, int i, int i2, List<Header> list) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            m52785j(list);
            int size = (int) (this.f63919f.size() + 10);
            int i3 = (z ? 1 : 0) | (z2 ? 2 : 0);
            this.f63918e.writeInt(-2147287039);
            this.f63918e.writeInt(((i3 & 255) << 24) | (size & 16777215));
            this.f63918e.writeInt(i & Integer.MAX_VALUE);
            this.f63918e.writeInt(Integer.MAX_VALUE & i2);
            this.f63918e.writeShort(0);
            this.f63918e.writeAll(this.f63919f);
            this.f63918e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.f63922i) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + j);
            }
            this.f63918e.writeInt(-2147287031);
            this.f63918e.writeInt(8);
            this.f63918e.writeInt(i);
            this.f63918e.writeInt((int) j);
            this.f63918e.flush();
        }
    }

    static {
        try {
            f63914m = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(Util.UTF_8.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public FrameReader newReader(BufferedSource bufferedSource, boolean z) {
        return new C13194a(bufferedSource, z);
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z) {
        return new C13195b(bufferedSink, z);
    }
}
