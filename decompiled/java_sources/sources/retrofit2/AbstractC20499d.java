package retrofit2;

import com.sunia.HTREnginev2.jzn;
import com.sunia.HTREnginev2.vkl;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Iterator;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import org.apache.poi.smtp.MIMEHeaders;

/* renamed from: retrofit2.d */
/* loaded from: classes16.dex */
public abstract class AbstractC20499d<T> {

    /* renamed from: retrofit2.d$a */
    /* loaded from: classes16.dex */
    public class a extends AbstractC20499d<Iterable<T>> {
        public a() {
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, Iterable<T> iterable) throws IOException {
            if (iterable == null) {
                return;
            }
            Iterator<T> it2 = iterable.iterator();
            while (it2.hasNext()) {
                AbstractC20499d.this.mo72037a(vklVar, it2.next());
            }
        }
    }

    /* renamed from: retrofit2.d$b */
    /* loaded from: classes16.dex */
    public class b extends AbstractC20499d<Object> {
        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, Object obj) throws IOException {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                AbstractC20499d.this.mo72037a(vklVar, Array.get(obj, i));
            }
        }
    }

    /* renamed from: retrofit2.d$c */
    /* loaded from: classes16.dex */
    public static final class c<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final Converter<T, RequestBody> f116256a;

        public c(Converter<T, RequestBody> converter) {
            this.f116256a = converter;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) {
            if (t == null) {
                throw new IllegalArgumentException("Body parameter value must not be null.");
            }
            try {
                vklVar.m57836j(this.f116256a.convert(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* renamed from: retrofit2.d$d */
    /* loaded from: classes16.dex */
    public static final class d<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final String f116257a;

        /* renamed from: b */
        public final Converter<T, String> f116258b;

        /* renamed from: c */
        public final boolean f116259c;

        public d(String str, Converter<T, String> converter, boolean z) {
            this.f116257a = (String) jzn.m55077b(str, "name == null");
            this.f116258b = converter;
            this.f116259c = z;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            vklVar.m57829a(this.f116257a, this.f116258b.convert(t), this.f116259c);
        }
    }

    /* renamed from: retrofit2.d$e */
    /* loaded from: classes16.dex */
    public static final class e<T> extends AbstractC20499d<Map<String, T>> {

        /* renamed from: a */
        public final Converter<T, String> f116260a;

        /* renamed from: b */
        public final boolean f116261b;

        public e(Converter<T, String> converter, boolean z) {
            this.f116260a = converter;
            this.f116261b = z;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Field map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Field map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Field map contained null value for key '" + key + "'.");
                }
                vklVar.m57829a(key, this.f116260a.convert(value), this.f116261b);
            }
        }
    }

    /* renamed from: retrofit2.d$f */
    /* loaded from: classes16.dex */
    public static final class f<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final String f116262a;

        /* renamed from: b */
        public final Converter<T, String> f116263b;

        public f(String str, Converter<T, String> converter) {
            this.f116262a = (String) jzn.m55077b(str, "name == null");
            this.f116263b = converter;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            vklVar.m57830b(this.f116262a, this.f116263b.convert(t));
        }
    }

    /* renamed from: retrofit2.d$g */
    /* loaded from: classes16.dex */
    public static final class g<T> extends AbstractC20499d<Map<String, T>> {

        /* renamed from: a */
        public final Converter<T, String> f116264a;

        public g(Converter<T, String> converter) {
            this.f116264a = converter;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Header map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Header map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Header map contained null value for key '" + key + "'.");
                }
                vklVar.m57830b(key, this.f116264a.convert(value));
            }
        }
    }

    /* renamed from: retrofit2.d$h */
    /* loaded from: classes16.dex */
    public static final class h<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final Headers f116265a;

        /* renamed from: b */
        public final Converter<T, RequestBody> f116266b;

        public h(Headers headers, Converter<T, RequestBody> converter) {
            this.f116265a = headers;
            this.f116266b = converter;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) {
            if (t == null) {
                return;
            }
            try {
                vklVar.m57831c(this.f116265a, this.f116266b.convert(t));
            } catch (IOException e) {
                throw new RuntimeException("Unable to convert " + t + " to RequestBody", e);
            }
        }
    }

    /* renamed from: retrofit2.d$i */
    /* loaded from: classes16.dex */
    public static final class i<T> extends AbstractC20499d<Map<String, T>> {

        /* renamed from: a */
        public final Converter<T, RequestBody> f116267a;

        /* renamed from: b */
        public final String f116268b;

        public i(Converter<T, RequestBody> converter, String str) {
            this.f116267a = converter;
            this.f116268b = str;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Part map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Part map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Part map contained null value for key '" + key + "'.");
                }
                vklVar.m57831c(Headers.m64794of("Content-Disposition", "form-data; name=\"" + key + "\"", MIMEHeaders.KEY_CONTENT_TRANSFER_ENCODING, this.f116268b), this.f116267a.convert(value));
            }
        }
    }

    /* renamed from: retrofit2.d$j */
    /* loaded from: classes16.dex */
    public static final class j<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final String f116269a;

        /* renamed from: b */
        public final Converter<T, String> f116270b;

        /* renamed from: c */
        public final boolean f116271c;

        public j(String str, Converter<T, String> converter, boolean z) {
            this.f116269a = (String) jzn.m55077b(str, "name == null");
            this.f116270b = converter;
            this.f116271c = z;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) throws IOException {
            if (t != null) {
                vklVar.m57833e(this.f116269a, this.f116270b.convert(t), this.f116271c);
                return;
            }
            throw new IllegalArgumentException("Path parameter \"" + this.f116269a + "\" value must not be null.");
        }
    }

    /* renamed from: retrofit2.d$k */
    /* loaded from: classes16.dex */
    public static final class k<T> extends AbstractC20499d<T> {

        /* renamed from: a */
        public final String f116272a;

        /* renamed from: b */
        public final Converter<T, String> f116273b;

        /* renamed from: c */
        public final boolean f116274c;

        public k(String str, Converter<T, String> converter, boolean z) {
            this.f116272a = (String) jzn.m55077b(str, "name == null");
            this.f116273b = converter;
            this.f116274c = z;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, T t) throws IOException {
            if (t == null) {
                return;
            }
            vklVar.m57834f(this.f116272a, this.f116273b.convert(t), this.f116274c);
        }
    }

    /* renamed from: retrofit2.d$l */
    /* loaded from: classes16.dex */
    public static final class l<T> extends AbstractC20499d<Map<String, T>> {

        /* renamed from: a */
        public final Converter<T, String> f116275a;

        /* renamed from: b */
        public final boolean f116276b;

        public l(Converter<T, String> converter, boolean z) {
            this.f116275a = converter;
            this.f116276b = z;
        }

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, Map<String, T> map) throws IOException {
            if (map == null) {
                throw new IllegalArgumentException("Query map was null.");
            }
            for (Map.Entry<String, T> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key == null) {
                    throw new IllegalArgumentException("Query map contained null key.");
                }
                T value = entry.getValue();
                if (value == null) {
                    throw new IllegalArgumentException("Query map contained null value for key '" + key + "'.");
                }
                vklVar.m57834f(key, this.f116275a.convert(value), this.f116276b);
            }
        }
    }

    /* renamed from: retrofit2.d$m */
    /* loaded from: classes16.dex */
    public static final class m extends AbstractC20499d<MultipartBody.Part> {

        /* renamed from: a */
        public static final m f116277a = new m();

        @Override // retrofit2.AbstractC20499d
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void mo72037a(vkl vklVar, MultipartBody.Part part) throws IOException {
            if (part != null) {
                vklVar.m57832d(part);
            }
        }
    }

    /* renamed from: retrofit2.d$n */
    /* loaded from: classes16.dex */
    public static final class n extends AbstractC20499d<Object> {
        @Override // retrofit2.AbstractC20499d
        /* renamed from: a */
        public void mo72037a(vkl vklVar, Object obj) {
            vklVar.m57837k(obj);
        }
    }

    /* renamed from: a */
    public abstract void mo72037a(vkl vklVar, T t) throws IOException;

    /* renamed from: b */
    public final AbstractC20499d<Object> m72038b() {
        return new b();
    }

    /* renamed from: c */
    public final AbstractC20499d<Iterable<T>> m72039c() {
        return new a();
    }
}
