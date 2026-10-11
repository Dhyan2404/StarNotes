package retrofit2;

import com.sunia.HTREnginev2.jzn;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.http.Streaming;

/* renamed from: retrofit2.a */
/* loaded from: classes16.dex */
public final class C20496a extends Converter.Factory {

    /* renamed from: retrofit2.a$a */
    /* loaded from: classes16.dex */
    public static final class a implements Converter<ResponseBody, ResponseBody> {

        /* renamed from: a */
        public static final a f116234a = new a();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return jzn.m55076a(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* renamed from: retrofit2.a$b */
    /* loaded from: classes16.dex */
    public static final class b implements Converter<RequestBody, RequestBody> {

        /* renamed from: a */
        public static final b f116235a = new b();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RequestBody convert(RequestBody requestBody) throws IOException {
            return requestBody;
        }
    }

    /* renamed from: retrofit2.a$c */
    /* loaded from: classes16.dex */
    public static final class c implements Converter<ResponseBody, ResponseBody> {

        /* renamed from: a */
        public static final c f116236a = new c();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            return responseBody;
        }
    }

    /* renamed from: retrofit2.a$d */
    /* loaded from: classes16.dex */
    public static final class d implements Converter<String, String> {

        /* renamed from: a */
        public static final d f116237a = new d();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String convert(String str) throws IOException {
            return str;
        }
    }

    /* renamed from: retrofit2.a$e */
    /* loaded from: classes16.dex */
    public static final class e implements Converter<Object, String> {

        /* renamed from: a */
        public static final e f116238a = new e();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String convert(Object obj) {
            return obj.toString();
        }
    }

    /* renamed from: retrofit2.a$f */
    /* loaded from: classes16.dex */
    public static final class f implements Converter<ResponseBody, Void> {

        /* renamed from: a */
        public static final f f116239a = new f();

        @Override // retrofit2.Converter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void convert(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(jzn.m55085j(type))) {
            return b.f116235a;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            return jzn.m55090o(annotationArr, Streaming.class) ? c.f116236a : a.f116234a;
        }
        if (type == Void.class) {
            return f.f116239a;
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, String> stringConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == String.class) {
            return d.f116237a;
        }
        return null;
    }
}
