package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.spdy.C13208a;
import com.squareup.okhttp.internal.spdy.FrameReader;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* loaded from: classes9.dex */
public final class Http2 implements Variant {

    /* renamed from: a */
    public static final Logger f63836a = Logger.getLogger(C13189b.class.getName());

    /* renamed from: b */
    public static final ByteString f63837b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    /* renamed from: c */
    public static final int f63838c = 16384;

    /* renamed from: d */
    public static final byte f63839d = 0;

    /* renamed from: e */
    public static final byte f63840e = 1;

    /* renamed from: f */
    public static final byte f63841f = 2;

    /* renamed from: g */
    public static final byte f63842g = 3;

    /* renamed from: h */
    public static final byte f63843h = 4;

    /* renamed from: i */
    public static final byte f63844i = 5;

    /* renamed from: j */
    public static final byte f63845j = 6;

    /* renamed from: k */
    public static final byte f63846k = 7;

    /* renamed from: l */
    public static final byte f63847l = 8;

    /* renamed from: m */
    public static final byte f63848m = 9;

    /* renamed from: n */
    public static final byte f63849n = 0;

    /* renamed from: o */
    public static final byte f63850o = 1;

    /* renamed from: p */
    public static final byte f63851p = 1;

    /* renamed from: q */
    public static final byte f63852q = 4;

    /* renamed from: r */
    public static final byte f63853r = 4;

    /* renamed from: s */
    public static final byte f63854s = 8;

    /* renamed from: t */
    public static final byte f63855t = 32;

    /* renamed from: u */
    public static final byte f63856u = 32;

    /* renamed from: com.squareup.okhttp.internal.spdy.Http2$a */
    /* loaded from: classes9.dex */
    public static final class C13188a implements Source {

        /* renamed from: e */
        public final BufferedSource f63857e;

        /* renamed from: f */
        public int f63858f;

        /* renamed from: g */
        public byte f63859g;

        /* renamed from: h */
        public int f63860h;

        /* renamed from: i */
        public int f63861i;

        /* renamed from: j */
        public short f63862j;

        public C13188a(BufferedSource bufferedSource) {
            this.f63857e = bufferedSource;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* renamed from: f */
        public final void m52732f() throws IOException {
            int i = this.f63860h;
            int m52730k = Http2.m52730k(this.f63857e);
            this.f63861i = m52730k;
            this.f63858f = m52730k;
            byte readByte = (byte) (this.f63857e.readByte() & 255);
            this.f63859g = (byte) (this.f63857e.readByte() & 255);
            if (Http2.f63836a.isLoggable(Level.FINE)) {
                Http2.f63836a.fine(C13189b.m52734b(true, this.f63860h, this.f63858f, readByte, this.f63859g));
            }
            int readInt = this.f63857e.readInt() & Integer.MAX_VALUE;
            this.f63860h = readInt;
            if (readByte != 9) {
                throw Http2.m52728i("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
            }
            if (readInt != i) {
                throw Http2.m52728i("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            while (true) {
                int i = this.f63861i;
                if (i != 0) {
                    long read = this.f63857e.read(buffer, Math.min(j, i));
                    if (read == -1) {
                        return -1L;
                    }
                    this.f63861i = (int) (this.f63861i - read);
                    return read;
                }
                this.f63857e.skip(this.f63862j);
                this.f63862j = (short) 0;
                if ((this.f63859g & 4) != 0) {
                    return -1L;
                }
                m52732f();
            }
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f63857e.getTimeout();
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.Http2$b */
    /* loaded from: classes9.dex */
    public static final class C13189b {

        /* renamed from: a */
        public static final String[] f63863a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b */
        public static final String[] f63864b = new String[64];

        /* renamed from: c */
        public static final String[] f63865c = new String[256];

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = f63865c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = f63864b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            int[] iArr = {1};
            strArr2[8] = "PADDED";
            int i3 = iArr[0];
            strArr2[i3 | 8] = strArr2[i3] + "|PADDED";
            strArr2[4] = "END_HEADERS";
            strArr2[32] = "PRIORITY";
            strArr2[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i4 = 0; i4 < 3; i4++) {
                int i5 = iArr2[i4];
                int i6 = iArr[0];
                String[] strArr3 = f63864b;
                int i7 = i6 | i5;
                strArr3[i7] = strArr3[i6] + '|' + strArr3[i5];
                strArr3[i7 | 8] = strArr3[i6] + '|' + strArr3[i5] + "|PADDED";
            }
            while (true) {
                String[] strArr4 = f63864b;
                if (i >= strArr4.length) {
                    return;
                }
                if (strArr4[i] == null) {
                    strArr4[i] = f63865c[i];
                }
                i++;
            }
        }

        /* renamed from: a */
        public static String m52733a(byte b, byte b2) {
            if (b2 == 0) {
                return "";
            }
            if (b != 2 && b != 3) {
                if (b == 4 || b == 6) {
                    return b2 == 1 ? "ACK" : f63865c[b2];
                }
                if (b != 7 && b != 8) {
                    String[] strArr = f63864b;
                    String str = b2 < strArr.length ? strArr[b2] : f63865c[b2];
                    return (b != 5 || (b2 & 4) == 0) ? (b != 0 || (b2 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
                }
            }
            return f63865c[b2];
        }

        /* renamed from: b */
        public static String m52734b(boolean z, int i, int i2, byte b, byte b2) {
            String[] strArr = f63863a;
            String format = b < strArr.length ? strArr[b] : String.format("0x%02x", Byte.valueOf(b));
            String m52733a = m52733a(b, b2);
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = format;
            objArr[4] = m52733a;
            return String.format("%s 0x%08x %5d %-13s %s", objArr);
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.Http2$c */
    /* loaded from: classes9.dex */
    public static final class C13190c implements FrameReader {

        /* renamed from: e */
        public final BufferedSource f63866e;

        /* renamed from: f */
        public final C13188a f63867f;

        /* renamed from: g */
        public final boolean f63868g;

        /* renamed from: h */
        public final C13208a.a f63869h;

        public C13190c(BufferedSource bufferedSource, int i, boolean z) {
            this.f63866e = bufferedSource;
            this.f63868g = z;
            C13188a c13188a = new C13188a(bufferedSource);
            this.f63867f = c13188a;
            this.f63869h = new C13208a.a(i, c13188a);
        }

        /* renamed from: H */
        public final void m52735H(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i2 == 0) {
                throw Http2.m52728i("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            }
            boolean z = (b & 1) != 0;
            short readByte = (b & 8) != 0 ? (short) (this.f63866e.readByte() & 255) : (short) 0;
            if ((b & 32) != 0) {
                m52737M(handler, i2);
                i -= 5;
            }
            handler.headers(false, z, i2, -1, m52745w(Http2.m52729j(i, b, readByte), readByte, b, i2), HeadersMode.HTTP_20_HEADERS);
        }

        /* renamed from: I */
        public final void m52736I(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 8) {
                throw Http2.m52728i("TYPE_PING length != 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw Http2.m52728i("TYPE_PING streamId != 0", new Object[0]);
            }
            handler.ping((b & 1) != 0, this.f63866e.readInt(), this.f63866e.readInt());
        }

        /* renamed from: M */
        public final void m52737M(FrameReader.Handler handler, int i) throws IOException {
            int readInt = this.f63866e.readInt();
            handler.priority(i, readInt & Integer.MAX_VALUE, (this.f63866e.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f63866e.close();
        }

        /* renamed from: e0 */
        public final void m52738e0(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 5) {
                throw Http2.m52728i("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
            }
            if (i2 == 0) {
                throw Http2.m52728i("TYPE_PRIORITY streamId == 0", new Object[0]);
            }
            m52737M(handler, i2);
        }

        /* renamed from: f */
        public final void m52739f(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            boolean z = (b & 1) != 0;
            if ((b & 32) != 0) {
                throw Http2.m52728i("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            }
            short readByte = (b & 8) != 0 ? (short) (this.f63866e.readByte() & 255) : (short) 0;
            handler.data(z, i2, this.f63866e, Http2.m52729j(i, b, readByte));
            this.f63866e.skip(readByte);
        }

        /* renamed from: f0 */
        public final void m52740f0(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i2 == 0) {
                throw Http2.m52728i("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            }
            short readByte = (b & 8) != 0 ? (short) (this.f63866e.readByte() & 255) : (short) 0;
            handler.pushPromise(i2, this.f63866e.readInt() & Integer.MAX_VALUE, m52745w(Http2.m52729j(i - 4, b, readByte), readByte, b, i2));
        }

        /* renamed from: g0 */
        public final void m52741g0(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 4) {
                throw Http2.m52728i("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
            }
            if (i2 == 0) {
                throw Http2.m52728i("TYPE_RST_STREAM streamId == 0", new Object[0]);
            }
            int readInt = this.f63866e.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 == null) {
                throw Http2.m52728i("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            }
            handler.rstStream(i2, fromHttp2);
        }

        /* renamed from: h0 */
        public final void m52742h0(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i2 != 0) {
                throw Http2.m52728i("TYPE_SETTINGS streamId != 0", new Object[0]);
            }
            if ((b & 1) != 0) {
                if (i != 0) {
                    throw Http2.m52728i("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                }
                handler.ackSettings();
                return;
            }
            if (i % 6 != 0) {
                throw Http2.m52728i("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
            }
            Settings settings = new Settings();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short readShort = this.f63866e.readShort();
                int readInt = this.f63866e.readInt();
                switch (readShort) {
                    case 1:
                    case 6:
                        break;
                    case 2:
                        if (readInt != 0 && readInt != 1) {
                            throw Http2.m52728i("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                        break;
                    case 3:
                        readShort = 4;
                        break;
                    case 4:
                        if (readInt < 0) {
                            throw Http2.m52728i("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                        readShort = 7;
                        break;
                    case 5:
                        if (readInt < 16384 || readInt > 16777215) {
                            throw Http2.m52728i("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                        }
                        break;
                        break;
                    default:
                        throw Http2.m52728i("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(readShort));
                }
                settings.m52773u(readShort, 0, readInt);
            }
            handler.settings(false, settings);
            if (settings.m52761i() >= 0) {
                this.f63869h.m52871g(settings.m52761i());
            }
        }

        /* renamed from: i0 */
        public final void m52743i0(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i != 4) {
                throw Http2.m52728i("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
            }
            long readInt = this.f63866e.readInt() & 2147483647L;
            if (readInt == 0) {
                throw Http2.m52728i("windowSizeIncrement was 0", Long.valueOf(readInt));
            }
            handler.windowUpdate(i2, readInt);
        }

        /* renamed from: j */
        public final void m52744j(FrameReader.Handler handler, int i, byte b, int i2) throws IOException {
            if (i < 8) {
                throw Http2.m52728i("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
            }
            if (i2 != 0) {
                throw Http2.m52728i("TYPE_GOAWAY streamId != 0", new Object[0]);
            }
            int readInt = this.f63866e.readInt();
            int readInt2 = this.f63866e.readInt();
            int i3 = i - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 == null) {
                throw Http2.m52728i("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            ByteString byteString = ByteString.EMPTY;
            if (i3 > 0) {
                byteString = this.f63866e.readByteString(i3);
            }
            handler.goAway(readInt, fromHttp2, byteString);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader
        public boolean nextFrame(FrameReader.Handler handler) throws IOException {
            try {
                this.f63866e.require(9L);
                int m52730k = Http2.m52730k(this.f63866e);
                if (m52730k < 0 || m52730k > 16384) {
                    throw Http2.m52728i("FRAME_SIZE_ERROR: %s", Integer.valueOf(m52730k));
                }
                byte readByte = (byte) (this.f63866e.readByte() & 255);
                byte readByte2 = (byte) (this.f63866e.readByte() & 255);
                int readInt = this.f63866e.readInt() & Integer.MAX_VALUE;
                if (Http2.f63836a.isLoggable(Level.FINE)) {
                    Http2.f63836a.fine(C13189b.m52734b(true, readInt, m52730k, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        m52739f(handler, m52730k, readByte2, readInt);
                        return true;
                    case 1:
                        m52735H(handler, m52730k, readByte2, readInt);
                        return true;
                    case 2:
                        m52738e0(handler, m52730k, readByte2, readInt);
                        return true;
                    case 3:
                        m52741g0(handler, m52730k, readByte2, readInt);
                        return true;
                    case 4:
                        m52742h0(handler, m52730k, readByte2, readInt);
                        return true;
                    case 5:
                        m52740f0(handler, m52730k, readByte2, readInt);
                        return true;
                    case 6:
                        m52736I(handler, m52730k, readByte2, readInt);
                        return true;
                    case 7:
                        m52744j(handler, m52730k, readByte2, readInt);
                        return true;
                    case 8:
                        m52743i0(handler, m52730k, readByte2, readInt);
                        return true;
                    default:
                        this.f63866e.skip(m52730k);
                        return true;
                }
            } catch (IOException unused) {
                return false;
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameReader
        public void readConnectionPreface() throws IOException {
            if (this.f63868g) {
                return;
            }
            ByteString readByteString = this.f63866e.readByteString(Http2.f63837b.size());
            if (Http2.f63836a.isLoggable(Level.FINE)) {
                Http2.f63836a.fine(String.format("<< CONNECTION %s", readByteString.hex()));
            }
            if (!Http2.f63837b.equals(readByteString)) {
                throw Http2.m52728i("Expected a connection header but was %s", readByteString.utf8());
            }
        }

        /* renamed from: w */
        public final List<Header> m52745w(int i, short s, byte b, int i2) throws IOException {
            C13188a c13188a = this.f63867f;
            c13188a.f63861i = i;
            c13188a.f63858f = i;
            c13188a.f63862j = s;
            c13188a.f63859g = b;
            c13188a.f63860h = i2;
            this.f63869h.m52877m();
            return this.f63869h.m52869e();
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.Http2$d */
    /* loaded from: classes9.dex */
    public static final class C13191d implements FrameWriter {

        /* renamed from: e */
        public final BufferedSink f63870e;

        /* renamed from: f */
        public final boolean f63871f;

        /* renamed from: g */
        public final Buffer f63872g;

        /* renamed from: h */
        public final C13208a.b f63873h;

        /* renamed from: i */
        public int f63874i;

        /* renamed from: j */
        public boolean f63875j;

        public C13191d(BufferedSink bufferedSink, boolean z) {
            this.f63870e = bufferedSink;
            this.f63871f = z;
            Buffer buffer = new Buffer();
            this.f63872g = buffer;
            this.f63873h = new C13208a.b(buffer);
            this.f63874i = 16384;
        }

        /* renamed from: H */
        public final void m52746H(int i, long j) throws IOException {
            while (j > 0) {
                int min = (int) Math.min(this.f63874i, j);
                long j2 = min;
                j -= j2;
                m52748j(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
                this.f63870e.write(this.f63872g, j2);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void ackSettings(Settings settings) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            this.f63874i = settings.m52764l(this.f63874i);
            m52748j(0, 0, (byte) 4, (byte) 1);
            this.f63870e.flush();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public synchronized void close() throws IOException {
            this.f63875j = true;
            this.f63870e.close();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void connectionPreface() throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (this.f63871f) {
                if (Http2.f63836a.isLoggable(Level.FINE)) {
                    Http2.f63836a.fine(String.format(">> CONNECTION %s", Http2.f63837b.hex()));
                }
                this.f63870e.write(Http2.f63837b.toByteArray());
                this.f63870e.flush();
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void data(boolean z, int i, Buffer buffer, int i2) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            m52747f(i, z ? (byte) 1 : (byte) 0, buffer, i2);
        }

        /* renamed from: f */
        public void m52747f(int i, byte b, Buffer buffer, int i2) throws IOException {
            m52748j(i, i2, (byte) 0, b);
            if (i2 > 0) {
                this.f63870e.write(buffer, i2);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void flush() throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            this.f63870e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (errorCode.httpCode == -1) {
                throw Http2.m52727h("errorCode.httpCode == -1", new Object[0]);
            }
            m52748j(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.f63870e.writeInt(i);
            this.f63870e.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.f63870e.write(bArr);
            }
            this.f63870e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void headers(int i, List<Header> list) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            m52749w(false, i, list);
        }

        /* renamed from: j */
        public void m52748j(int i, int i2, byte b, byte b2) throws IOException {
            if (Http2.f63836a.isLoggable(Level.FINE)) {
                Http2.f63836a.fine(C13189b.m52734b(false, i, i2, b, b2));
            }
            int i3 = this.f63874i;
            if (i2 > i3) {
                throw Http2.m52727h("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
            }
            if ((Integer.MIN_VALUE & i) != 0) {
                throw Http2.m52727h("reserved bit set: %s", Integer.valueOf(i));
            }
            Http2.m52731l(this.f63870e, i2);
            this.f63870e.writeByte(b & 255);
            this.f63870e.writeByte(b2 & 255);
            this.f63870e.writeInt(i & Integer.MAX_VALUE);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public int maxDataLength() {
            return this.f63874i;
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            m52748j(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
            this.f63870e.writeInt(i);
            this.f63870e.writeInt(i2);
            this.f63870e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (this.f63872g.size() != 0) {
                throw new IllegalStateException();
            }
            this.f63873h.m52885b(list);
            long size = this.f63872g.size();
            int min = (int) Math.min(this.f63874i - 4, size);
            long j = min;
            m52748j(i, min + 4, (byte) 5, size == j ? (byte) 4 : (byte) 0);
            this.f63870e.writeInt(i2 & Integer.MAX_VALUE);
            this.f63870e.write(this.f63872g, j);
            if (size > j) {
                m52746H(i, size - j);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (errorCode.spdyRstCode == -1) {
                throw new IllegalArgumentException();
            }
            m52748j(i, 4, (byte) 3, (byte) 0);
            this.f63870e.writeInt(errorCode.httpCode);
            this.f63870e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void settings(Settings settings) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            int i = 0;
            m52748j(0, settings.m52774v() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (settings.m52770r(i)) {
                    this.f63870e.writeShort(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.f63870e.writeInt(settings.m52755c(i));
                }
                i++;
            }
            this.f63870e.flush();
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            m52749w(z, i, list);
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void synStream(boolean z, boolean z2, int i, int i2, List<Header> list) throws IOException {
            try {
                if (z2) {
                    throw new UnsupportedOperationException();
                }
                if (this.f63875j) {
                    throw new IOException("closed");
                }
                m52749w(z, i, list);
            } catch (Throwable th) {
                throw th;
            }
        }

        /* renamed from: w */
        public void m52749w(boolean z, int i, List<Header> list) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (this.f63872g.size() != 0) {
                throw new IllegalStateException();
            }
            this.f63873h.m52885b(list);
            long size = this.f63872g.size();
            int min = (int) Math.min(this.f63874i, size);
            long j = min;
            byte b = size == j ? (byte) 4 : (byte) 0;
            if (z) {
                b = (byte) (b | 1);
            }
            m52748j(i, min, (byte) 1, b);
            this.f63870e.write(this.f63872g, j);
            if (size > j) {
                m52746H(i, size - j);
            }
        }

        @Override // com.squareup.okhttp.internal.spdy.FrameWriter
        public synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.f63875j) {
                throw new IOException("closed");
            }
            if (j == 0 || j > 2147483647L) {
                throw Http2.m52727h("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
            }
            m52748j(i, 4, (byte) 8, (byte) 0);
            this.f63870e.writeInt((int) j);
            this.f63870e.flush();
        }
    }

    /* renamed from: h */
    public static IllegalArgumentException m52727h(String str, Object... objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    /* renamed from: i */
    public static IOException m52728i(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(str, objArr));
    }

    /* renamed from: j */
    public static int m52729j(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw m52728i("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
    }

    /* renamed from: k */
    public static int m52730k(BufferedSource bufferedSource) throws IOException {
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    /* renamed from: l */
    public static void m52731l(BufferedSink bufferedSink, int i) throws IOException {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public FrameReader newReader(BufferedSource bufferedSource, boolean z) {
        return new C13190c(bufferedSource, 4096, z);
    }

    @Override // com.squareup.okhttp.internal.spdy.Variant
    public FrameWriter newWriter(BufferedSink bufferedSink, boolean z) {
        return new C13191d(bufferedSink, z);
    }
}
