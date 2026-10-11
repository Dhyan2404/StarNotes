package javax.imageio.spi;

import com.sunia.HTREnginev2.a5n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;

/* loaded from: classes5.dex */
public class ServiceRegistry {

    /* renamed from: a */
    public Map<Class<?>, a5n> f97958a = new HashMap();

    /* loaded from: classes5.dex */
    public interface Filter {
        boolean filter(Object obj);
    }

    public ServiceRegistry(Iterator<Class<?>> it2) {
        if (it2 == null) {
            throw new IllegalArgumentException("categories == null!");
        }
        while (it2.hasNext()) {
            Class<?> next = it2.next();
            m61489a(next);
            this.f97958a.put(next, new a5n(this, next));
        }
    }

    /* renamed from: a */
    public static void m61489a(Class<?> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("class must not be null");
        }
        if (cls == ImageInputStreamSpi.class || cls == ImageOutputStreamSpi.class || cls == ImageReaderSpi.class || cls == ImageTranscoderSpi.class || cls == ImageWriterSpi.class) {
            return;
        }
        throw new IllegalArgumentException(cls.getName() + " is not an ImageIO SPI class");
    }

    public static <T> Iterator<T> lookupProviders(Class<T> cls, ClassLoader classLoader) {
        if (cls != null) {
            m61489a(cls);
            return ServiceLoader.load(cls, classLoader).iterator();
        }
        throw new IllegalArgumentException("providerClass == null!");
    }

    /* renamed from: b */
    public final Iterator<a5n> m61490b(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (Class<?> cls : this.f97958a.keySet()) {
            if (cls.isAssignableFrom(obj.getClass())) {
                arrayList.add(this.f97958a.get(cls));
            }
        }
        return arrayList.iterator();
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("provider == null!");
        }
        Iterator<a5n> m61490b = m61490b(obj);
        while (m61490b.hasNext()) {
            if (m61490b.next().m52965c(obj)) {
                return true;
            }
        }
        return false;
    }

    public void deregisterAll(Class<?> cls) {
        a5n a5nVar = this.f97958a.get(cls);
        if (a5nVar != null) {
            a5nVar.m52964b();
            return;
        }
        throw new IllegalArgumentException("category unknown!");
    }

    public <T> boolean deregisterServiceProvider(T t, Class<T> cls) {
        if (t != null) {
            a5n a5nVar = this.f97958a.get(cls);
            if (a5nVar != null) {
                if (cls.isAssignableFrom(t.getClass())) {
                    return a5nVar.m52966d(t);
                }
                throw new ClassCastException();
            }
            throw new IllegalArgumentException("category unknown!");
        }
        throw new IllegalArgumentException("provider == null!");
    }

    public void finalize() throws Throwable {
        deregisterAll();
        super.finalize();
    }

    public Iterator<Class<?>> getCategories() {
        return this.f97958a.keySet().iterator();
    }

    public <T> T getServiceProviderByClass(Class<T> cls) {
        T t;
        if (cls == null) {
            throw new IllegalArgumentException("providerClass == null!");
        }
        for (Class<?> cls2 : this.f97958a.keySet()) {
            if (cls2.isAssignableFrom(cls) && (t = (T) this.f97958a.get(cls2).m52967e(cls)) != null) {
                return t;
            }
        }
        return null;
    }

    public <T> Iterator<T> getServiceProviders(Class<T> cls, boolean z) {
        a5n a5nVar = this.f97958a.get(cls);
        if (a5nVar != null) {
            return (Iterator<T>) a5nVar.m52968f(z);
        }
        throw new IllegalArgumentException("category unknown!");
    }

    public <T> boolean registerServiceProvider(T t, Class<T> cls) {
        if (t != null) {
            a5n a5nVar = this.f97958a.get(cls);
            if (a5nVar != null) {
                if (cls.isAssignableFrom(t.getClass())) {
                    return a5nVar.m52969h(t);
                }
                throw new ClassCastException();
            }
            throw new IllegalArgumentException("category unknown!");
        }
        throw new IllegalArgumentException("provider == null!");
    }

    public void registerServiceProviders(Iterator<?> it2) {
        if (it2 == null) {
            throw new IllegalArgumentException("provider == null!");
        }
        while (it2.hasNext()) {
            registerServiceProvider(it2.next());
        }
    }

    public <T> boolean setOrdering(Class<T> cls, T t, T t2) {
        if (t == null || t2 == null) {
            throw new IllegalArgumentException("provider is null!");
        }
        if (t == t2) {
            throw new IllegalArgumentException("providers are the same!");
        }
        a5n a5nVar = this.f97958a.get(cls);
        if (a5nVar == null) {
            throw new IllegalArgumentException("category unknown!");
        }
        if (a5nVar.m52965c(t) && a5nVar.m52965c(t2)) {
            return a5nVar.m52970i(t, t2);
        }
        return false;
    }

    public <T> boolean unsetOrdering(Class<T> cls, T t, T t2) {
        if (t == null || t2 == null) {
            throw new IllegalArgumentException("provider is null!");
        }
        if (t == t2) {
            throw new IllegalArgumentException("providers are the same!");
        }
        a5n a5nVar = this.f97958a.get(cls);
        if (a5nVar == null) {
            throw new IllegalArgumentException("category unknown!");
        }
        if (a5nVar.m52965c(t) && a5nVar.m52965c(t2)) {
            return a5nVar.m52971j(t, t2);
        }
        return false;
    }

    public static <T> Iterator<T> lookupProviders(Class<T> cls) {
        if (cls != null) {
            m61489a(cls);
            return ServiceLoader.load(cls).iterator();
        }
        throw new IllegalArgumentException("providerClass == null!");
    }

    public void deregisterAll() {
        Iterator<a5n> it2 = this.f97958a.values().iterator();
        while (it2.hasNext()) {
            it2.next().m52964b();
        }
    }

    public <T> Iterator<T> getServiceProviders(Class<T> cls, Filter filter, boolean z) {
        if (this.f97958a.get(cls) != null) {
            return new C17883a(getServiceProviders(cls, z), filter);
        }
        throw new IllegalArgumentException("category unknown!");
    }

    public void deregisterServiceProvider(Object obj) {
        if (obj != null) {
            Iterator<a5n> m61490b = m61490b(obj);
            while (m61490b.hasNext()) {
                m61490b.next().m52966d(obj);
            }
            return;
        }
        throw new IllegalArgumentException("provider == null!");
    }

    public void registerServiceProvider(Object obj) {
        if (obj != null) {
            Iterator<a5n> m61490b = m61490b(obj);
            while (m61490b.hasNext()) {
                m61490b.next().m52969h(obj);
            }
            return;
        }
        throw new IllegalArgumentException("provider == null!");
    }
}
