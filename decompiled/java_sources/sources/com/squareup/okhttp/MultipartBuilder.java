package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

/* loaded from: classes9.dex */
public final class MultipartBuilder {

    /* renamed from: a */
    public final ByteString f63562a;

    /* renamed from: b */
    public MediaType f63563b;

    /* renamed from: c */
    public final List<Headers> f63564c;

    /* renamed from: d */
    public final List<RequestBody> f63565d;
    public static final MediaType MIXED = MediaType.parse("multipart/mixed");
    public static final MediaType ALTERNATIVE = MediaType.parse("multipart/alternative");
    public static final MediaType DIGEST = MediaType.parse("multipart/digest");
    public static final MediaType PARALLEL = MediaType.parse("multipart/parallel");
    public static final MediaType FORM = MediaType.parse("multipart/form-data");

    /* renamed from: e */
    public static final byte[] f63559e = {58, 32};

    /* renamed from: f */
    public static final byte[] f63560f = {13, 10};

    /* renamed from: g */
    public static final byte[] f63561g = {45, 45};

    /* renamed from: com.squareup.okhttp.MultipartBuilder$a */
    /* loaded from: classes9.dex */
    public static final class C13155a extends RequestBody {

        /* renamed from: e */
        public final ByteString f63566e;

        /* renamed from: f */
        public final MediaType f63567f;

        /* renamed from: g */
        public final List<Headers> f63568g;

        /* renamed from: h */
        public final List<RequestBody> f63569h;

        /* renamed from: i */
        public long f63570i = -1;

        public C13155a(MediaType mediaType, ByteString byteString, List<Headers> list, List<RequestBody> list2) {
            if (mediaType == null) {
                throw new NullPointerException("type == null");
            }
            this.f63566e = byteString;
            this.f63567f = MediaType.parse(mediaType + "; boundary=" + byteString.utf8());
            this.f63568g = Util.immutableList(list);
            this.f63569h = Util.immutableList(list2);
        }

        @Override // com.squareup.okhttp.RequestBody
        public long contentLength() throws IOException {
            long j = this.f63570i;
            if (j != -1) {
                return j;
            }
            long m52560f = m52560f(null, true);
            this.f63570i = m52560f;
            return m52560f;
        }

        @Override // com.squareup.okhttp.RequestBody
        public MediaType contentType() {
            return this.f63567f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: f */
        public final long m52560f(BufferedSink bufferedSink, boolean z) throws IOException {
            Buffer buffer;
            if (z) {
                bufferedSink = new Buffer();
                buffer = bufferedSink;
            } else {
                buffer = 0;
            }
            int size = this.f63568g.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                Headers headers = this.f63568g.get(i);
                RequestBody requestBody = this.f63569h.get(i);
                bufferedSink.write(MultipartBuilder.f63561g);
                bufferedSink.write(this.f63566e);
                bufferedSink.write(MultipartBuilder.f63560f);
                if (headers != null) {
                    int size2 = headers.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        bufferedSink.writeUtf8(headers.name(i2)).write(MultipartBuilder.f63559e).writeUtf8(headers.value(i2)).write(MultipartBuilder.f63560f);
                    }
                }
                MediaType contentType = requestBody.contentType();
                if (contentType != null) {
                    bufferedSink.writeUtf8("Content-Type: ").writeUtf8(contentType.toString()).write(MultipartBuilder.f63560f);
                }
                long contentLength = requestBody.contentLength();
                if (contentLength != -1) {
                    bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(contentLength).write(MultipartBuilder.f63560f);
                } else if (z) {
                    buffer.clear();
                    return -1L;
                }
                bufferedSink.write(MultipartBuilder.f63560f);
                if (z) {
                    j += contentLength;
                } else {
                    this.f63569h.get(i).writeTo(bufferedSink);
                }
                bufferedSink.write(MultipartBuilder.f63560f);
            }
            bufferedSink.write(MultipartBuilder.f63561g);
            bufferedSink.write(this.f63566e);
            bufferedSink.write(MultipartBuilder.f63561g);
            bufferedSink.write(MultipartBuilder.f63560f);
            if (!z) {
                return j;
            }
            long size3 = j + buffer.size();
            buffer.clear();
            return size3;
        }

        @Override // com.squareup.okhttp.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            m52560f(bufferedSink, false);
        }
    }

    public MultipartBuilder() {
        this(UUID.randomUUID().toString());
    }

    /* renamed from: d */
    public static StringBuilder m52559d(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n') {
                sb.append("%0A");
            } else if (charAt == '\r') {
                sb.append("%0D");
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }

    public MultipartBuilder addFormDataPart(String str, String str2) {
        return addFormDataPart(str, null, RequestBody.create((MediaType) null, str2));
    }

    public MultipartBuilder addPart(RequestBody requestBody) {
        return addPart(null, requestBody);
    }

    public RequestBody build() {
        if (this.f63564c.isEmpty()) {
            throw new IllegalStateException("Multipart body must have at least one part.");
        }
        return new C13155a(this.f63563b, this.f63562a, this.f63564c, this.f63565d);
    }

    public MultipartBuilder type(MediaType mediaType) {
        if (mediaType == null) {
            throw new NullPointerException("type == null");
        }
        if (mediaType.type().equals("multipart")) {
            this.f63563b = mediaType;
            return this;
        }
        throw new IllegalArgumentException("multipart != " + mediaType);
    }

    public MultipartBuilder(String str) {
        this.f63563b = MIXED;
        this.f63564c = new ArrayList();
        this.f63565d = new ArrayList();
        this.f63562a = ByteString.encodeUtf8(str);
    }

    public MultipartBuilder addFormDataPart(String str, String str2, RequestBody requestBody) {
        if (str != null) {
            StringBuilder sb = new StringBuilder("form-data; name=");
            m52559d(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                m52559d(sb, str2);
            }
            return addPart(Headers.m52518of("Content-Disposition", sb.toString()), requestBody);
        }
        throw new NullPointerException("name == null");
    }

    public MultipartBuilder addPart(Headers headers, RequestBody requestBody) {
        if (requestBody != null) {
            if (headers != null && headers.get("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (headers != null && headers.get("Content-Length") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Length");
            }
            this.f63564c.add(headers);
            this.f63565d.add(requestBody);
            return this;
        }
        throw new NullPointerException("body == null");
    }
}
