package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import com.sun.org.apache.bcel.internal.Constants;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J \u0010\u000b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\t0\b2\u0006\u0010\u0002\u001a\u00020\u0001H\u0002J\u001e\u0010\u000e\u001a\f\u0012\u0006\b\u0001\u0012\u00020\t\u0018\u00010\b2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J\u0014\u0010\u0010\u001a\u00020\u000f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J\u0014\u0010\u0011\u001a\u00020\u000f2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J\u0016\u0010\u0013\u001a\u00020\u00122\f\u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\fH\u0002R\u0014\u0010\u0015\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0014R$\u0010\u0019\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f\u0012\u0004\u0012\u00020\u000f0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018R2\u0010\u001b\u001a \u0012\b\u0012\u0006\u0012\u0002\b\u00030\f\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\t0\b0\u001a0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0018¨\u0006\u001e"}, m61528d2 = {"Landroidx/lifecycle/Lifecycling;", "", "object", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycleEventObserver", "", "className", "getAdapterName", "Ljava/lang/reflect/Constructor;", "Landroidx/lifecycle/GeneratedAdapter;", "constructor", "a", "Ljava/lang/Class;", "klass", "b", "", "c", "e", "", "d", "I", "REFLECTIVE_CALLBACK", "GENERATED_CALLBACK", "", "Ljava/util/Map;", "callbackCache", "", "classToAdapters", Constants.CONSTRUCTOR_NAME, "()V", "lifecycle-common"}, m61529k = 1, m61530mv = {1, 8, 0})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class Lifecycling {

    /* renamed from: a, reason: from kotlin metadata */
    public static final int REFLECTIVE_CALLBACK = 1;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int GENERATED_CALLBACK = 2;

    @NotNull
    public static final Lifecycling INSTANCE = new Lifecycling();

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Map<Class<?>, Integer> callbackCache = new HashMap();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> classToAdapters = new HashMap();

    @JvmStatic
    @NotNull
    public static final String getAdapterName(@NotNull String className) {
        String replace$default;
        Intrinsics.checkNotNullParameter(className, "className");
        StringBuilder sb = new StringBuilder();
        replace$default = StringsKt__StringsJVMKt.replace$default(className, ".", "_", false, 4, (Object) null);
        sb.append(replace$default);
        sb.append("_LifecycleAdapter");
        return sb.toString();
    }

    @JvmStatic
    @NotNull
    public static final LifecycleEventObserver lifecycleEventObserver(@NotNull Object object) {
        Intrinsics.checkNotNullParameter(object, "object");
        boolean z = object instanceof LifecycleEventObserver;
        boolean z2 = object instanceof DefaultLifecycleObserver;
        if (z && z2) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, (LifecycleEventObserver) object);
        }
        if (z2) {
            return new DefaultLifecycleObserverAdapter((DefaultLifecycleObserver) object, null);
        }
        if (z) {
            return (LifecycleEventObserver) object;
        }
        Class<?> cls = object.getClass();
        Lifecycling lifecycling = INSTANCE;
        if (lifecycling.m4898c(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(object);
        }
        List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(cls);
        Intrinsics.checkNotNull(list);
        List<Constructor<? extends GeneratedAdapter>> list2 = list;
        if (list2.size() == 1) {
            return new SingleGeneratedAdapterObserver(lifecycling.m4896a(list2.get(0), object));
        }
        int size = list2.size();
        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[size];
        for (int i = 0; i < size; i++) {
            generatedAdapterArr[i] = INSTANCE.m4896a(list2.get(i), object);
        }
        return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
    }

    /* renamed from: a */
    public final GeneratedAdapter m4896a(Constructor<? extends GeneratedAdapter> constructor, Object object) {
        try {
            GeneratedAdapter newInstance = constructor.newInstance(object);
            Intrinsics.checkNotNullExpressionValue(newInstance, "{\n            constructo…tance(`object`)\n        }");
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: b */
    public final Constructor<? extends GeneratedAdapter> m4897b(Class<?> klass) {
        try {
            Package r4 = klass.getPackage();
            String name = klass.getCanonicalName();
            String fullPackage = r4 != null ? r4.getName() : "";
            Intrinsics.checkNotNullExpressionValue(fullPackage, "fullPackage");
            if (!(fullPackage.length() == 0)) {
                Intrinsics.checkNotNullExpressionValue(name, "name");
                name = name.substring(fullPackage.length() + 1);
                Intrinsics.checkNotNullExpressionValue(name, "this as java.lang.String).substring(startIndex)");
            }
            Intrinsics.checkNotNullExpressionValue(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
            String adapterName = getAdapterName(name);
            if (!(fullPackage.length() == 0)) {
                adapterName = fullPackage + '.' + adapterName;
            }
            Class<?> cls = Class.forName(adapterName);
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<out androidx.lifecycle.GeneratedAdapter>");
            Constructor declaredConstructor = cls.getDeclaredConstructor(klass);
            if (declaredConstructor.isAccessible()) {
                return declaredConstructor;
            }
            declaredConstructor.setAccessible(true);
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    public final int m4898c(Class<?> klass) {
        Map<Class<?>, Integer> map = callbackCache;
        Integer num = map.get(klass);
        if (num != null) {
            return num.intValue();
        }
        int m4900e = m4900e(klass);
        map.put(klass, Integer.valueOf(m4900e));
        return m4900e;
    }

    /* renamed from: d */
    public final boolean m4899d(Class<?> klass) {
        return klass != null && LifecycleObserver.class.isAssignableFrom(klass);
    }

    /* renamed from: e */
    public final int m4900e(Class<?> klass) {
        ArrayList arrayList;
        List<Constructor<? extends GeneratedAdapter>> listOf;
        if (klass.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends GeneratedAdapter> m4897b = m4897b(klass);
        if (m4897b != null) {
            Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> map = classToAdapters;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(m4897b);
            map.put(klass, listOf);
            return 2;
        }
        if (C1153a.f7991c.m4940d(klass)) {
            return 1;
        }
        Class<? super Object> superclass = klass.getSuperclass();
        if (m4899d(superclass)) {
            Intrinsics.checkNotNullExpressionValue(superclass, "superclass");
            if (m4898c(superclass) == 1) {
                return 1;
            }
            List<Constructor<? extends GeneratedAdapter>> list = classToAdapters.get(superclass);
            Intrinsics.checkNotNull(list);
            arrayList = new ArrayList(list);
        } else {
            arrayList = null;
        }
        Class<?>[] interfaces = klass.getInterfaces();
        Intrinsics.checkNotNullExpressionValue(interfaces, "klass.interfaces");
        for (Class<?> intrface : interfaces) {
            if (m4899d(intrface)) {
                Intrinsics.checkNotNullExpressionValue(intrface, "intrface");
                if (m4898c(intrface) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                List<Constructor<? extends GeneratedAdapter>> list2 = classToAdapters.get(intrface);
                Intrinsics.checkNotNull(list2);
                arrayList.addAll(list2);
            }
        }
        if (arrayList == null) {
            return 1;
        }
        classToAdapters.put(klass, arrayList);
        return 2;
    }
}
