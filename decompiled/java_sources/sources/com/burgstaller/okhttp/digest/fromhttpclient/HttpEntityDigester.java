package com.burgstaller.okhttp.digest.fromhttpclient;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* loaded from: classes3.dex */
public class HttpEntityDigester implements BufferedSink {

    /* renamed from: e */
    public final MessageDigest f15557e;

    /* renamed from: f */
    public boolean f15558f;

    /* renamed from: g */
    public byte[] f15559g;

    /* renamed from: h */
    public Buffer f15560h;

    public HttpEntityDigester(MessageDigest messageDigest) {
        this.f15557e = messageDigest;
        messageDigest.reset();
        this.f15560h = new Buffer();
    }

    @Override // okio.BufferedSink
    /* renamed from: buffer */
    public Buffer getBufferField() {
        return this.f15560h;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() throws IOException {
        if (this.f15558f) {
            return;
        }
        this.f15558f = true;
        this.f15559g = this.f15557e.digest();
        this.f15560h.close();
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() throws IOException {
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink emitCompleteSegments() throws IOException {
        return null;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // okio.BufferedSink
    public Buffer getBuffer() {
        return this.f15560h;
    }

    public byte[] getDigest() {
        return this.f15559g;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return false;
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new C2051a();
    }

    @Override // okio.Sink
    /* renamed from: timeout */
    public Timeout getTimeout() {
        return null;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        return 0;
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        return 0L;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeByte(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeDecimalLong(long j) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeHexadecimalUnsignedLong(long j) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeInt(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeIntLe(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLong(long j) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLongLe(long j) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShort(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShortLe(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, int i, int i2, Charset charset) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8CodePoint(int i) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(ByteString byteString, int i, int i2) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, Charset charset) throws IOException {
        return null;
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str, int i, int i2) throws IOException {
        return null;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
    }

    /* renamed from: com.burgstaller.okhttp.digest.fromhttpclient.HttpEntityDigester$a */
    /* loaded from: classes3.dex */
    public class C2051a extends OutputStream {
        public C2051a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            HttpEntityDigester.this.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            if (HttpEntityDigester.this.f15558f) {
                return;
            }
            HttpEntityDigester.this.flush();
        }

        public String toString() {
            return HttpEntityDigester.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            if (!HttpEntityDigester.this.f15558f) {
                HttpEntityDigester.this.f15560h.writeByte((int) ((byte) i));
                HttpEntityDigester.this.emitCompleteSegments();
                return;
            }
            throw new IOException("closed");
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (!HttpEntityDigester.this.f15558f) {
                HttpEntityDigester.this.f15560h.write(bArr, i, i2);
                HttpEntityDigester.this.emitCompleteSegments();
                return;
            }
            throw new IOException("closed");
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink write(ByteString byteString) throws IOException {
        this.f15557e.update(byteString.toByteArray());
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr) throws IOException {
        this.f15557e.update(bArr);
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr, int i, int i2) throws IOException {
        this.f15557e.update(bArr, i, i2);
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) throws IOException {
        if (this.f15558f) {
            throw new IOException("Stream has been already closed");
        }
        return null;
    }
}
