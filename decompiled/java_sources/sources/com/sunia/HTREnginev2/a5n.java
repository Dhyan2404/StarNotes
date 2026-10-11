package com.sunia.HTREnginev2;

import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.imageio.spi.C17885c;
import javax.imageio.spi.RegisterableService;
import javax.imageio.spi.ServiceRegistry;

/* loaded from: classes5.dex */
public class a5n {

    /* renamed from: a */
    public ServiceRegistry f64349a;

    /* renamed from: b */
    public Class<?> f64350b;

    /* renamed from: c */
    public final C17885c<Object> f64351c = new C17885c<>();

    /* renamed from: d */
    public final Map<Class<?>, Object> f64352d = new HashMap();

    /* renamed from: e */
    public final Map<Class<?>, AccessControlContext> f64353e = new HashMap();

    public a5n(ServiceRegistry serviceRegistry, Class<?> cls) {
        this.f64349a = serviceRegistry;
        this.f64350b = cls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ Void m52963g(RegisterableService registerableService) {
        registerableService.onDeregistration(this.f64349a, this.f64350b);
        return null;
    }

    /* renamed from: b */
    public synchronized void m52964b() {
        Iterator<Object> it2 = this.f64352d.values().iterator();
        while (it2.hasNext()) {
            Object next = it2.next();
            it2.remove();
            if (next instanceof RegisterableService) {
                final RegisterableService registerableService = (RegisterableService) next;
                AccessControlContext accessControlContext = this.f64353e.get(next.getClass());
                if (accessControlContext != null || System.getSecurityManager() == null) {
                    AccessController.doPrivileged(new PrivilegedAction() { // from class: com.sunia.HTREnginev2.z4n
                        @Override // java.security.PrivilegedAction
                        public final Object run() {
                            Void m52963g;
                            m52963g = a5n.this.m52963g(registerableService);
                            return m52963g;
                        }
                    }, accessControlContext);
                }
            }
        }
        this.f64351c.clear();
        this.f64353e.clear();
    }

    /* renamed from: c */
    public synchronized boolean m52965c(Object obj) {
        return this.f64352d.get(obj.getClass()) == obj;
    }

    /* renamed from: d */
    public synchronized boolean m52966d(Object obj) {
        if (obj != this.f64352d.get(obj.getClass())) {
            return false;
        }
        this.f64352d.remove(obj.getClass());
        this.f64353e.remove(obj.getClass());
        this.f64351c.remove(obj);
        if (obj instanceof RegisterableService) {
            ((RegisterableService) obj).onDeregistration(this.f64349a, this.f64350b);
        }
        return true;
    }

    /* renamed from: e */
    public synchronized <T> T m52967e(Class<T> cls) {
        return (T) this.f64352d.get(cls);
    }

    /* renamed from: f */
    public synchronized Iterator<Object> m52968f(boolean z) {
        if (z) {
            return this.f64351c.iterator();
        }
        return this.f64352d.values().iterator();
    }

    public synchronized void finalize() {
        m52964b();
    }

    /* renamed from: h */
    public synchronized boolean m52969h(Object obj) {
        boolean z;
        Object obj2 = this.f64352d.get(obj.getClass());
        z = obj2 != null;
        if (z) {
            m52966d(obj2);
        }
        this.f64352d.put(obj.getClass(), obj);
        this.f64353e.put(obj.getClass(), AccessController.getContext());
        this.f64351c.add(obj);
        if (obj instanceof RegisterableService) {
            try {
                ((RegisterableService) obj).onRegistration(this.f64349a, this.f64350b);
            } catch (Throwable th) {
                System.err.println("Caught and handled this exception :");
                th.printStackTrace();
            }
        }
        return !z;
    }

    /* renamed from: i */
    public synchronized boolean m52970i(Object obj, Object obj2) {
        return this.f64351c.m61493b(obj, obj2);
    }

    /* renamed from: j */
    public synchronized boolean m52971j(Object obj, Object obj2) {
        return this.f64351c.m61494c(obj, obj2);
    }
}
