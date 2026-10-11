package com.google.common.reflect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.reflect.Types;
import com.sunia.HTREnginev2.bpn;
import com.sunia.HTREnginev2.onf;
import com.sunia.HTREnginev2.son;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public final class Types {

    /* renamed from: a */
    public static final Joiner f35125a = Joiner.m25799on(", ").useForNull("null");

    /* loaded from: classes6.dex */
    public enum ClassOwnership {
        OWNED_BY_ENCLOSING_CLASS { // from class: com.google.common.reflect.Types.ClassOwnership.1
            @Override // com.google.common.reflect.Types.ClassOwnership
            @CheckForNull
            public Class<?> getOwnerType(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        },
        LOCAL_CLASS_HAS_NO_OWNER { // from class: com.google.common.reflect.Types.ClassOwnership.2
            @Override // com.google.common.reflect.Types.ClassOwnership
            @CheckForNull
            public Class<?> getOwnerType(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        };

        static final ClassOwnership JVM_BEHAVIOR = detectJvmBehavior();

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$a */
        /* loaded from: classes6.dex */
        public class C6279a<T> {
        }

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$b */
        /* loaded from: classes6.dex */
        public class C6280b extends C6279a<String> {
        }

        private static ClassOwnership detectJvmBehavior() {
            new C6280b();
            ParameterizedType parameterizedType = (ParameterizedType) C6280b.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.getOwnerType(C6279a.class) == parameterizedType2.getOwnerType()) {
                    return classOwnership;
                }
            }
            throw new AssertionError();
        }

        @CheckForNull
        public abstract Class<?> getOwnerType(Class<?> cls);

        /* synthetic */ ClassOwnership(C6287a c6287a) {
            this();
        }
    }

    /* loaded from: classes6.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = JavaVersion.CURRENT.usedInGenericType(type);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof GenericArrayType) {
                return com.google.common.base.Objects.equal(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return String.valueOf(Types.m27530s(this.componentType)).concat("[]");
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.google.common.reflect.Types$JavaVersion, still in use, count: 1, list:
      (r0v0 com.google.common.reflect.Types$JavaVersion) from 0x0063: SPUT (r0v0 com.google.common.reflect.Types$JavaVersion) com.google.common.reflect.Types.JavaVersion.CURRENT com.google.common.reflect.Types$JavaVersion
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes6.dex */
    public static abstract class JavaVersion {
        JAVA6 { // from class: com.google.common.reflect.Types.JavaVersion.1
            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                Preconditions.checkNotNull(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new GenericArrayTypeImpl(cls.getComponentType()) : type;
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public GenericArrayType newArrayType(Type type) {
                return new GenericArrayTypeImpl(type);
            }
        },
        JAVA7 { // from class: com.google.common.reflect.Types.JavaVersion.2
            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return type instanceof Class ? Types.m27519h((Class) type) : new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                return (Type) Preconditions.checkNotNull(type);
            }
        },
        JAVA8 { // from class: com.google.common.reflect.Types.JavaVersion.3
            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA7.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public String typeName(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2);
                }
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA7.usedInGenericType(type);
            }
        },
        JAVA9 { // from class: com.google.common.reflect.Types.JavaVersion.4
            @Override // com.google.common.reflect.Types.JavaVersion
            public boolean jdkTypeDuplicatesOwnerName() {
                return false;
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type newArrayType(Type type) {
                return JavaVersion.JAVA8.newArrayType(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public String typeName(Type type) {
                return JavaVersion.JAVA8.typeName(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public Type usedInGenericType(Type type) {
                return JavaVersion.JAVA8.usedInGenericType(type);
            }
        };

        static final JavaVersion CURRENT;

        /* renamed from: com.google.common.reflect.Types$JavaVersion$a */
        /* loaded from: classes6.dex */
        public class C6285a extends son<Map.Entry<String, int[][]>> {
        }

        /* renamed from: com.google.common.reflect.Types$JavaVersion$b */
        /* loaded from: classes6.dex */
        public class C6286b extends son<int[]> {
        }

        static {
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new C6285a().capture().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = r2;
                    return;
                } else {
                    CURRENT = r3;
                    return;
                }
            }
            if (new C6286b().capture() instanceof Class) {
                CURRENT = r1;
            } else {
                CURRENT = r0;
            }
        }

        private JavaVersion() {
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) $VALUES.clone();
        }

        public boolean jdkTypeDuplicatesOwnerName() {
            return true;
        }

        public abstract Type newArrayType(Type type);

        public String typeName(Type type) {
            return Types.m27530s(type);
        }

        public final ImmutableList<Type> usedInGenericType(Type[] typeArr) {
            ImmutableList.Builder builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.add((ImmutableList.Builder) usedInGenericType(type));
            }
            return builder.build();
        }

        public abstract Type usedInGenericType(Type type);

        public /* synthetic */ JavaVersion(C6287a c6287a) {
            this(r1, r2);
        }
    }

    /* loaded from: classes6.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> argumentsList;

        @CheckForNull
        private final Type ownerType;
        private final Class<?> rawType;

        public ParameterizedTypeImpl(@CheckForNull Type type, Class<?> cls, Type[] typeArr) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkArgument(typeArr.length == cls.getTypeParameters().length);
            Types.m27517f(typeArr, "type parameter");
            this.ownerType = type;
            this.rawType = cls;
            this.argumentsList = JavaVersion.CURRENT.usedInGenericType(typeArr);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && com.google.common.base.Objects.equal(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return Types.m27529r(this.argumentsList);
        }

        @Override // java.lang.reflect.ParameterizedType
        @CheckForNull
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            Type type = this.ownerType;
            return this.rawType.hashCode() ^ ((type == null ? 0 : type.hashCode()) ^ this.argumentsList.hashCode());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.ownerType != null) {
                JavaVersion javaVersion = JavaVersion.CURRENT;
                if (javaVersion.jdkTypeDuplicatesOwnerName()) {
                    sb.append(javaVersion.typeName(this.ownerType));
                    sb.append('.');
                }
            }
            sb.append(this.rawType.getName());
            sb.append('<');
            Joiner joiner = Types.f35125a;
            ImmutableList<Type> immutableList = this.argumentsList;
            final JavaVersion javaVersion2 = JavaVersion.CURRENT;
            Objects.requireNonNull(javaVersion2);
            sb.append(joiner.join(Iterables.transform(immutableList, new Function() { // from class: com.google.common.reflect.a
                @Override // com.google.common.base.Function, java.util.function.Function
                public final Object apply(Object obj) {
                    return Types.JavaVersion.this.typeName((Type) obj);
                }
            })));
            sb.append('>');
            return sb.toString();
        }
    }

    /* loaded from: classes6.dex */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableList<Type> lowerBounds;
        private final ImmutableList<Type> upperBounds;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.m27517f(typeArr, "lower bound for wildcard");
            Types.m27517f(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.CURRENT;
            this.lowerBounds = javaVersion.usedInGenericType(typeArr);
            this.upperBounds = javaVersion.usedInGenericType(typeArr2);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.lowerBounds.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.upperBounds.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return Types.m27529r(this.lowerBounds);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return Types.m27529r(this.upperBounds);
        }

        public int hashCode() {
            return this.upperBounds.hashCode() ^ this.lowerBounds.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            UnmodifiableIterator<Type> it2 = this.lowerBounds.iterator();
            while (it2.hasNext()) {
                Type next = it2.next();
                sb.append(" super ");
                sb.append(JavaVersion.CURRENT.typeName(next));
            }
            for (Type type : Types.m27518g(this.upperBounds)) {
                sb.append(" extends ");
                sb.append(JavaVersion.CURRENT.typeName(type));
            }
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.reflect.Types$a */
    /* loaded from: classes6.dex */
    public class C6287a extends bpn {

        /* renamed from: b */
        public final /* synthetic */ AtomicReference f35126b;

        public C6287a(AtomicReference atomicReference) {
            this.f35126b = atomicReference;
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: b */
        public void mo27475b(Class<?> cls) {
            this.f35126b.set(cls.getComponentType());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: c */
        public void mo27476c(GenericArrayType genericArrayType) {
            this.f35126b.set(genericArrayType.getGenericComponentType());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: e */
        public void mo27478e(TypeVariable<?> typeVariable) {
            this.f35126b.set(Types.m27527p(typeVariable.getBounds()));
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: f */
        public void mo27479f(WildcardType wildcardType) {
            this.f35126b.set(Types.m27527p(wildcardType.getUpperBounds()));
        }
    }

    /* renamed from: com.google.common.reflect.Types$b */
    /* loaded from: classes6.dex */
    public static final class C6288b<X> {

        /* renamed from: a */
        public static final boolean f35127a = !C6288b.class.getTypeParameters()[0].equals(Types.m27522k(C6288b.class, "X", new Type[0]));
    }

    /* renamed from: com.google.common.reflect.Types$c */
    /* loaded from: classes6.dex */
    public static final class C6289c<D extends GenericDeclaration> {

        /* renamed from: a */
        public final D f35128a;

        /* renamed from: b */
        public final String f35129b;

        /* renamed from: c */
        public final ImmutableList<Type> f35130c;

        public C6289c(D d, String str, Type[] typeArr) {
            Types.m27517f(typeArr, "bound for type variable");
            this.f35128a = (D) Preconditions.checkNotNull(d);
            this.f35129b = (String) Preconditions.checkNotNull(str);
            this.f35130c = ImmutableList.copyOf(typeArr);
        }

        /* renamed from: a */
        public Type[] m27531a() {
            return Types.m27529r(this.f35130c);
        }

        /* renamed from: b */
        public D m27532b() {
            return this.f35128a;
        }

        /* renamed from: c */
        public String m27533c() {
            return this.f35129b;
        }

        /* renamed from: d */
        public String m27534d() {
            return this.f35129b;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!C6288b.f35127a) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f35129b.equals(typeVariable.getName()) && this.f35128a.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof C6290d)) {
                return false;
            }
            C6289c c6289c = ((C6290d) Proxy.getInvocationHandler(obj)).f35132e;
            return this.f35129b.equals(c6289c.m27533c()) && this.f35128a.equals(c6289c.m27532b()) && this.f35130c.equals(c6289c.f35130c);
        }

        public int hashCode() {
            return this.f35129b.hashCode() ^ this.f35128a.hashCode();
        }

        public String toString() {
            return this.f35129b;
        }
    }

    /* renamed from: com.google.common.reflect.Types$d */
    /* loaded from: classes6.dex */
    public static final class C6290d implements InvocationHandler {

        /* renamed from: f */
        public static final ImmutableMap<String, Method> f35131f;

        /* renamed from: e */
        public final C6289c<?> f35132e;

        static {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            for (Method method : C6289c.class.getMethods()) {
                if (method.getDeclaringClass().equals(C6289c.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    builder.put(method.getName(), method);
                }
            }
            f35131f = builder.buildKeepingLast();
        }

        public C6290d(C6289c<?> c6289c) {
            this.f35132e = c6289c;
        }

        @Override // java.lang.reflect.InvocationHandler
        @CheckForNull
        public Object invoke(Object obj, Method method, @CheckForNull Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f35131f.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.f35132e, objArr);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
    }

    /* renamed from: f */
    public static void m27517f(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Preconditions.checkArgument(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* renamed from: g */
    public static Iterable<Type> m27518g(Iterable<Type> iterable) {
        return Iterables.filter(iterable, Predicates.not(Predicates.equalTo(Object.class)));
    }

    /* renamed from: h */
    public static Class<?> m27519h(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    @CheckForNull
    /* renamed from: i */
    public static Type m27520i(Type type) {
        Preconditions.checkNotNull(type);
        AtomicReference atomicReference = new AtomicReference();
        new C6287a(atomicReference).m53317a(type);
        return (Type) atomicReference.get();
    }

    /* renamed from: j */
    public static Type m27521j(Type type) {
        if (!(type instanceof WildcardType)) {
            return JavaVersion.CURRENT.newArrayType(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        Preconditions.checkArgument(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return m27528q(m27521j(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        Preconditions.checkArgument(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return m27526o(m27521j(upperBounds[0]));
    }

    /* renamed from: k */
    public static <D extends GenericDeclaration> TypeVariable<D> m27522k(D d, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return m27525n(d, str, typeArr);
    }

    /* renamed from: l */
    public static ParameterizedType m27523l(Class<?> cls, Type... typeArr) {
        return new ParameterizedTypeImpl(ClassOwnership.JVM_BEHAVIOR.getOwnerType(cls), cls, typeArr);
    }

    /* renamed from: m */
    public static ParameterizedType m27524m(@CheckForNull Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return m27523l(cls, typeArr);
        }
        Preconditions.checkNotNull(typeArr);
        Preconditions.checkArgument(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }

    /* renamed from: n */
    public static <D extends GenericDeclaration> TypeVariable<D> m27525n(D d, String str, Type[] typeArr) {
        return (TypeVariable) Reflection.newProxy(TypeVariable.class, new C6290d(new C6289c(d, str, typeArr)));
    }

    @VisibleForTesting
    /* renamed from: o */
    public static WildcardType m27526o(Type type) {
        return new WildcardTypeImpl(new Type[0], new Type[]{type});
    }

    @CheckForNull
    /* renamed from: p */
    public static Type m27527p(Type[] typeArr) {
        for (Type type : typeArr) {
            Type m27520i = m27520i(type);
            if (m27520i != null) {
                if (m27520i instanceof Class) {
                    Class cls = (Class) m27520i;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return m27526o(m27520i);
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: q */
    public static WildcardType m27528q(Type type) {
        return new WildcardTypeImpl(new Type[]{type}, new Type[]{Object.class});
    }

    /* renamed from: r */
    public static Type[] m27529r(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    /* renamed from: s */
    public static String m27530s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
