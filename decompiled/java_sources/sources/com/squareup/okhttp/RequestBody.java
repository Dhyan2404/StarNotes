package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* loaded from: classes9.dex */
public abstract class RequestBody {

    /* renamed from: com.squareup.okhttp.RequestBody$a */
    /* loaded from: classes9.dex */
    public static class C13158a extends RequestBody {

        /* renamed from: e */
        public final /* synthetic */ MediaType f63611e;

        /* renamed from: f */
        public final /* synthetic */ ByteString f63612f;

        public C13158a(MediaType mediaType, ByteString byteString) {
            this.f63611e = mediaType;
            this.f63612f = byteString;
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() throws IOException {
            return this.f63612f.size();
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.f63611e;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.write(this.f63612f);
        }
    }

    /* renamed from: com.squareup.okhttp.RequestBody$b */
    /* loaded from: classes9.dex */
    public static class C13159b extends RequestBody {

        /* renamed from: e */
        public final /* synthetic */ MediaType f63613e;

        /* renamed from: f */
        public final /* synthetic */ int f63614f;

        /* renamed from: g */
        public final /* synthetic */ byte[] f63615g;

        /* renamed from: h */
        public final /* synthetic */ int f63616h;

        public C13159b(MediaType mediaType, int i, byte[] bArr, int i2) {
            this.f63613e = mediaType;
            this.f63614f = i;
            this.f63615g = bArr;
            this.f63616h = i2;
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() {
            return this.f63614f;
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.f63613e;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            bufferedSink.write(this.f63615g, this.f63616h, this.f63614f);
        }
    }

    /* renamed from: com.squareup.okhttp.RequestBody$c */
    /* loaded from: classes9.dex */
    public static class C13160c extends RequestBody {

        /* renamed from: e */
        public final /* synthetic */ MediaType f63617e;

        /* renamed from: f */
        public final /* synthetic */ File f63618f;

        public C13160c(MediaType mediaType, File file) {
            this.f63617e = mediaType;
            this.f63618f = file;
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() {
            return this.f63618f.length();
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.f63617e;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            Source source = null;
            try {
                source = Okio.source(this.f63618f);
                bufferedSink.writeAll(source);
            } finally {
                Util.closeQuietly(source);
            }
        }
    }

    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null) {
            Charset charset2 = mediaType.charset();
            if (charset2 == null) {
                mediaType = MediaType.parse(mediaType + "; charset=utf-8");
            } else {
                charset = charset2;
            }
        }
        return create(mediaType, str.getBytes(charset));
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    public abstract MediaType contentType();

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;

    public static RequestBody create(MediaType mediaType, ByteString byteString) {
        return new C13158a(mediaType, byteString);
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i, i2);
            return new C13159b(mediaType, i2, bArr, i);
        }
        throw new NullPointerException("content == null");
    }

    public static RequestBody create(MediaType mediaType, File file) {
        if (file != null) {
            return new C13160c(mediaType, file);
        }
        throw new NullPointerException("content == null");
    }
}
