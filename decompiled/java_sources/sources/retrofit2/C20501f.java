package retrofit2;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.jzn;
import com.sunia.HTREnginev2.vkl;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import org.apache.poi.smtp.MIMEHeaders;
import retrofit2.AbstractC20499d;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.Url;

/* renamed from: retrofit2.f */
/* loaded from: classes16.dex */
public final class C20501f<T> {

    /* renamed from: a */
    public final Call.Factory f116285a;

    /* renamed from: b */
    public final CallAdapter<?> f116286b;

    /* renamed from: c */
    public final HttpUrl f116287c;

    /* renamed from: d */
    public final Converter<ResponseBody, T> f116288d;

    /* renamed from: e */
    public final String f116289e;

    /* renamed from: f */
    public final String f116290f;

    /* renamed from: g */
    public final Headers f116291g;

    /* renamed from: h */
    public final MediaType f116292h;

    /* renamed from: i */
    public final boolean f116293i;

    /* renamed from: j */
    public final boolean f116294j;

    /* renamed from: k */
    public final boolean f116295k;

    /* renamed from: l */
    public final AbstractC20499d<?>[] f116296l;

    /* renamed from: n */
    public static final Pattern f116283n = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

    /* renamed from: m */
    public static final String f116282m = "[a-zA-Z][a-zA-Z0-9_-]*";

    /* renamed from: o */
    public static final Pattern f116284o = Pattern.compile(f116282m);

    /* renamed from: retrofit2.f$a */
    /* loaded from: classes16.dex */
    public static final class a<T> {

        /* renamed from: a */
        public final Retrofit f116297a;

        /* renamed from: b */
        public final Method f116298b;

        /* renamed from: c */
        public final Annotation[] f116299c;

        /* renamed from: d */
        public final Annotation[][] f116300d;

        /* renamed from: e */
        public final Type[] f116301e;

        /* renamed from: f */
        public Type f116302f;

        /* renamed from: g */
        public boolean f116303g;

        /* renamed from: h */
        public boolean f116304h;

        /* renamed from: i */
        public boolean f116305i;

        /* renamed from: j */
        public boolean f116306j;

        /* renamed from: k */
        public boolean f116307k;

        /* renamed from: l */
        public boolean f116308l;

        /* renamed from: m */
        public String f116309m;

        /* renamed from: n */
        public boolean f116310n;

        /* renamed from: o */
        public boolean f116311o;

        /* renamed from: p */
        public boolean f116312p;

        /* renamed from: q */
        public String f116313q;

        /* renamed from: r */
        public Headers f116314r;

        /* renamed from: s */
        public MediaType f116315s;

        /* renamed from: t */
        public Set<String> f116316t;

        /* renamed from: u */
        public AbstractC20499d<?>[] f116317u;

        /* renamed from: v */
        public Converter<ResponseBody, T> f116318v;

        /* renamed from: w */
        public CallAdapter<?> f116319w;

        public a(Retrofit retrofit, Method method) {
            this.f116297a = retrofit;
            this.f116298b = method;
            this.f116299c = method.getAnnotations();
            this.f116301e = method.getGenericParameterTypes();
            this.f116300d = method.getParameterAnnotations();
        }

        /* renamed from: a */
        public C20501f m72056a() {
            CallAdapter<?> m72057b = m72057b();
            this.f116319w = m72057b;
            Type responseType = m72057b.responseType();
            this.f116302f = responseType;
            if (responseType == Response.class || responseType == okhttp3.Response.class) {
                throw m72059d(CloudStorageConstants.SINGLE_QUOTES + jzn.m55085j(this.f116302f).getName() + "' is not a valid response body type. Did you mean ResponseBody?", new Object[0]);
            }
            this.f116318v = m72058c();
            for (Annotation annotation : this.f116299c) {
                m72065j(annotation);
            }
            if (this.f116309m == null) {
                throw m72059d("HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.f116310n) {
                if (this.f116312p) {
                    throw m72059d("Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.f116311o) {
                    throw m72059d("FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f116300d.length;
            this.f116317u = new AbstractC20499d[length];
            for (int i = 0; i < length; i++) {
                Type type = this.f116301e[i];
                if (jzn.m55087l(type)) {
                    throw m72061f(i, "Parameter type must not include a type variable or wildcard: %s", type);
                }
                Annotation[] annotationArr = this.f116300d[i];
                if (annotationArr == null) {
                    throw m72061f(i, "No Retrofit annotation found.", new Object[0]);
                }
                this.f116317u[i] = m72066k(i, type, annotationArr);
            }
            if (this.f116313q == null && !this.f116308l) {
                throw m72059d("Missing either @%s URL or @Url parameter.", this.f116309m);
            }
            boolean z = this.f116311o;
            if (!z && !this.f116312p && !this.f116310n && this.f116305i) {
                throw m72059d("Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (z && !this.f116303g) {
                throw m72059d("Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.f116312p || this.f116304h) {
                return new C20501f(this);
            }
            throw m72059d("Multipart method must contain at least one @Part.", new Object[0]);
        }

        /* renamed from: b */
        public final CallAdapter<?> m72057b() {
            Type genericReturnType = this.f116298b.getGenericReturnType();
            if (jzn.m55087l(genericReturnType)) {
                throw m72059d("Method return type must not include a type variable or wildcard: %s", genericReturnType);
            }
            if (genericReturnType == Void.TYPE) {
                throw m72059d("Service methods cannot return void.", new Object[0]);
            }
            try {
                return this.f116297a.callAdapter(genericReturnType, this.f116298b.getAnnotations());
            } catch (RuntimeException e) {
                throw this.m72060e(e, "Unable to create call adapter for %s", genericReturnType);
            }
        }

        /* renamed from: c */
        public final Converter<ResponseBody, T> m72058c() {
            try {
                return this.f116297a.responseBodyConverter(this.f116302f, this.f116298b.getAnnotations());
            } catch (RuntimeException e) {
                throw this.m72060e(e, "Unable to create converter for %s", this.f116302f);
            }
        }

        /* renamed from: d */
        public final RuntimeException m72059d(String str, Object... objArr) {
            return m72060e(null, str, objArr);
        }

        /* renamed from: e */
        public final RuntimeException m72060e(Throwable th, String str, Object... objArr) {
            return new IllegalArgumentException(String.format(str, objArr) + "\n    for method " + this.f116298b.getDeclaringClass().getSimpleName() + "." + this.f116298b.getName(), th);
        }

        /* renamed from: f */
        public final RuntimeException m72061f(int i, String str, Object... objArr) {
            return m72059d(str + " (parameter #" + (i + 1) + MotionUtils.f31762d, objArr);
        }

        /* renamed from: g */
        public final RuntimeException m72062g(Throwable th, int i, String str, Object... objArr) {
            return m72060e(th, str + " (parameter #" + (i + 1) + MotionUtils.f31762d, objArr);
        }

        /* renamed from: h */
        public final Headers m72063h(String[] strArr) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int indexOf = str.indexOf(58);
                if (indexOf == -1 || indexOf == 0 || indexOf == str.length() - 1) {
                    throw m72059d("@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String substring = str.substring(0, indexOf);
                String trim = str.substring(indexOf + 1).trim();
                if ("Content-Type".equalsIgnoreCase(substring)) {
                    MediaType parse = MediaType.parse(trim);
                    if (parse == null) {
                        throw m72059d("Malformed content type: %s", trim);
                    }
                    this.f116315s = parse;
                } else {
                    builder.add(substring, trim);
                }
            }
            return builder.build();
        }

        /* renamed from: i */
        public final void m72064i(String str, String str2, boolean z) {
            String str3 = this.f116309m;
            if (str3 != null) {
                throw m72059d("Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f116309m = str;
            this.f116310n = z;
            if (str2.isEmpty()) {
                return;
            }
            int indexOf = str2.indexOf(63);
            if (indexOf != -1 && indexOf < str2.length() - 1) {
                String substring = str2.substring(indexOf + 1);
                if (C20501f.f116283n.matcher(substring).find()) {
                    throw m72059d("URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                }
            }
            this.f116313q = str2;
            this.f116316t = C20501f.m72053b(str2);
        }

        /* renamed from: j */
        public final void m72065j(Annotation annotation) {
            if (annotation instanceof DELETE) {
                m72064i("DELETE", ((DELETE) annotation).value(), false);
                return;
            }
            if (annotation instanceof GET) {
                m72064i("GET", ((GET) annotation).value(), false);
                return;
            }
            if (annotation instanceof HEAD) {
                m72064i("HEAD", ((HEAD) annotation).value(), false);
                if (!Void.class.equals(this.f116302f)) {
                    throw m72059d("HEAD method must use Void as response type.", new Object[0]);
                }
                return;
            }
            if (annotation instanceof PATCH) {
                m72064i("PATCH", ((PATCH) annotation).value(), true);
                return;
            }
            if (annotation instanceof POST) {
                m72064i("POST", ((POST) annotation).value(), true);
                return;
            }
            if (annotation instanceof PUT) {
                m72064i("PUT", ((PUT) annotation).value(), true);
                return;
            }
            if (annotation instanceof OPTIONS) {
                m72064i("OPTIONS", ((OPTIONS) annotation).value(), false);
                return;
            }
            if (annotation instanceof HTTP) {
                HTTP http = (HTTP) annotation;
                m72064i(http.method(), http.path(), http.hasBody());
                return;
            }
            if (annotation instanceof retrofit2.http.Headers) {
                String[] value = ((retrofit2.http.Headers) annotation).value();
                if (value.length == 0) {
                    throw m72059d("@Headers annotation is empty.", new Object[0]);
                }
                this.f116314r = m72063h(value);
                return;
            }
            if (annotation instanceof Multipart) {
                if (this.f116311o) {
                    throw m72059d("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f116312p = true;
            } else if (annotation instanceof FormUrlEncoded) {
                if (this.f116312p) {
                    throw m72059d("Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f116311o = true;
            }
        }

        /* renamed from: k */
        public final AbstractC20499d<?> m72066k(int i, Type type, Annotation[] annotationArr) {
            AbstractC20499d<?> abstractC20499d = null;
            for (Annotation annotation : annotationArr) {
                AbstractC20499d<?> m72067l = m72067l(i, type, annotationArr, annotation);
                if (m72067l != null) {
                    if (abstractC20499d != null) {
                        throw m72061f(i, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                    }
                    abstractC20499d = m72067l;
                }
            }
            if (abstractC20499d != null) {
                return abstractC20499d;
            }
            throw m72061f(i, "No Retrofit annotation found.", new Object[0]);
        }

        /* renamed from: l */
        public final AbstractC20499d<?> m72067l(int i, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof Url) {
                if (this.f116308l) {
                    throw m72061f(i, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f116306j) {
                    throw m72061f(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f116307k) {
                    throw m72061f(i, "A @Url parameter must not come after a @Query", new Object[0]);
                }
                if (this.f116313q != null) {
                    throw m72061f(i, "@Url cannot be used with @%s URL", this.f116309m);
                }
                this.f116308l = true;
                if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new AbstractC20499d.n();
                }
                throw m72061f(i, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof Path) {
                if (this.f116307k) {
                    throw m72061f(i, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f116308l) {
                    throw m72061f(i, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f116313q == null) {
                    throw m72061f(i, "@Path can only be used with relative url on @%s", this.f116309m);
                }
                this.f116306j = true;
                Path path = (Path) annotation;
                String value = path.value();
                m72068m(i, value);
                return new AbstractC20499d.j(value, this.f116297a.stringConverter(type, annotationArr), path.encoded());
            }
            if (annotation instanceof Query) {
                Query query = (Query) annotation;
                String value2 = query.value();
                boolean encoded = query.encoded();
                Class<?> m55085j = jzn.m55085j(type);
                this.f116307k = true;
                if (!Iterable.class.isAssignableFrom(m55085j)) {
                    if (!m55085j.isArray()) {
                        return new AbstractC20499d.k(value2, this.f116297a.stringConverter(type, annotationArr), encoded);
                    }
                    return new AbstractC20499d.k(value2, this.f116297a.stringConverter(C20501f.m72052a(m55085j.getComponentType()), annotationArr), encoded).m72038b();
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC20499d.k(value2, this.f116297a.stringConverter(jzn.m55084i(0, (ParameterizedType) type), annotationArr), encoded).m72039c();
                }
                throw m72061f(i, m55085j.getSimpleName() + " must include generic type (e.g., " + m55085j.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof QueryMap) {
                Class<?> m55085j2 = jzn.m55085j(type);
                if (!Map.class.isAssignableFrom(m55085j2)) {
                    throw m72061f(i, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type m55086k = jzn.m55086k(type, m55085j2, Map.class);
                if (!(m55086k instanceof ParameterizedType)) {
                    throw m72061f(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) m55086k;
                Type m55084i = jzn.m55084i(0, parameterizedType);
                if (String.class == m55084i) {
                    return new AbstractC20499d.l(this.f116297a.stringConverter(jzn.m55084i(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
                }
                throw m72061f(i, "@QueryMap keys must be of type String: " + m55084i, new Object[0]);
            }
            if (annotation instanceof Header) {
                String value3 = ((Header) annotation).value();
                Class<?> m55085j3 = jzn.m55085j(type);
                if (!Iterable.class.isAssignableFrom(m55085j3)) {
                    if (!m55085j3.isArray()) {
                        return new AbstractC20499d.f(value3, this.f116297a.stringConverter(type, annotationArr));
                    }
                    return new AbstractC20499d.f(value3, this.f116297a.stringConverter(C20501f.m72052a(m55085j3.getComponentType()), annotationArr)).m72038b();
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC20499d.f(value3, this.f116297a.stringConverter(jzn.m55084i(0, (ParameterizedType) type), annotationArr)).m72039c();
                }
                throw m72061f(i, m55085j3.getSimpleName() + " must include generic type (e.g., " + m55085j3.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof HeaderMap) {
                Class<?> m55085j4 = jzn.m55085j(type);
                if (!Map.class.isAssignableFrom(m55085j4)) {
                    throw m72061f(i, "@HeaderMap parameter type must be Map.", new Object[0]);
                }
                Type m55086k2 = jzn.m55086k(type, m55085j4, Map.class);
                if (!(m55086k2 instanceof ParameterizedType)) {
                    throw m72061f(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) m55086k2;
                Type m55084i2 = jzn.m55084i(0, parameterizedType2);
                if (String.class == m55084i2) {
                    return new AbstractC20499d.g(this.f116297a.stringConverter(jzn.m55084i(1, parameterizedType2), annotationArr));
                }
                throw m72061f(i, "@HeaderMap keys must be of type String: " + m55084i2, new Object[0]);
            }
            if (annotation instanceof Field) {
                if (!this.f116311o) {
                    throw m72061f(i, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                Field field = (Field) annotation;
                String value4 = field.value();
                boolean encoded2 = field.encoded();
                this.f116303g = true;
                Class<?> m55085j5 = jzn.m55085j(type);
                if (!Iterable.class.isAssignableFrom(m55085j5)) {
                    if (!m55085j5.isArray()) {
                        return new AbstractC20499d.d(value4, this.f116297a.stringConverter(type, annotationArr), encoded2);
                    }
                    return new AbstractC20499d.d(value4, this.f116297a.stringConverter(C20501f.m72052a(m55085j5.getComponentType()), annotationArr), encoded2).m72038b();
                }
                if (type instanceof ParameterizedType) {
                    return new AbstractC20499d.d(value4, this.f116297a.stringConverter(jzn.m55084i(0, (ParameterizedType) type), annotationArr), encoded2).m72039c();
                }
                throw m72061f(i, m55085j5.getSimpleName() + " must include generic type (e.g., " + m55085j5.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof FieldMap) {
                if (!this.f116311o) {
                    throw m72061f(i, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class<?> m55085j6 = jzn.m55085j(type);
                if (!Map.class.isAssignableFrom(m55085j6)) {
                    throw m72061f(i, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type m55086k3 = jzn.m55086k(type, m55085j6, Map.class);
                if (!(m55086k3 instanceof ParameterizedType)) {
                    throw m72061f(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) m55086k3;
                Type m55084i3 = jzn.m55084i(0, parameterizedType3);
                if (String.class == m55084i3) {
                    Converter<T, String> stringConverter = this.f116297a.stringConverter(jzn.m55084i(1, parameterizedType3), annotationArr);
                    this.f116303g = true;
                    return new AbstractC20499d.e(stringConverter, ((FieldMap) annotation).encoded());
                }
                throw m72061f(i, "@FieldMap keys must be of type String: " + m55084i3, new Object[0]);
            }
            if (!(annotation instanceof Part)) {
                if (!(annotation instanceof PartMap)) {
                    if (!(annotation instanceof Body)) {
                        return null;
                    }
                    if (this.f116311o || this.f116312p) {
                        throw m72061f(i, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                    }
                    if (this.f116305i) {
                        throw m72061f(i, "Multiple @Body method annotations found.", new Object[0]);
                    }
                    try {
                        Converter<T, RequestBody> requestBodyConverter = this.f116297a.requestBodyConverter(type, annotationArr, this.f116299c);
                        this.f116305i = true;
                        return new AbstractC20499d.c(requestBodyConverter);
                    } catch (RuntimeException e) {
                        throw m72062g(e, i, "Unable to create @Body converter for %s", type);
                    }
                }
                if (!this.f116312p) {
                    throw m72061f(i, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f116304h = true;
                Class<?> m55085j7 = jzn.m55085j(type);
                if (!Map.class.isAssignableFrom(m55085j7)) {
                    throw m72061f(i, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type m55086k4 = jzn.m55086k(type, m55085j7, Map.class);
                if (!(m55086k4 instanceof ParameterizedType)) {
                    throw m72061f(i, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) m55086k4;
                Type m55084i4 = jzn.m55084i(0, parameterizedType4);
                if (String.class == m55084i4) {
                    Type m55084i5 = jzn.m55084i(1, parameterizedType4);
                    if (MultipartBody.Part.class.isAssignableFrom(jzn.m55085j(m55084i5))) {
                        throw m72061f(i, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                    }
                    return new AbstractC20499d.i(this.f116297a.requestBodyConverter(m55084i5, annotationArr, this.f116299c), ((PartMap) annotation).encoding());
                }
                throw m72061f(i, "@PartMap keys must be of type String: " + m55084i4, new Object[0]);
            }
            if (!this.f116312p) {
                throw m72061f(i, "@Part parameters can only be used with multipart encoding.", new Object[0]);
            }
            Part part = (Part) annotation;
            this.f116304h = true;
            String value5 = part.value();
            Class<?> m55085j8 = jzn.m55085j(type);
            if (value5.isEmpty()) {
                if (!Iterable.class.isAssignableFrom(m55085j8)) {
                    if (m55085j8.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(m55085j8.getComponentType())) {
                            return AbstractC20499d.m.f116277a.m72038b();
                        }
                        throw m72061f(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (MultipartBody.Part.class.isAssignableFrom(m55085j8)) {
                        return AbstractC20499d.m.f116277a;
                    }
                    throw m72061f(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                if (type instanceof ParameterizedType) {
                    if (MultipartBody.Part.class.isAssignableFrom(jzn.m55085j(jzn.m55084i(0, (ParameterizedType) type)))) {
                        return AbstractC20499d.m.f116277a.m72039c();
                    }
                    throw m72061f(i, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                }
                throw m72061f(i, m55085j8.getSimpleName() + " must include generic type (e.g., " + m55085j8.getSimpleName() + "<String>)", new Object[0]);
            }
            Headers m64794of = Headers.m64794of("Content-Disposition", "form-data; name=\"" + value5 + "\"", MIMEHeaders.KEY_CONTENT_TRANSFER_ENCODING, part.encoding());
            if (!Iterable.class.isAssignableFrom(m55085j8)) {
                if (!m55085j8.isArray()) {
                    if (MultipartBody.Part.class.isAssignableFrom(m55085j8)) {
                        throw m72061f(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new AbstractC20499d.h(m64794of, this.f116297a.requestBodyConverter(type, annotationArr, this.f116299c));
                }
                Class<?> m72052a = C20501f.m72052a(m55085j8.getComponentType());
                if (MultipartBody.Part.class.isAssignableFrom(m72052a)) {
                    throw m72061f(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new AbstractC20499d.h(m64794of, this.f116297a.requestBodyConverter(m72052a, annotationArr, this.f116299c)).m72038b();
            }
            if (type instanceof ParameterizedType) {
                Type m55084i6 = jzn.m55084i(0, (ParameterizedType) type);
                if (MultipartBody.Part.class.isAssignableFrom(jzn.m55085j(m55084i6))) {
                    throw m72061f(i, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                }
                return new AbstractC20499d.h(m64794of, this.f116297a.requestBodyConverter(m55084i6, annotationArr, this.f116299c)).m72039c();
            }
            throw m72061f(i, m55085j8.getSimpleName() + " must include generic type (e.g., " + m55085j8.getSimpleName() + "<String>)", new Object[0]);
        }

        /* renamed from: m */
        public final void m72068m(int i, String str) {
            if (!C20501f.f116284o.matcher(str).matches()) {
                throw m72061f(i, "@Path parameter name must match %s. Found: %s", C20501f.f116283n.pattern(), str);
            }
            if (!this.f116316t.contains(str)) {
                throw m72061f(i, "URL \"%s\" does not contain \"{%s}\".", this.f116313q, str);
            }
        }
    }

    public C20501f(a<T> aVar) {
        this.f116285a = aVar.f116297a.callFactory();
        this.f116286b = aVar.f116319w;
        this.f116287c = aVar.f116297a.baseUrl();
        this.f116288d = aVar.f116318v;
        this.f116289e = aVar.f116309m;
        this.f116290f = aVar.f116313q;
        this.f116291g = aVar.f116314r;
        this.f116292h = aVar.f116315s;
        this.f116293i = aVar.f116310n;
        this.f116294j = aVar.f116311o;
        this.f116295k = aVar.f116312p;
        this.f116296l = aVar.f116317u;
    }

    /* renamed from: a */
    public static Class<?> m72052a(Class<?> cls) {
        return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
    }

    /* renamed from: b */
    public static Set<String> m72053b(String str) {
        Matcher matcher = f116283n.matcher(str);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (matcher.find()) {
            linkedHashSet.add(matcher.group(1));
        }
        return linkedHashSet;
    }

    /* renamed from: c */
    public Request m72054c(Object... objArr) throws IOException {
        vkl vklVar = new vkl(this.f116289e, this.f116287c, this.f116290f, this.f116291g, this.f116292h, this.f116293i, this.f116294j, this.f116295k);
        AbstractC20499d<?>[] abstractC20499dArr = this.f116296l;
        int length = objArr != null ? objArr.length : 0;
        if (length == abstractC20499dArr.length) {
            for (int i = 0; i < length; i++) {
                abstractC20499dArr[i].mo72037a(vklVar, objArr[i]);
            }
            return vklVar.m57835g();
        }
        throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + abstractC20499dArr.length + MotionUtils.f31762d);
    }

    /* renamed from: d */
    public T m72055d(ResponseBody responseBody) throws IOException {
        return this.f116288d.convert(responseBody);
    }
}
