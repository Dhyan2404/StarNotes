package retrofit2;

import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.CallAdapter;

/* renamed from: retrofit2.e */
/* loaded from: classes16.dex */
public class C20500e {

    /* renamed from: a */
    public static final C20500e f116278a = m72046c();

    /* renamed from: retrofit2.e$a */
    /* loaded from: classes16.dex */
    public static class a extends C20500e {

        /* renamed from: retrofit2.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes16.dex */
        public static class ExecutorC20626a implements Executor {

            /* renamed from: e */
            public final Handler f116279e = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f116279e.post(runnable);
            }
        }

        @Override // retrofit2.C20500e
        /* renamed from: a */
        public CallAdapter.Factory mo72048a(Executor executor) {
            return new C20498c(executor);
        }

        @Override // retrofit2.C20500e
        /* renamed from: b */
        public Executor mo72049b() {
            return new ExecutorC20626a();
        }
    }

    /* renamed from: retrofit2.e$b */
    /* loaded from: classes16.dex */
    public static class b extends C20500e {

        /* renamed from: retrofit2.e$b$a */
        /* loaded from: classes16.dex */
        public static class a implements Executor {

            /* renamed from: e */
            public static Object f116280e;

            /* renamed from: f */
            public static Method f116281f;

            static {
                try {
                    Class<?> cls = Class.forName("org.robovm.apple.foundation.NSOperationQueue");
                    f116280e = cls.getDeclaredMethod("getMainQueue", new Class[0]).invoke(null, new Object[0]);
                    f116281f = cls.getDeclaredMethod("addOperation", Runnable.class);
                } catch (Exception e) {
                    throw new AssertionError(e);
                }
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    f116281f.invoke(f116280e, runnable);
                } catch (IllegalAccessException | IllegalArgumentException e) {
                    throw new AssertionError(e);
                } catch (InvocationTargetException e2) {
                    Throwable cause = e2.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (!(cause instanceof Error)) {
                        throw new RuntimeException(cause);
                    }
                    throw ((Error) cause);
                }
            }
        }

        @Override // retrofit2.C20500e
        /* renamed from: a */
        public CallAdapter.Factory mo72048a(Executor executor) {
            return new C20498c(executor);
        }

        @Override // retrofit2.C20500e
        /* renamed from: b */
        public Executor mo72049b() {
            return new a();
        }
    }

    @IgnoreJRERequirement
    /* renamed from: retrofit2.e$c */
    /* loaded from: classes16.dex */
    public static class c extends C20500e {
        @Override // retrofit2.C20500e
        /* renamed from: e */
        public Object mo72050e(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        @Override // retrofit2.C20500e
        /* renamed from: f */
        public boolean mo72051f(Method method) {
            return method.isDefault();
        }
    }

    /* renamed from: c */
    public static C20500e m72046c() {
        try {
            try {
                try {
                    Class.forName("android.os.Build");
                    return new a();
                } catch (ClassNotFoundException unused) {
                    Class.forName("org.robovm.apple.foundation.NSObject");
                    return new b();
                }
            } catch (ClassNotFoundException unused2) {
                return new C20500e();
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("java.util.Optional");
            return new c();
        }
    }

    /* renamed from: d */
    public static C20500e m72047d() {
        return f116278a;
    }

    /* renamed from: a */
    public CallAdapter.Factory mo72048a(Executor executor) {
        return executor != null ? new C20498c(executor) : C20497b.f116240a;
    }

    /* renamed from: b */
    public Executor mo72049b() {
        return null;
    }

    /* renamed from: e */
    public Object mo72050e(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    /* renamed from: f */
    public boolean mo72051f(Method method) {
        return false;
    }
}
