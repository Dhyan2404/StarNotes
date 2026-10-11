package retrofit2;

import com.sunia.HTREnginev2.cfk;
import com.sunia.HTREnginev2.jzn;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.C20496a;
import retrofit2.C20501f;
import retrofit2.CallAdapter;
import retrofit2.Converter;

/* loaded from: classes16.dex */
public final class Retrofit {

    /* renamed from: a */
    public final Map<Method, C20501f> f116217a = new LinkedHashMap();

    /* renamed from: b */
    public final Call.Factory f116218b;

    /* renamed from: c */
    public final HttpUrl f116219c;

    /* renamed from: d */
    public final List<Converter.Factory> f116220d;

    /* renamed from: e */
    public final List<CallAdapter.Factory> f116221e;

    /* renamed from: f */
    public final Executor f116222f;

    /* renamed from: g */
    public final boolean f116223g;

    /* renamed from: retrofit2.Retrofit$a */
    /* loaded from: classes16.dex */
    public class C20495a implements InvocationHandler {

        /* renamed from: e */
        public final C20500e f116231e = C20500e.m72047d();

        /* renamed from: f */
        public final /* synthetic */ Class f116232f;

        public C20495a(Class cls) {
            this.f116232f = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object... objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.f116231e.mo72051f(method)) {
                return this.f116231e.mo72050e(method, this.f116232f, obj, objArr);
            }
            C20501f m72028b = Retrofit.this.m72028b(method);
            return m72028b.f116286b.adapt(new cfk(m72028b, objArr));
        }
    }

    public Retrofit(Call.Factory factory, HttpUrl httpUrl, List<Converter.Factory> list, List<CallAdapter.Factory> list2, Executor executor, boolean z) {
        this.f116218b = factory;
        this.f116219c = httpUrl;
        this.f116220d = Collections.unmodifiableList(list);
        this.f116221e = Collections.unmodifiableList(list2);
        this.f116222f = executor;
        this.f116223g = z;
    }

    /* renamed from: a */
    public final void m72027a(Class<?> cls) {
        C20500e m72047d = C20500e.m72047d();
        for (Method method : cls.getDeclaredMethods()) {
            if (!m72047d.mo72051f(method)) {
                m72028b(method);
            }
        }
    }

    /* renamed from: b */
    public C20501f m72028b(Method method) {
        C20501f c20501f;
        synchronized (this.f116217a) {
            c20501f = this.f116217a.get(method);
            if (c20501f == null) {
                c20501f = new C20501f.a(this, method).m72056a();
                this.f116217a.put(method, c20501f);
            }
        }
        return c20501f;
    }

    public HttpUrl baseUrl() {
        return this.f116219c;
    }

    public CallAdapter<?> callAdapter(Type type, Annotation[] annotationArr) {
        return nextCallAdapter(null, type, annotationArr);
    }

    public List<CallAdapter.Factory> callAdapterFactories() {
        return this.f116221e;
    }

    public Call.Factory callFactory() {
        return this.f116218b;
    }

    public Executor callbackExecutor() {
        return this.f116222f;
    }

    public List<Converter.Factory> converterFactories() {
        return this.f116220d;
    }

    public <T> T create(Class<T> cls) {
        jzn.m55094s(cls);
        if (this.f116223g) {
            m72027a(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C20495a(cls));
    }

    public CallAdapter<?> nextCallAdapter(CallAdapter.Factory factory, Type type, Annotation[] annotationArr) {
        jzn.m55077b(type, "returnType == null");
        jzn.m55077b(annotationArr, "annotations == null");
        int indexOf = this.f116221e.indexOf(factory) + 1;
        int size = this.f116221e.size();
        for (int i = indexOf; i < size; i++) {
            CallAdapter<?> callAdapter = this.f116221e.get(i).get(type, annotationArr, this);
            if (callAdapter != null) {
                return callAdapter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f116221e.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f116221e.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f116221e.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> Converter<T, RequestBody> nextRequestBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        jzn.m55077b(type, "type == null");
        jzn.m55077b(annotationArr, "parameterAnnotations == null");
        jzn.m55077b(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f116220d.indexOf(factory) + 1;
        int size = this.f116220d.size();
        for (int i = indexOf; i < size; i++) {
            Converter<T, RequestBody> converter = (Converter<T, RequestBody>) this.f116220d.get(i).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f116220d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f116220d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f116220d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> Converter<ResponseBody, T> nextResponseBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr) {
        jzn.m55077b(type, "type == null");
        jzn.m55077b(annotationArr, "annotations == null");
        int indexOf = this.f116220d.indexOf(factory) + 1;
        int size = this.f116220d.size();
        for (int i = indexOf; i < size; i++) {
            Converter<ResponseBody, T> converter = (Converter<ResponseBody, T>) this.f116220d.get(i).responseBodyConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        if (factory != null) {
            sb.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                sb.append("\n   * ");
                sb.append(this.f116220d.get(i2).getClass().getName());
            }
            sb.append('\n');
        }
        sb.append("  Tried:");
        int size2 = this.f116220d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f116220d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> Converter<T, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return nextRequestBodyConverter(null, type, annotationArr, annotationArr2);
    }

    public <T> Converter<ResponseBody, T> responseBodyConverter(Type type, Annotation[] annotationArr) {
        return nextResponseBodyConverter(null, type, annotationArr);
    }

    public <T> Converter<T, String> stringConverter(Type type, Annotation[] annotationArr) {
        jzn.m55077b(type, "type == null");
        jzn.m55077b(annotationArr, "annotations == null");
        int size = this.f116220d.size();
        for (int i = 0; i < size; i++) {
            Converter<T, String> converter = (Converter<T, String>) this.f116220d.get(i).stringConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        return C20496a.e.f116238a;
    }

    /* loaded from: classes16.dex */
    public static final class Builder {

        /* renamed from: a */
        public C20500e f116224a;

        /* renamed from: b */
        public Call.Factory f116225b;

        /* renamed from: c */
        public HttpUrl f116226c;

        /* renamed from: d */
        public List<Converter.Factory> f116227d;

        /* renamed from: e */
        public List<CallAdapter.Factory> f116228e;

        /* renamed from: f */
        public Executor f116229f;

        /* renamed from: g */
        public boolean f116230g;

        public Builder(C20500e c20500e) {
            this.f116227d = new ArrayList();
            this.f116228e = new ArrayList();
            this.f116224a = c20500e;
            this.f116227d.add(new C20496a());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addCallAdapterFactory(CallAdapter.Factory factory) {
            this.f116228e.add(jzn.m55077b(factory, "factory == null"));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addConverterFactory(Converter.Factory factory) {
            this.f116227d.add(jzn.m55077b(factory, "factory == null"));
            return this;
        }

        public Builder baseUrl(String str) {
            jzn.m55077b(str, "baseUrl == null");
            HttpUrl parse = HttpUrl.parse(str);
            if (parse != null) {
                return baseUrl(parse);
            }
            throw new IllegalArgumentException("Illegal URL: " + str);
        }

        public Retrofit build() {
            if (this.f116226c == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory factory = this.f116225b;
            if (factory == null) {
                factory = new OkHttpClient();
            }
            Call.Factory factory2 = factory;
            Executor executor = this.f116229f;
            if (executor == null) {
                executor = this.f116224a.mo72049b();
            }
            Executor executor2 = executor;
            ArrayList arrayList = new ArrayList(this.f116228e);
            arrayList.add(this.f116224a.mo72048a(executor2));
            return new Retrofit(factory2, this.f116226c, new ArrayList(this.f116227d), arrayList, executor2, this.f116230g);
        }

        public Builder callFactory(Call.Factory factory) {
            this.f116225b = (Call.Factory) jzn.m55077b(factory, "factory == null");
            return this;
        }

        public Builder callbackExecutor(Executor executor) {
            this.f116229f = (Executor) jzn.m55077b(executor, "executor == null");
            return this;
        }

        public Builder client(OkHttpClient okHttpClient) {
            return callFactory((Call.Factory) jzn.m55077b(okHttpClient, "client == null"));
        }

        public Builder validateEagerly(boolean z) {
            this.f116230g = z;
            return this;
        }

        public Builder baseUrl(HttpUrl httpUrl) {
            jzn.m55077b(httpUrl, "baseUrl == null");
            if ("".equals(httpUrl.pathSegments().get(r0.size() - 1))) {
                this.f116226c = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public Builder() {
            this(C20500e.m72047d());
        }
    }
}
