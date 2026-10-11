package com.sunia.HTREnginev2;

import java.io.IOException;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

/* loaded from: classes16.dex */
public final class vkl {

    /* renamed from: k */
    public static final char[] f87617k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: l */
    public static final String f87618l = " \"<>^`{}|\\?#";

    /* renamed from: a */
    public final String f87619a;

    /* renamed from: b */
    public final HttpUrl f87620b;

    /* renamed from: c */
    public String f87621c;

    /* renamed from: d */
    public HttpUrl.Builder f87622d;

    /* renamed from: e */
    public final Request.Builder f87623e;

    /* renamed from: f */
    public MediaType f87624f;

    /* renamed from: g */
    public final boolean f87625g;

    /* renamed from: h */
    public MultipartBody.Builder f87626h;

    /* renamed from: i */
    public FormBody.Builder f87627i;

    /* renamed from: j */
    public RequestBody f87628j;

    /* renamed from: com.sunia.HTREnginev2.vkl$a */
    /* loaded from: classes16.dex */
    public static class C14549a extends RequestBody {

        /* renamed from: e */
        public final RequestBody f87629e;

        /* renamed from: f */
        public final MediaType f87630f;

        public C14549a(RequestBody requestBody, MediaType mediaType) {
            this.f87629e = requestBody;
            this.f87630f = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() throws IOException {
            return this.f87629e.contentLength();
        }

        @Override // okhttp3.RequestBody
        /* renamed from: contentType */
        public MediaType getContentType() {
            return this.f87630f;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.f87629e.writeTo(bufferedSink);
        }
    }

    public vkl(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z, boolean z2, boolean z3) {
        this.f87619a = str;
        this.f87620b = httpUrl;
        this.f87621c = str2;
        Request.Builder builder = new Request.Builder();
        this.f87623e = builder;
        this.f87624f = mediaType;
        this.f87625g = z;
        if (headers != null) {
            builder.headers(headers);
        }
        if (z2) {
            this.f87627i = new FormBody.Builder();
        } else if (z3) {
            MultipartBody.Builder builder2 = new MultipartBody.Builder();
            this.f87626h = builder2;
            builder2.setType(MultipartBody.FORM);
        }
    }

    /* renamed from: h */
    public static String m57827h(String str, boolean z) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt < 32 || codePointAt >= 127 || f87618l.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, i);
                m57828i(buffer, str, i, length, z);
                return buffer.readUtf8();
            }
            i += Character.charCount(codePointAt);
        }
        return str;
    }

    /* renamed from: i */
    public static void m57828i(Buffer buffer, String str, int i, int i2, boolean z) {
        Buffer buffer2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!z || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt < 32 || codePointAt >= 127 || f87618l.indexOf(codePointAt) != -1 || (!z && (codePointAt == 47 || codePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        int readByte = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        char[] cArr = f87617k;
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

    /* renamed from: a */
    public void m57829a(String str, String str2, boolean z) {
        if (z) {
            this.f87627i.addEncoded(str, str2);
        } else {
            this.f87627i.add(str, str2);
        }
    }

    /* renamed from: b */
    public void m57830b(String str, String str2) {
        if (!"Content-Type".equalsIgnoreCase(str)) {
            this.f87623e.addHeader(str, str2);
            return;
        }
        MediaType parse = MediaType.parse(str2);
        if (parse != null) {
            this.f87624f = parse;
            return;
        }
        throw new IllegalArgumentException("Malformed content type: " + str2);
    }

    /* renamed from: c */
    public void m57831c(Headers headers, RequestBody requestBody) {
        this.f87626h.addPart(headers, requestBody);
    }

    /* renamed from: d */
    public void m57832d(MultipartBody.Part part) {
        this.f87626h.addPart(part);
    }

    /* renamed from: e */
    public void m57833e(String str, String str2, boolean z) {
        String str3 = this.f87621c;
        if (str3 == null) {
            throw new AssertionError();
        }
        this.f87621c = str3.replace("{" + str + "}", m57827h(str2, z));
    }

    /* renamed from: f */
    public void m57834f(String str, String str2, boolean z) {
        String str3 = this.f87621c;
        if (str3 != null) {
            HttpUrl.Builder newBuilder = this.f87620b.newBuilder(str3);
            this.f87622d = newBuilder;
            if (newBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f87620b + ", Relative: " + this.f87621c);
            }
            this.f87621c = null;
        }
        if (z) {
            this.f87622d.addEncodedQueryParameter(str, str2);
        } else {
            this.f87622d.addQueryParameter(str, str2);
        }
    }

    /* renamed from: g */
    public Request m57835g() {
        HttpUrl resolve;
        HttpUrl.Builder builder = this.f87622d;
        if (builder != null) {
            resolve = builder.build();
        } else {
            resolve = this.f87620b.resolve(this.f87621c);
            if (resolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f87620b + ", Relative: " + this.f87621c);
            }
        }
        RequestBody requestBody = this.f87628j;
        if (requestBody == null) {
            FormBody.Builder builder2 = this.f87627i;
            if (builder2 != null) {
                requestBody = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f87626h;
                if (builder3 != null) {
                    requestBody = builder3.build();
                } else if (this.f87625g) {
                    requestBody = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f87624f;
        if (mediaType != null) {
            if (requestBody != null) {
                requestBody = new C14549a(requestBody, mediaType);
            } else {
                this.f87623e.addHeader("Content-Type", mediaType.getMediaType());
            }
        }
        return this.f87623e.url(resolve).method(this.f87619a, requestBody).build();
    }

    /* renamed from: j */
    public void m57836j(RequestBody requestBody) {
        this.f87628j = requestBody;
    }

    /* renamed from: k */
    public void m57837k(Object obj) {
        if (obj == null) {
            throw new NullPointerException("@Url parameter is null.");
        }
        this.f87621c = obj.toString();
    }
}
