package com.sunia.HTREnginev2;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.collection.LruCache;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import net.vrallev.android.task.Task;
import net.vrallev.android.task.TaskCacheFragmentInterface;
import net.vrallev.android.task.TaskResult;

/* loaded from: classes11.dex */
public class t9n {

    /* renamed from: b */
    public static final String f85027b = "TargetMethodFinder";

    /* renamed from: c */
    public static final LruCache<Class<?>, Class<?>> f85028c = new C14445a(15);

    /* renamed from: d */
    public static final LruCache<rnj, qnj> f85029d = new C14446b(25);

    /* renamed from: a */
    public final Class<? extends TaskResult> f85030a;

    /* renamed from: com.sunia.HTREnginev2.t9n$a */
    /* loaded from: classes11.dex */
    public static class C14445a extends LruCache<Class<?>, Class<?>> {
        public C14445a(int i) {
            super(i);
        }

        @Override // androidx.collection.LruCache
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Class<?> create(Class<?> cls) {
            return t9n.m57343i(cls);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.t9n$b */
    /* loaded from: classes11.dex */
    public static class C14446b extends LruCache<rnj, qnj> {
        public C14446b(int i) {
            super(i);
        }

        @Override // androidx.collection.LruCache
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public qnj create(rnj rnjVar) {
            return qnj.m56732c(t9n.m57339e(rnjVar));
        }

        @Override // androidx.collection.LruCache
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, rnj rnjVar, qnj qnjVar, qnj qnjVar2) {
            rnjVar.m56998h();
            if (qnjVar != null) {
                qnjVar.m56735d();
            }
        }
    }

    public t9n(Class<? extends TaskResult> cls) {
        this.f85030a = cls;
    }

    /* renamed from: c */
    public static Pair<Method, Object> m57337c(Activity activity, Class<?> cls, Class<?> cls2, Class<? extends TaskResult> cls3, Task<?> task) {
        if (cls.equals(FragmentActivity.class) || cls.equals(Activity.class)) {
            return null;
        }
        Method m57340f = m57340f(cls, cls2, cls3, task);
        return m57340f != null ? new Pair<>(m57340f, activity) : m57337c(activity, cls.getSuperclass(), cls2, cls3, task);
    }

    /* renamed from: d */
    public static Pair<Method, Object> m57338d(FragmentActivity fragmentActivity, Class<?> cls, Class<? extends TaskResult> cls2, Task<?> task, boolean z) {
        Pair<Method, Object> m57337c = m57337c(fragmentActivity, fragmentActivity.getClass(), cls, cls2, task);
        return m57337c != null ? m57337c : m57342h(fragmentActivity.getSupportFragmentManager(), cls, cls2, task, z);
    }

    /* renamed from: e */
    public static Method m57339e(rnj rnjVar) {
        Class<?> m56995d = rnjVar.m56995d();
        Class<? extends TaskResult> m56992a = rnjVar.m56992a();
        Class<?> m56994c = rnjVar.m56994c();
        Class<? extends Task> m56996e = rnjVar.m56996e();
        String m56993b = rnjVar.m56993b();
        boolean z = !TextUtils.isEmpty(m56993b);
        Method method = null;
        try {
            Method[] declaredMethods = m56995d.getDeclaredMethods();
            if (declaredMethods == null) {
                return null;
            }
            for (Method method2 : declaredMethods) {
                if (method2.isAnnotationPresent(m56992a) && ((!z || m56993b.equals(((TaskResult) method2.getAnnotation(m56992a)).m64760id())) && (z || TextUtils.isEmpty(((TaskResult) method2.getAnnotation(m56992a)).m64760id())))) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length != 0 && parameterTypes.length <= 2) {
                        if (parameterTypes[0].isAssignableFrom(m56994c)) {
                            if (method == null) {
                                method = method2;
                            } else {
                                Log.w(f85027b, "Found another method, which is ignored " + method2.getName());
                            }
                        }
                        if (parameterTypes[0].equals(m56994c) && (parameterTypes.length != 2 || parameterTypes[1].isAssignableFrom(m56996e))) {
                            return method2;
                        }
                    }
                }
            }
            return method;
        } catch (Error e) {
            Log.e(f85027b, e.getMessage(), e);
            return null;
        }
    }

    /* renamed from: f */
    public static Method m57340f(Class<?> cls, Class<?> cls2, Class<? extends TaskResult> cls3, Task<?> task) {
        if (cls2 == null) {
            return null;
        }
        return f85029d.get(rnj.m56991g(cls, cls2, cls3, task)).m56733a();
    }

    /* renamed from: g */
    public static Pair<Method, Object> m57341g(Fragment fragment, Class<?> cls, Class<?> cls2, Class<? extends TaskResult> cls3, Task<?> task, boolean z) {
        if (cls.equals(Fragment.class) || cls.equals(DialogFragment.class)) {
            return null;
        }
        String m64740d = task.m64740d();
        if (!(!TextUtils.isEmpty(m64740d)) || nug.m55798a(m64740d, nug.m55799b(fragment), z)) {
            Method m57340f = m57340f(cls, cls2, cls3, task);
            if (m57340f != null) {
                return new Pair<>(m57340f, fragment);
            }
            Pair<Method, Object> m57341g = m57341g(fragment, cls.getSuperclass(), cls2, cls3, task, z);
            if (m57341g != null) {
                return m57341g;
            }
        }
        return m57342h(fragment.getChildFragmentManager(), cls2, cls3, task, z);
    }

    /* renamed from: h */
    public static Pair<Method, Object> m57342h(FragmentManager fragmentManager, Class<?> cls, Class<? extends TaskResult> cls2, Task<?> task, boolean z) {
        List<Fragment> fragments;
        Pair<Method, Object> m57341g;
        if (fragmentManager == null || (fragments = fragmentManager.getFragments()) == null) {
            return null;
        }
        for (Fragment fragment : fragments) {
            if (fragment != null && (m57341g = m57341g(fragment, fragment.getClass(), cls, cls2, task, z)) != null) {
                return m57341g;
            }
        }
        return null;
    }

    /* renamed from: i */
    public static Class<?> m57343i(Class<?> cls) {
        Class<?>[] parameterTypes;
        if (cls.equals(Object.class) || cls.equals(Task.class)) {
            return null;
        }
        for (Method method : cls.getDeclaredMethods()) {
            if ("execute".equals(method.getName()) && (parameterTypes = method.getParameterTypes()) != null && parameterTypes.length == 0) {
                Class<?> returnType = method.getReturnType();
                if (!Object.class.equals(returnType)) {
                    return returnType;
                }
            }
        }
        return m57343i(cls.getSuperclass());
    }

    /* renamed from: j */
    public Pair<Method, Object> m57344j(TaskCacheFragmentInterface taskCacheFragmentInterface, Class<?> cls, Task<?> task) {
        Pair<Method, Object> m57337c;
        Activity parentActivity = taskCacheFragmentInterface.getParentActivity();
        Object obj = null;
        if (parentActivity == null) {
            Log.w(f85027b, "Activity is null, can't find target");
            return null;
        }
        if (parentActivity instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) parentActivity;
            m57337c = m57338d(fragmentActivity, cls, this.f85030a, task, true);
            if (m57337c == null) {
                m57337c = m57338d(fragmentActivity, cls, this.f85030a, task, false);
            }
        } else {
            m57337c = m57337c(parentActivity, parentActivity.getClass(), cls, this.f85030a, task);
        }
        if (m57337c == null) {
            try {
                obj = task.getResult();
            } catch (InterruptedException unused) {
            }
            Log.w(f85027b, String.format("Didn't find method, result type %s, result %s, annotationId %s, fragmentId %s", cls, obj, task.m64739c(), task.m64740d()));
        }
        return m57337c;
    }

    /* renamed from: k */
    public Class<?> m57345k(Object obj, Task<?> task) {
        Class<?> resultClass = task.getResultClass();
        if (resultClass == null) {
            resultClass = f85028c.get(task.getClass());
        }
        if (resultClass == null && obj != null) {
            resultClass = obj.getClass();
        }
        if (resultClass == null) {
            Log.w(f85027b, "Couldn't find result type");
        }
        return resultClass;
    }

    /* renamed from: l */
    public void m57346l(Pair<Method, Object> pair, Object obj, Task<?> task) {
        m57347m((Method) pair.first, pair.second, obj, task);
    }

    /* renamed from: m */
    public void m57347m(Method method, Object obj, Object obj2, Task<?> task) {
        try {
            if (method.getParameterTypes().length == 2) {
                method.invoke(obj, obj2, task);
            } else {
                method.invoke(obj, obj2);
            }
        } catch (IllegalAccessException e) {
            Log.e(f85027b, e.getMessage(), e);
        } catch (InvocationTargetException e2) {
            Log.e(f85027b, e2.getMessage(), e2);
        }
    }
}
