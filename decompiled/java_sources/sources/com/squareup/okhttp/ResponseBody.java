package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okio.Buffer;
import okio.BufferedSource;

/* loaded from: classes9.dex */
public abstract class ResponseBody implements Closeable {

    /* renamed from: e */
    public Reader f63640e;

    /* renamed from: com.squareup.okhttp.ResponseBody$a */
    /* loaded from: classes9.dex */
    public static class C13162a extends ResponseBody {

        /* renamed from: f */
        public final /* synthetic */ MediaType f63641f;

        /* renamed from: g */
        public final /* synthetic */ long f63642g;

        /* renamed from: h */
        public final /* synthetic */ BufferedSource f63643h;

        public C13162a(MediaType mediaType, long j, BufferedSource bufferedSource) {
            this.f63641f = mediaType;
            this.f63642g = j;
            this.f63643h = bufferedSource;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return this.f63642g;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            return this.f63641f;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return this.f63643h;
        }
    }

    public static ResponseBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        Buffer writeString = new Buffer().writeString(str, charset);
        return create(mediaType, writeString.size(), writeString);
    }

    public final InputStream byteStream() throws IOException {
        return source().inputStream();
    }

    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + contentLength);
        }
        BufferedSource source = source();
        try {
            byte[] readByteArray = source.readByteArray();
            Util.closeQuietly(source);
            if (contentLength == -1 || contentLength == readByteArray.length) {
                return readByteArray;
            }
            throw new IOException("Content-Length and stream length disagree");
        } catch (Throwable th) {
            Util.closeQuietly(source);
            throw th;
        }
    }

    public final Reader charStream() throws IOException {
        Reader reader = this.f63640e;
        if (reader != null) {
            return reader;
        }
        InputStreamReader inputStreamReader = new InputStreamReader(byteStream(), m52600f());
        this.f63640e = inputStreamReader;
        return inputStreamReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        source().close();
    }

    public abstract long contentLength() throws IOException;

    public abstract MediaType contentType();

    /* renamed from: f */
    public final Charset m52600f() {
        MediaType contentType = contentType();
        return contentType != null ? contentType.charset(Util.UTF_8) : Util.UTF_8;
    }

    public abstract BufferedSource source() throws IOException;

    public final String string() throws IOException {
        return new String(bytes(), m52600f().name());
    }

    public static ResponseBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr.length, new Buffer().write(bArr));
    }

    public static ResponseBody create(MediaType mediaType, long j, BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            return new C13162a(mediaType, j, bufferedSource);
        }
        throw new NullPointerException("source == null");
    }
}
