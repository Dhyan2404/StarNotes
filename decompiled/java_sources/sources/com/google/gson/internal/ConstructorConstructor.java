package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.ReflectionAccessFilter;
import com.google.gson.internal.reflect.ReflectionHelper;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* loaded from: classes6.dex */
public final class ConstructorConstructor {

    /* renamed from: a */
    public final Map<Type, InstanceCreator<?>> f36118a;

    /* renamed from: b */
    public final boolean f36119b;

    /* renamed from: c */
    public final List<ReflectionAccessFilter> f36120c;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$a */
    /* loaded from: classes6.dex */
    public class C6506a<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$b */
    /* loaded from: classes6.dex */
    public class C6507b<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$c */
    /* loaded from: classes6.dex */
    public class C6508c<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$d */
    /* loaded from: classes6.dex */
    public class C6509d<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$e */
    /* loaded from: classes6.dex */
    public class C6510e<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$f */
    /* loaded from: classes6.dex */
    public class C6511f<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$g */
    /* loaded from: classes6.dex */
    public class C6512g<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$h */
    /* loaded from: classes6.dex */
    public class C6513h<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$i */
    /* loaded from: classes6.dex */
    public class C6514i<T> implements ObjectConstructor<T> {
        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) new LinkedTreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$j */
    /* loaded from: classes6.dex */
    public class C6515j<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ Class f36121a;

        public C6515j(Class cls) {
            this.f36121a = cls;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) UnsafeAllocator.INSTANCE.newInstance(this.f36121a);
            } catch (Exception e) {
                throw new RuntimeException("Unable to create instance of " + this.f36121a + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$k */
    /* loaded from: classes6.dex */
    public class C6516k<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ InstanceCreator f36123a;

        /* renamed from: b */
        public final /* synthetic */ Type f36124b;

        public C6516k(InstanceCreator instanceCreator, Type type) {
            this.f36123a = instanceCreator;
            this.f36124b = type;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) this.f36123a.createInstance(this.f36124b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$l */
    /* loaded from: classes6.dex */
    public class C6517l<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ String f36126a;

        public C6517l(String str) {
            this.f36126a = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.f36126a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$m */
    /* loaded from: classes6.dex */
    public class C6518m<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ InstanceCreator f36128a;

        /* renamed from: b */
        public final /* synthetic */ Type f36129b;

        public C6518m(InstanceCreator instanceCreator, Type type) {
            this.f36128a = instanceCreator;
            this.f36129b = type;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            return (T) this.f36128a.createInstance(this.f36129b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$n */
    /* loaded from: classes6.dex */
    public class C6519n<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ String f36131a;

        public C6519n(String str) {
            this.f36131a = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.f36131a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$o */
    /* loaded from: classes6.dex */
    public class C6520o<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ String f36133a;

        public C6520o(String str) {
            this.f36133a = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.f36133a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$p */
    /* loaded from: classes6.dex */
    public class C6521p<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ Type f36135a;

        public C6521p(Type type) {
            this.f36135a = type;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            Type type = this.f36135a;
            if (!(type instanceof ParameterizedType)) {
                throw new JsonIOException("Invalid EnumSet type: " + this.f36135a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) EnumSet.noneOf((Class) type2);
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.f36135a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$q */
    /* loaded from: classes6.dex */
    public class C6522q<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ Type f36136a;

        public C6522q(Type type) {
            this.f36136a = type;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            Type type = this.f36136a;
            if (!(type instanceof ParameterizedType)) {
                throw new JsonIOException("Invalid EnumMap type: " + this.f36136a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) new EnumMap((Class) type2);
            }
            throw new JsonIOException("Invalid EnumMap type: " + this.f36136a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$r */
    /* loaded from: classes6.dex */
    public class C6523r<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ String f36137a;

        public C6523r(String str) {
            this.f36137a = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.f36137a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$s */
    /* loaded from: classes6.dex */
    public class C6524s<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ String f36138a;

        public C6524s(String str) {
            this.f36138a = str;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            throw new JsonIOException(this.f36138a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.gson.internal.ConstructorConstructor$t */
    /* loaded from: classes6.dex */
    public class C6525t<T> implements ObjectConstructor<T> {

        /* renamed from: a */
        public final /* synthetic */ Constructor f36139a;

        public C6525t(Constructor constructor) {
            this.f36139a = constructor;
        }

        @Override // com.google.gson.internal.ObjectConstructor
        public T construct() {
            try {
                return (T) this.f36139a.newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                throw ReflectionHelper.createExceptionForUnexpectedIllegalAccess(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.f36139a) + "' with no args", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.constructorToString(this.f36139a) + "' with no args", e3.getCause());
            }
        }
    }

    public ConstructorConstructor(Map<Type, InstanceCreator<?>> map, boolean z, List<ReflectionAccessFilter> list) {
        this.f36118a = map;
        this.f36119b = z;
        this.f36120c = list;
    }

    /* renamed from: a */
    public static String m28232a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: " + cls.getName();
        }
        if (!Modifier.isAbstract(modifiers)) {
            return null;
        }
        return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + TroubleshootingGuide.createUrl("r8-abstract-class");
    }

    /* renamed from: b */
    public static <T> ObjectConstructor<T> m28233b(Class<? super T> cls, ReflectionAccessFilter.FilterResult filterResult) {
        String tryMakeAccessible;
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        boolean z = false;
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            ReflectionAccessFilter.FilterResult filterResult2 = ReflectionAccessFilter.FilterResult.ALLOW;
            if (filterResult == filterResult2 || (ReflectionAccessFilterHelper.canAccess(declaredConstructor, null) && (filterResult != ReflectionAccessFilter.FilterResult.BLOCK_ALL || Modifier.isPublic(declaredConstructor.getModifiers())))) {
                z = true;
            }
            if (z) {
                return (filterResult != filterResult2 || (tryMakeAccessible = ReflectionHelper.tryMakeAccessible(declaredConstructor)) == null) ? new C6525t(declaredConstructor) : new C6524s(tryMakeAccessible);
            }
            return new C6523r("Unable to invoke no-args constructor of " + cls + "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter.");
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static <T> ObjectConstructor<T> m28234c(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new C6506a() : Set.class.isAssignableFrom(cls) ? new C6507b() : Queue.class.isAssignableFrom(cls) ? new C6508c() : new C6509d();
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new C6510e() : ConcurrentMap.class.isAssignableFrom(cls) ? new C6511f() : SortedMap.class.isAssignableFrom(cls) ? new C6512g() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(TypeToken.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new C6514i() : new C6513h();
        }
        return null;
    }

    /* renamed from: d */
    public static <T> ObjectConstructor<T> m28235d(Type type, Class<? super T> cls) {
        if (EnumSet.class.isAssignableFrom(cls)) {
            return new C6521p(type);
        }
        if (cls == EnumMap.class) {
            return new C6522q(type);
        }
        return null;
    }

    /* renamed from: e */
    public final <T> ObjectConstructor<T> m28236e(Class<? super T> cls) {
        if (this.f36119b) {
            return new C6515j(cls);
        }
        String str = "Unable to create instance of " + cls + "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.";
        if (cls.getDeclaredConstructors().length == 0) {
            str = str + " Or adjust your R8 configuration to keep the no-args constructor of the class.";
        }
        return new C6517l(str);
    }

    public <T> ObjectConstructor<T> get(TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        InstanceCreator<?> instanceCreator = this.f36118a.get(type);
        if (instanceCreator != null) {
            return new C6516k(instanceCreator, type);
        }
        InstanceCreator<?> instanceCreator2 = this.f36118a.get(rawType);
        if (instanceCreator2 != null) {
            return new C6518m(instanceCreator2, type);
        }
        ObjectConstructor<T> m28235d = m28235d(type, rawType);
        if (m28235d != null) {
            return m28235d;
        }
        ReflectionAccessFilter.FilterResult filterResult = ReflectionAccessFilterHelper.getFilterResult(this.f36120c, rawType);
        ObjectConstructor<T> m28233b = m28233b(rawType, filterResult);
        if (m28233b != null) {
            return m28233b;
        }
        ObjectConstructor<T> m28234c = m28234c(type, rawType);
        if (m28234c != null) {
            return m28234c;
        }
        String m28232a = m28232a(rawType);
        if (m28232a != null) {
            return new C6519n(m28232a);
        }
        if (filterResult == ReflectionAccessFilter.FilterResult.ALLOW) {
            return m28236e(rawType);
        }
        return new C6520o("Unable to create instance of " + rawType + "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection.");
    }

    public String toString() {
        return this.f36118a.toString();
    }
}
