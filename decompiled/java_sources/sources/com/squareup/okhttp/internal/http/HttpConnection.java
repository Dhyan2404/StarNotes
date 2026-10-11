package com.squareup.okhttp.internal.http;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* loaded from: classes9.dex */
public final class HttpConnection {

    /* renamed from: h */
    public static final int f63738h = 0;

    /* renamed from: i */
    public static final int f63739i = 1;

    /* renamed from: j */
    public static final int f63740j = 2;

    /* renamed from: k */
    public static final int f63741k = 3;

    /* renamed from: l */
    public static final int f63742l = 4;

    /* renamed from: m */
    public static final int f63743m = 5;

    /* renamed from: n */
    public static final int f63744n = 6;

    /* renamed from: o */
    public static final int f63745o = 0;

    /* renamed from: p */
    public static final int f63746p = 1;

    /* renamed from: q */
    public static final int f63747q = 2;

    /* renamed from: a */
    public final ConnectionPool f63748a;

    /* renamed from: b */
    public final Connection f63749b;

    /* renamed from: c */
    public final Socket f63750c;

    /* renamed from: d */
    public final BufferedSource f63751d;

    /* renamed from: e */
    public final BufferedSink f63752e;

    /* renamed from: f */
    public int f63753f = 0;

    /* renamed from: g */
    public int f63754g = 0;

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$b */
    /* loaded from: classes9.dex */
    public abstract class AbstractC13176b implements Source {

        /* renamed from: e */
        public final ForwardingTimeout f63755e;

        /* renamed from: f */
        public boolean f63756f;

        public AbstractC13176b() {
            this.f63755e = new ForwardingTimeout(HttpConnection.this.f63751d.getTimeout());
        }

        /* renamed from: f */
        public final void m52673f(boolean z) throws IOException {
            if (HttpConnection.this.f63753f != 5) {
                throw new IllegalStateException("state: " + HttpConnection.this.f63753f);
            }
            HttpConnection.this.m52672j(this.f63755e);
            HttpConnection.this.f63753f = 0;
            if (z && HttpConnection.this.f63754g == 1) {
                HttpConnection.this.f63754g = 0;
                Internal.instance.recycle(HttpConnection.this.f63748a, HttpConnection.this.f63749b);
            } else if (HttpConnection.this.f63754g == 2) {
                HttpConnection.this.f63753f = 6;
                HttpConnection.this.f63749b.getSocket().close();
            }
        }

        /* renamed from: j */
        public final void m52674j() {
            Util.closeQuietly(HttpConnection.this.f63749b.getSocket());
            HttpConnection.this.f63753f = 6;
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f63755e;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$c */
    /* loaded from: classes9.dex */
    public final class C13177c implements Sink {

        /* renamed from: e */
        public final ForwardingTimeout f63758e;

        /* renamed from: f */
        public boolean f63759f;

        public C13177c() {
            this.f63758e = new ForwardingTimeout(HttpConnection.this.f63752e.getTimeout());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public synchronized void close() throws IOException {
            if (this.f63759f) {
                return;
            }
            this.f63759f = true;
            HttpConnection.this.f63752e.writeUtf8("0\r\n\r\n");
            HttpConnection.this.m52672j(this.f63758e);
            HttpConnection.this.f63753f = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public synchronized void flush() throws IOException {
            if (this.f63759f) {
                return;
            }
            HttpConnection.this.f63752e.flush();
        }

        @Override // okio.Sink
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f63758e;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (this.f63759f) {
                throw new IllegalStateException("closed");
            }
            if (j == 0) {
                return;
            }
            HttpConnection.this.f63752e.writeHexadecimalUnsignedLong(j);
            HttpConnection.this.f63752e.writeUtf8("\r\n");
            HttpConnection.this.f63752e.write(buffer, j);
            HttpConnection.this.f63752e.writeUtf8("\r\n");
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$d */
    /* loaded from: classes9.dex */
    public class C13178d extends AbstractC13176b {

        /* renamed from: l */
        public static final long f63761l = -1;

        /* renamed from: h */
        public long f63762h;

        /* renamed from: i */
        public boolean f63763i;

        /* renamed from: j */
        public final HttpEngine f63764j;

        public C13178d(HttpEngine httpEngine) throws IOException {
            super();
            this.f63762h = -1L;
            this.f63763i = true;
            this.f63764j = httpEngine;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63756f) {
                return;
            }
            if (this.f63763i && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                m52674j();
            }
            this.f63756f = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f63756f) {
                throw new IllegalStateException("closed");
            }
            if (!this.f63763i) {
                return -1L;
            }
            long j2 = this.f63762h;
            if (j2 == 0 || j2 == -1) {
                m52675w();
                if (!this.f63763i) {
                    return -1L;
                }
            }
            long read = HttpConnection.this.f63751d.read(buffer, Math.min(j, this.f63762h));
            if (read != -1) {
                this.f63762h -= read;
                return read;
            }
            m52674j();
            throw new IOException("unexpected end of stream");
        }

        /* renamed from: w */
        public final void m52675w() throws IOException {
            if (this.f63762h != -1) {
                HttpConnection.this.f63751d.readUtf8LineStrict();
            }
            try {
                this.f63762h = HttpConnection.this.f63751d.readHexadecimalUnsignedLong();
                String trim = HttpConnection.this.f63751d.readUtf8LineStrict().trim();
                if (this.f63762h < 0 || !(trim.isEmpty() || trim.startsWith(AndroidTreeView.f47214k))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f63762h + trim + "\"");
                }
                if (this.f63762h == 0) {
                    this.f63763i = false;
                    Headers.Builder builder = new Headers.Builder();
                    HttpConnection.this.readHeaders(builder);
                    this.f63764j.receiveHeaders(builder.build());
                    m52673f(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$e */
    /* loaded from: classes9.dex */
    public final class C13179e implements Sink {

        /* renamed from: e */
        public final ForwardingTimeout f63766e;

        /* renamed from: f */
        public boolean f63767f;

        /* renamed from: g */
        public long f63768g;

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (this.f63767f) {
                return;
            }
            this.f63767f = true;
            if (this.f63768g > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            HttpConnection.this.m52672j(this.f63766e);
            HttpConnection.this.f63753f = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (this.f63767f) {
                return;
            }
            HttpConnection.this.f63752e.flush();
        }

        @Override // okio.Sink
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f63766e;
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            if (this.f63767f) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(buffer.size(), 0L, j);
            if (j <= this.f63768g) {
                HttpConnection.this.f63752e.write(buffer, j);
                this.f63768g -= j;
                return;
            }
            throw new ProtocolException("expected " + this.f63768g + " bytes but received " + j);
        }

        public C13179e(long j) {
            this.f63766e = new ForwardingTimeout(HttpConnection.this.f63752e.getTimeout());
            this.f63768g = j;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$f */
    /* loaded from: classes9.dex */
    public class C13180f extends AbstractC13176b {

        /* renamed from: h */
        public long f63770h;

        public C13180f(long j) throws IOException {
            super();
            this.f63770h = j;
            if (j == 0) {
                m52673f(true);
            }
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63756f) {
                return;
            }
            if (this.f63770h != 0 && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                m52674j();
            }
            this.f63756f = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f63756f) {
                throw new IllegalStateException("closed");
            }
            if (this.f63770h == 0) {
                return -1L;
            }
            long read = HttpConnection.this.f63751d.read(buffer, Math.min(this.f63770h, j));
            if (read == -1) {
                m52674j();
                throw new ProtocolException("unexpected end of stream");
            }
            long j2 = this.f63770h - read;
            this.f63770h = j2;
            if (j2 == 0) {
                m52673f(true);
            }
            return read;
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpConnection$g */
    /* loaded from: classes9.dex */
    public class C13181g extends AbstractC13176b {

        /* renamed from: h */
        public boolean f63772h;

        public C13181g() {
            super();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f63756f) {
                return;
            }
            if (!this.f63772h) {
                m52674j();
            }
            this.f63756f = true;
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            if (this.f63756f) {
                throw new IllegalStateException("closed");
            }
            if (this.f63772h) {
                return -1L;
            }
            long read = HttpConnection.this.f63751d.read(buffer, j);
            if (read != -1) {
                return read;
            }
            this.f63772h = true;
            m52673f(false);
            return -1L;
        }
    }

    public HttpConnection(ConnectionPool connectionPool, Connection connection, Socket socket) throws IOException {
        this.f63748a = connectionPool;
        this.f63749b = connection;
        this.f63750c = socket;
        this.f63751d = Okio.buffer(Okio.source(socket));
        this.f63752e = Okio.buffer(Okio.sink(socket));
    }

    public long bufferSize() {
        return this.f63751d.getBufferField().size();
    }

    public void closeIfOwnedBy(Object obj) throws IOException {
        Internal.instance.closeIfOwnedBy(this.f63749b, obj);
    }

    public void closeOnIdle() throws IOException {
        this.f63754g = 2;
        if (this.f63753f == 0) {
            this.f63753f = 6;
            this.f63749b.getSocket().close();
        }
    }

    public void flush() throws IOException {
        this.f63752e.flush();
    }

    public boolean isClosed() {
        return this.f63753f == 6;
    }

    public boolean isReadable() {
        try {
            int soTimeout = this.f63750c.getSoTimeout();
            try {
                this.f63750c.setSoTimeout(1);
                return !this.f63751d.exhausted();
            } finally {
                this.f63750c.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    /* renamed from: j */
    public final void m52672j(ForwardingTimeout forwardingTimeout) {
        Timeout delegate = forwardingTimeout.getDelegate();
        forwardingTimeout.setDelegate(Timeout.NONE);
        delegate.clearDeadline();
        delegate.clearTimeout();
    }

    public Sink newChunkedSink() {
        if (this.f63753f == 1) {
            this.f63753f = 2;
            return new C13177c();
        }
        throw new IllegalStateException("state: " + this.f63753f);
    }

    public Source newChunkedSource(HttpEngine httpEngine) throws IOException {
        if (this.f63753f == 4) {
            this.f63753f = 5;
            return new C13178d(httpEngine);
        }
        throw new IllegalStateException("state: " + this.f63753f);
    }

    public Sink newFixedLengthSink(long j) {
        if (this.f63753f == 1) {
            this.f63753f = 2;
            return new C13179e(j);
        }
        throw new IllegalStateException("state: " + this.f63753f);
    }

    public Source newFixedLengthSource(long j) throws IOException {
        if (this.f63753f == 4) {
            this.f63753f = 5;
            return new C13180f(j);
        }
        throw new IllegalStateException("state: " + this.f63753f);
    }

    public Source newUnknownLengthSource() throws IOException {
        if (this.f63753f == 4) {
            this.f63753f = 5;
            return new C13181g();
        }
        throw new IllegalStateException("state: " + this.f63753f);
    }

    public void poolOnIdle() {
        this.f63754g = 1;
        if (this.f63753f == 0) {
            this.f63754g = 0;
            Internal.instance.recycle(this.f63748a, this.f63749b);
        }
    }

    public BufferedSink rawSink() {
        return this.f63752e;
    }

    public BufferedSource rawSource() {
        return this.f63751d;
    }

    public void readHeaders(Headers.Builder builder) throws IOException {
        while (true) {
            String readUtf8LineStrict = this.f63751d.readUtf8LineStrict();
            if (readUtf8LineStrict.length() == 0) {
                return;
            } else {
                Internal.instance.addLenient(builder, readUtf8LineStrict);
            }
        }
    }

    public Response.Builder readResponse() throws IOException {
        StatusLine parse;
        Response.Builder message;
        int i = this.f63753f;
        if (i != 1 && i != 3) {
            throw new IllegalStateException("state: " + this.f63753f);
        }
        do {
            try {
                parse = StatusLine.parse(this.f63751d.readUtf8LineStrict());
                message = new Response.Builder().protocol(parse.protocol).code(parse.code).message(parse.message);
                Headers.Builder builder = new Headers.Builder();
                readHeaders(builder);
                builder.add(OkHeaders.SELECTED_PROTOCOL, parse.protocol.toString());
                message.headers(builder.build());
            } catch (EOFException e) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f63749b + " (recycle count=" + Internal.instance.recycleCount(this.f63749b) + MotionUtils.f31762d);
                iOException.initCause(e);
                throw iOException;
            }
        } while (parse.code == 100);
        this.f63753f = 4;
        return message;
    }

    public void setTimeouts(int i, int i2) {
        if (i != 0) {
            this.f63751d.getTimeout().timeout(i, TimeUnit.MILLISECONDS);
        }
        if (i2 != 0) {
            this.f63752e.getTimeout().timeout(i2, TimeUnit.MILLISECONDS);
        }
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.f63753f != 0) {
            throw new IllegalStateException("state: " + this.f63753f);
        }
        this.f63752e.writeUtf8(str).writeUtf8("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            this.f63752e.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8("\r\n");
        }
        this.f63752e.writeUtf8("\r\n");
        this.f63753f = 1;
    }

    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        if (this.f63753f == 1) {
            this.f63753f = 3;
            retryableSink.writeToSocket(this.f63752e);
        } else {
            throw new IllegalStateException("state: " + this.f63753f);
        }
    }
}
