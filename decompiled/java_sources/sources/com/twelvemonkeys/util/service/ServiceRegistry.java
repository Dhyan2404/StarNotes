package com.twelvemonkeys.util.service;

import com.bumptech.glide.load.engine.GlideException;
import com.twelvemonkeys.lang.Validate;
import com.twelvemonkeys.util.FilterIterator;
import java.io.IOException;
import java.net.URL;
import java.nio.channels.spi.SelectorProvider;
import java.nio.charset.spi.CharsetProvider;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import javax.imageio.spi.ImageReaderSpi;
import javax.imageio.spi.ImageReaderWriterSpi;
import javax.imageio.spi.ImageWriterSpi;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes10.dex */
public class ServiceRegistry {
    public static final String SERVICES = "META-INF/services/";

    /* renamed from: a */
    public final Map<Class<?>, C17021g> f94412a;

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$a */
    /* loaded from: classes10.dex */
    public class C17015a implements FilterIterator.Filter<Class<?>> {

        /* renamed from: a */
        public final /* synthetic */ Object f94413a;

        public C17015a(Object obj) {
            this.f94413a = obj;
        }

        @Override // com.twelvemonkeys.util.FilterIterator.Filter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Class<?> cls) {
            return cls.isInstance(this.f94413a);
        }
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$b */
    /* loaded from: classes10.dex */
    public class C17016b extends AbstractC17017c {
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$c */
    /* loaded from: classes10.dex */
    public abstract class AbstractC17017c {
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$d */
    /* loaded from: classes10.dex */
    public class C17018d extends AbstractC17017c {
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$e */
    /* loaded from: classes10.dex */
    public class C17019e implements FilterIterator.Filter<Class<?>> {

        /* renamed from: a */
        public final /* synthetic */ Object f94415a;

        public C17019e(Object obj) {
            this.f94415a = obj;
        }

        @Override // com.twelvemonkeys.util.FilterIterator.Filter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Class<?> cls) {
            return ServiceRegistry.this.m60786b(cls).m60794b(this.f94415a);
        }
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$f */
    /* loaded from: classes10.dex */
    public class C17020f extends FilterIterator<Class<?>> {

        /* renamed from: g */
        public Class<?> f94417g;

        /* renamed from: h */
        public final /* synthetic */ Object f94418h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17020f(Iterator it2, FilterIterator.Filter filter, Object obj) {
            super(it2, filter);
            this.f94418h = obj;
        }

        @Override // com.twelvemonkeys.util.FilterIterator, java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Class next() {
            Class<?> cls = (Class) super.next();
            this.f94417g = cls;
            return cls;
        }

        @Override // com.twelvemonkeys.util.FilterIterator, java.util.Iterator
        public void remove() {
            Class<?> cls = this.f94417g;
            if (cls == null) {
                throw new IllegalStateException("No current element");
            }
            ServiceRegistry.this.m60786b(cls).m60795c(this.f94418h);
            this.f94417g = null;
        }
    }

    /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$g */
    /* loaded from: classes10.dex */
    public class C17021g<T> {

        /* renamed from: a */
        public final Class<T> f94420a;

        /* renamed from: b */
        public final Map<Class, T> f94421b = new LinkedHashMap();

        /* renamed from: com.twelvemonkeys.util.service.ServiceRegistry$g$a */
        /* loaded from: classes10.dex */
        public class a implements Iterator<T> {

            /* renamed from: e */
            public T f94423e;

            /* renamed from: f */
            public final /* synthetic */ Iterator f94424f;

            public a(Iterator it2) {
                this.f94424f = it2;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f94424f.hasNext();
            }

            @Override // java.util.Iterator
            public T next() {
                T t = (T) this.f94424f.next();
                this.f94423e = t;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f94424f.remove();
                C17021g.this.m60796d(this.f94423e);
            }
        }

        public C17021g(Class<T> cls) {
            Validate.notNull(cls, "category");
            this.f94420a = cls;
        }

        /* renamed from: a */
        public final void m60793a(Object obj) {
            if (this.f94420a.isInstance(obj)) {
                return;
            }
            throw new IllegalArgumentException(obj + " not instance of category " + this.f94420a.getName());
        }

        /* renamed from: b */
        public boolean m60794b(Object obj) {
            return this.f94421b.containsKey(obj != null ? obj.getClass() : null);
        }

        /* renamed from: c */
        public boolean m60795c(Object obj) {
            m60793a(obj);
            T remove = this.f94421b.remove(obj.getClass());
            if (remove == null) {
                return false;
            }
            m60796d(remove);
            return true;
        }

        /* renamed from: d */
        public void m60796d(T t) {
            if (t instanceof RegisterableService) {
                ((RegisterableService) t).onDeregistration(ServiceRegistry.this, this.f94420a);
            }
        }

        /* renamed from: e */
        public void m60797e(T t) {
            if (t instanceof RegisterableService) {
                ((RegisterableService) t).onRegistration(ServiceRegistry.this, this.f94420a);
            }
        }

        /* renamed from: f */
        public Iterator<T> m60798f() {
            return new a(this.f94421b.values().iterator());
        }

        /* renamed from: g */
        public boolean m60799g(T t) {
            m60793a(t);
            if (m60794b(t)) {
                return false;
            }
            this.f94421b.put(t.getClass(), t);
            m60797e(t);
            return true;
        }
    }

    public ServiceRegistry(Iterator<? extends Class<?>> it2) {
        Validate.notNull(it2, "categories");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (it2.hasNext()) {
            m60787c(linkedHashMap, it2.next());
        }
        this.f94412a = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void main(String[] strArr) {
        ServiceRegistry serviceRegistry = new ServiceRegistry(Arrays.asList(CharsetProvider.class, SelectorProvider.class, ImageReaderSpi.class, ImageWriterSpi.class, AbstractC17017c.class).iterator());
        serviceRegistry.registerApplicationClasspathSPIs();
        C17016b c17016b = new C17016b();
        C17018d c17018d = new C17018d();
        serviceRegistry.register(c17016b, AbstractC17017c.class);
        serviceRegistry.register(c17018d, AbstractC17017c.class);
        serviceRegistry.deregister(c17016b);
        serviceRegistry.deregister(c17016b, AbstractC17017c.class);
        serviceRegistry.deregister(c17018d, AbstractC17017c.class);
        serviceRegistry.deregister(c17018d);
        Iterator<Class<?>> categories = serviceRegistry.categories();
        System.out.println("Categories: ");
        while (categories.hasNext()) {
            Class<?> next = categories.next();
            System.out.println(GlideException.C1935a.f14609h + next.getName() + ":");
            Iterator providers = serviceRegistry.providers(next);
            Object obj = null;
            while (providers.hasNext()) {
                obj = providers.next();
                System.out.println(MapUtils.f104930a + obj);
                if (obj instanceof ImageReaderWriterSpi) {
                    System.out.println("    - " + ((ImageReaderWriterSpi) obj).getDescription(null));
                }
                if (providers.hasNext()) {
                    providers.remove();
                }
            }
            if (obj != null) {
                Iterator<Class<?>> containingCategories = serviceRegistry.containingCategories(obj);
                int i = 0;
                while (containingCategories.hasNext()) {
                    if (next == containingCategories.next()) {
                        containingCategories.remove();
                        i++;
                    }
                }
                if (i != 1) {
                    System.err.println("Removed " + obj + " from " + i + " categories");
                }
            }
            Iterator providers2 = serviceRegistry.providers(next);
            if (!providers2.hasNext()) {
                System.out.println("All providers successfully deregistered");
            }
            while (providers2.hasNext()) {
                System.err.println("Not removed: " + providers2.next());
            }
        }
    }

    /* renamed from: b */
    public final <T> C17021g<T> m60786b(Class<T> cls) {
        C17021g<T> c17021g = this.f94412a.get(cls);
        if (c17021g != null) {
            return c17021g;
        }
        throw new IllegalArgumentException("No such category: " + cls.getName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public final <T> void m60787c(Map<Class<?>, C17021g> map, Class<T> cls) {
        map.put(cls, new C17021g(cls));
    }

    public Iterator<Class<?>> categories() {
        return this.f94412a.keySet().iterator();
    }

    public Iterator<Class<?>> compatibleCategories(Object obj) {
        return new FilterIterator(categories(), new C17015a(obj));
    }

    public Iterator<Class<?>> containingCategories(Object obj) {
        return new C17020f(categories(), new C17019e(obj), obj);
    }

    /* renamed from: d */
    public final <T> boolean m60788d(Object obj, Class<T> cls) {
        return m60786b(cls).m60799g(cls.cast(obj));
    }

    public boolean deregister(Object obj) {
        Iterator<Class<?>> containingCategories = containingCategories(obj);
        boolean z = false;
        while (containingCategories.hasNext()) {
            if (deregister(obj, containingCategories.next()) && !z) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public <T> void m60789e(URL url, Class<T> cls, ClassLoader classLoader) {
        Properties properties = new Properties();
        try {
            properties.load(url.openStream());
            if (properties.isEmpty()) {
                return;
            }
            C17021g c17021g = this.f94412a.get(cls);
            Iterator it2 = properties.keySet().iterator();
            while (it2.hasNext()) {
                try {
                    c17021g.m60799g(Class.forName((String) it2.next(), true, classLoader).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new ServiceConfigurationError(e);
                } catch (IllegalAccessException e2) {
                    throw new ServiceConfigurationError(e2);
                } catch (IllegalArgumentException e3) {
                    throw new ServiceConfigurationError(e3);
                } catch (InstantiationException e4) {
                    throw new ServiceConfigurationError(e4);
                }
            }
        } catch (IOException e5) {
            throw new ServiceConfigurationError(e5);
        }
    }

    public <T> Iterator<T> providers(Class<T> cls) {
        return m60786b(cls).m60798f();
    }

    public boolean register(Object obj) {
        Iterator<Class<?>> compatibleCategories = compatibleCategories(obj);
        boolean z = false;
        while (compatibleCategories.hasNext()) {
            if (m60788d(obj, compatibleCategories.next()) && !z) {
                z = true;
            }
        }
        return z;
    }

    public void registerApplicationClasspathSPIs() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        Iterator<Class<?>> categories = categories();
        while (categories.hasNext()) {
            Class<?> next = categories.next();
            try {
                Enumeration<URL> resources = contextClassLoader.getResources("META-INF/services/" + next.getName());
                while (resources.hasMoreElements()) {
                    m60789e(resources.nextElement(), next, contextClassLoader);
                }
            } catch (IOException e) {
                throw new ServiceConfigurationError(e);
            }
        }
    }

    public boolean deregister(Object obj, Class<?> cls) {
        return m60786b(cls).m60795c(obj);
    }

    public <T> boolean register(T t, Class<? super T> cls) {
        return m60788d(t, cls);
    }
}
