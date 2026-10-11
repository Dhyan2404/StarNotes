package com.squareup.okhttp.internal.spdy;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* loaded from: classes9.dex */
public final class SpdyStream {

    /* renamed from: l */
    public static final /* synthetic */ boolean f63987l = false;

    /* renamed from: b */
    public long f63989b;

    /* renamed from: c */
    public final int f63990c;

    /* renamed from: d */
    public final SpdyConnection f63991d;

    /* renamed from: e */
    public final List<Header> f63992e;

    /* renamed from: f */
    public List<Header> f63993f;

    /* renamed from: g */
    public final C13206c f63994g;

    /* renamed from: h */
    public final C13205b f63995h;

    /* renamed from: a */
    public long f63988a = 0;

    /* renamed from: i */
    public final C13207d f63996i = new C13207d();

    /* renamed from: j */
    public final C13207d f63997j = new C13207d();

    /* renamed from: k */
    public ErrorCode f63998k = null;

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyStream$b */
    /* loaded from: classes9.dex */
    public final class C13205b implements Sink {

        /* renamed from: i */
        public static final long f63999i = 16384;

        /* renamed from: j */
        public static final /* synthetic */ boolean f64000j = false;

        /* renamed from: e */
        public final Buffer f64001e = new Buffer();

        /* renamed from: f */
        public boolean f64002f;

        /* renamed from: g */
        public boolean f64003g;

        public C13205b() {
        }

        /* renamed from: H */
        public final void m52853H(boolean z) throws IOException {
            long min;
            SpdyStream spdyStream;
            synchronized (SpdyStream.this) {
                SpdyStream.this.f63997j.enter();
                while (true) {
                    try {
                        SpdyStream spdyStream2 = SpdyStream.this;
                        if (spdyStream2.f63989b > 0 || this.f64003g || this.f64002f || spdyStream2.f63998k != null) {
                            break;
                        } else {
                            SpdyStream.this.m52849q();
                        }
                    } finally {
                    }
                }
                SpdyStream.this.f63997j.exitAndThrowIfTimedOut();
                SpdyStream.this.m52843k();
                min = Math.min(SpdyStream.this.f63989b, this.f64001e.size());
                spdyStream = SpdyStream.this;
                spdyStream.f63989b -= min;
            }
            spdyStream.f63997j.enter();
            try {
                SpdyStream.this.f63991d.writeData(SpdyStream.this.f63990c, z && min == this.f64001e.size(), this.f64001e, min);
            } finally {
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            synchronized (SpdyStream.this) {
                if (this.f64002f) {
                    return;
                }
                if (!SpdyStream.this.f63995h.f64003g) {
                    if (this.f64001e.size() > 0) {
                        while (this.f64001e.size() > 0) {
                            m52853H(true);
                        }
                    } else {
                        SpdyStream.this.f63991d.writeData(SpdyStream.this.f63990c, true, null, 0L);
                    }
                }
                synchronized (SpdyStream.this) {
                    this.f64002f = true;
                }
                SpdyStream.this.f63991d.flush();
                SpdyStream.this.m52842j();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            synchronized (SpdyStream.this) {
                SpdyStream.this.m52843k();
            }
            while (this.f64001e.size() > 0) {
                m52853H(false);
                SpdyStream.this.f63991d.flush();
            }
        }

        @Override // okio.Sink
        public Timeout timeout() {
            return SpdyStream.this.f63997j;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            this.f64001e.write(buffer, j);
            while (this.f64001e.size() >= 16384) {
                m52853H(false);
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyStream$c */
    /* loaded from: classes9.dex */
    public final class C13206c implements Source {

        /* renamed from: k */
        public static final /* synthetic */ boolean f64005k = false;

        /* renamed from: e */
        public final Buffer f64006e;

        /* renamed from: f */
        public final Buffer f64007f;

        /* renamed from: g */
        public final long f64008g;

        /* renamed from: h */
        public boolean f64009h;

        /* renamed from: i */
        public boolean f64010i;

        /* renamed from: H */
        public final void m52857H() throws IOException {
            if (this.f64009h) {
                throw new IOException("stream closed");
            }
            if (SpdyStream.this.f63998k == null) {
                return;
            }
            throw new IOException("stream was reset: " + SpdyStream.this.f63998k);
        }

        /* renamed from: I */
        public void m52858I(BufferedSource bufferedSource, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            while (j > 0) {
                synchronized (SpdyStream.this) {
                    z = this.f64010i;
                    z2 = true;
                    z3 = this.f64007f.size() + j > this.f64008g;
                }
                if (z3) {
                    bufferedSource.skip(j);
                    SpdyStream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z) {
                    bufferedSource.skip(j);
                    return;
                }
                long read = bufferedSource.read(this.f64006e, j);
                if (read == -1) {
                    throw new EOFException();
                }
                j -= read;
                synchronized (SpdyStream.this) {
                    if (this.f64007f.size() != 0) {
                        z2 = false;
                    }
                    this.f64007f.writeAll(this.f64006e);
                    if (z2) {
                        SpdyStream.this.notifyAll();
                    }
                }
            }
        }

        /* renamed from: M */
        public final void m52859M() throws IOException {
            SpdyStream.this.f63996i.enter();
            while (this.f64007f.size() == 0 && !this.f64010i && !this.f64009h && SpdyStream.this.f63998k == null) {
                try {
                    SpdyStream.this.m52849q();
                } finally {
                    SpdyStream.this.f63996i.exitAndThrowIfTimedOut();
                }
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (SpdyStream.this) {
                this.f64009h = true;
                this.f64007f.clear();
                SpdyStream.this.notifyAll();
            }
            SpdyStream.this.m52842j();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (SpdyStream.this) {
                m52859M();
                m52857H();
                if (this.f64007f.size() == 0) {
                    return -1L;
                }
                Buffer buffer2 = this.f64007f;
                long read = buffer2.read(buffer, Math.min(j, buffer2.size()));
                SpdyStream spdyStream = SpdyStream.this;
                long j2 = spdyStream.f63988a + read;
                spdyStream.f63988a = j2;
                if (j2 >= spdyStream.f63991d.f63942t.m52762j(65536) / 2) {
                    SpdyStream.this.f63991d.m52819L0(SpdyStream.this.f63990c, SpdyStream.this.f63988a);
                    SpdyStream.this.f63988a = 0L;
                }
                synchronized (SpdyStream.this.f63991d) {
                    SpdyStream.this.f63991d.f63940r += read;
                    if (SpdyStream.this.f63991d.f63940r >= SpdyStream.this.f63991d.f63942t.m52762j(65536) / 2) {
                        SpdyStream.this.f63991d.m52819L0(0, SpdyStream.this.f63991d.f63940r);
                        SpdyStream.this.f63991d.f63940r = 0L;
                    }
                }
                return read;
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return SpdyStream.this.f63996i;
        }

        public C13206c(long j) {
            this.f64006e = new Buffer();
            this.f64007f = new Buffer();
            this.f64008g = j;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.spdy.SpdyStream$d */
    /* loaded from: classes9.dex */
    public class C13207d extends AsyncTimeout {
        public C13207d() {
        }

        public void exitAndThrowIfTimedOut() throws InterruptedIOException {
            if (exit()) {
                throw new InterruptedIOException("timeout");
            }
        }

        @Override // okio.AsyncTimeout
        public void timedOut() {
            SpdyStream.this.closeLater(ErrorCode.CANCEL);
        }
    }

    public SpdyStream(int i, SpdyConnection spdyConnection, boolean z, boolean z2, List<Header> list) {
        if (spdyConnection == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f63990c = i;
        this.f63991d = spdyConnection;
        this.f63989b = spdyConnection.f63943u.m52762j(65536);
        C13206c c13206c = new C13206c(spdyConnection.f63942t.m52762j(65536));
        this.f63994g = c13206c;
        C13205b c13205b = new C13205b();
        this.f63995h = c13205b;
        c13206c.f64010i = z2;
        c13205b.f64003g = z;
        this.f63992e = list;
    }

    public void close(ErrorCode errorCode) throws IOException {
        if (m52844l(errorCode)) {
            this.f63991d.m52817J0(this.f63990c, errorCode);
        }
    }

    public void closeLater(ErrorCode errorCode) {
        if (m52844l(errorCode)) {
            this.f63991d.m52818K0(this.f63990c, errorCode);
        }
    }

    public SpdyConnection getConnection() {
        return this.f63991d;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.f63998k;
    }

    public int getId() {
        return this.f63990c;
    }

    public List<Header> getRequestHeaders() {
        return this.f63992e;
    }

    public synchronized List<Header> getResponseHeaders() throws IOException {
        List<Header> list;
        this.f63996i.enter();
        while (this.f63993f == null && this.f63998k == null) {
            try {
                m52849q();
            } catch (Throwable th) {
                this.f63996i.exitAndThrowIfTimedOut();
                throw th;
            }
        }
        this.f63996i.exitAndThrowIfTimedOut();
        list = this.f63993f;
        if (list == null) {
            throw new IOException("stream was reset: " + this.f63998k);
        }
        return list;
    }

    public Sink getSink() {
        synchronized (this) {
            if (this.f63993f == null && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f63995h;
    }

    public Source getSource() {
        return this.f63994g;
    }

    /* renamed from: i */
    public void m52841i(long j) {
        this.f63989b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public boolean isLocallyInitiated() {
        return this.f63991d.f63928f == ((this.f63990c & 1) == 1);
    }

    public synchronized boolean isOpen() {
        if (this.f63998k != null) {
            return false;
        }
        if ((this.f63994g.f64010i || this.f63994g.f64009h) && (this.f63995h.f64003g || this.f63995h.f64002f)) {
            if (this.f63993f != null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: j */
    public final void m52842j() throws IOException {
        boolean z;
        boolean isOpen;
        synchronized (this) {
            z = !this.f63994g.f64010i && this.f63994g.f64009h && (this.f63995h.f64003g || this.f63995h.f64002f);
            isOpen = isOpen();
        }
        if (z) {
            close(ErrorCode.CANCEL);
        } else {
            if (isOpen) {
                return;
            }
            this.f63991d.m52812E0(this.f63990c);
        }
    }

    /* renamed from: k */
    public final void m52843k() throws IOException {
        if (this.f63995h.f64002f) {
            throw new IOException("stream closed");
        }
        if (this.f63995h.f64003g) {
            throw new IOException("stream finished");
        }
        if (this.f63998k == null) {
            return;
        }
        throw new IOException("stream was reset: " + this.f63998k);
    }

    /* renamed from: l */
    public final boolean m52844l(ErrorCode errorCode) {
        synchronized (this) {
            if (this.f63998k != null) {
                return false;
            }
            if (this.f63994g.f64010i && this.f63995h.f64003g) {
                return false;
            }
            this.f63998k = errorCode;
            notifyAll();
            this.f63991d.m52812E0(this.f63990c);
            return true;
        }
    }

    /* renamed from: m */
    public void m52845m(BufferedSource bufferedSource, int i) throws IOException {
        this.f63994g.m52858I(bufferedSource, i);
    }

    /* renamed from: n */
    public void m52846n() {
        boolean isOpen;
        synchronized (this) {
            this.f63994g.f64010i = true;
            isOpen = isOpen();
            notifyAll();
        }
        if (isOpen) {
            return;
        }
        this.f63991d.m52812E0(this.f63990c);
    }

    /* renamed from: o */
    public void m52847o(List<Header> list, HeadersMode headersMode) {
        ErrorCode errorCode;
        boolean z;
        synchronized (this) {
            errorCode = null;
            z = true;
            if (this.f63993f == null) {
                if (headersMode.failIfHeadersAbsent()) {
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                } else {
                    this.f63993f = list;
                    z = isOpen();
                    notifyAll();
                }
            } else if (headersMode.failIfHeadersPresent()) {
                errorCode = ErrorCode.STREAM_IN_USE;
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.f63993f);
                arrayList.addAll(list);
                this.f63993f = arrayList;
            }
        }
        if (errorCode != null) {
            closeLater(errorCode);
        } else {
            if (z) {
                return;
            }
            this.f63991d.m52812E0(this.f63990c);
        }
    }

    /* renamed from: p */
    public synchronized void m52848p(ErrorCode errorCode) {
        if (this.f63998k == null) {
            this.f63998k = errorCode;
            notifyAll();
        }
    }

    /* renamed from: q */
    public final void m52849q() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public Timeout readTimeout() {
        return this.f63996i;
    }

    public void reply(List<Header> list, boolean z) throws IOException {
        boolean z2;
        synchronized (this) {
            try {
                if (list == null) {
                    throw new NullPointerException("responseHeaders == null");
                }
                if (this.f63993f != null) {
                    throw new IllegalStateException("reply already sent");
                }
                this.f63993f = list;
                if (z) {
                    z2 = false;
                } else {
                    z2 = true;
                    this.f63995h.f64003g = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f63991d.m52816I0(this.f63990c, z2, list);
        if (z2) {
            this.f63991d.flush();
        }
    }

    public Timeout writeTimeout() {
        return this.f63997j;
    }
}
