package com.google.common.reflect;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.Invokable;
import com.google.common.reflect.TypeResolver;
import com.google.common.reflect.Types;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.bpn;
import com.sunia.HTREnginev2.onf;
import com.sunia.HTREnginev2.son;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public abstract class TypeToken<T> extends son<T> implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;

    @CheckForNull
    private transient TypeResolver covariantTypeResolver;

    @CheckForNull
    private transient TypeResolver invariantTypeResolver;
    private final Type runtimeType;

    /* loaded from: classes6.dex */
    public final class ClassSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> classes;

        private ClassSet() {
            super();
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) AbstractC6276f.f35121b.m27499a().mo27501c(TypeToken.this.getRawTypes()));
        }

        public /* synthetic */ ClassSet(TypeToken typeToken, C6271a c6271a) {
            this();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.classes;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(AbstractC6276f.f35120a.m27499a().m27502d(TypeToken.this)).filter(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
            this.classes = set;
            return set;
        }
    }

    /* loaded from: classes6.dex */
    public static final class SimpleTypeToken<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        public SimpleTypeToken(Type type) {
            super(type, null);
        }
    }

    /* loaded from: classes6.dex */
    public enum TypeFilter implements Predicate<TypeToken<?>> {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD { // from class: com.google.common.reflect.TypeToken.TypeFilter.1
            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).runtimeType instanceof TypeVariable) || (((TypeToken) typeToken).runtimeType instanceof WildcardType)) ? false : true;
            }
        },
        INTERFACE_ONLY { // from class: com.google.common.reflect.TypeToken.TypeFilter.2
            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        };

        /* synthetic */ TypeFilter(C6271a c6271a) {
            this();
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$a */
    /* loaded from: classes6.dex */
    public class C6271a extends Invokable.C6262b<T> {
        public C6271a(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.Invokable.C6262b, com.google.common.reflect.Invokable
        /* renamed from: b */
        public Type[] mo27448b() {
            return TypeToken.this.getCovariantTypeResolver().m27472k(super.mo27448b());
        }

        @Override // com.google.common.reflect.Invokable.C6262b, com.google.common.reflect.Invokable
        /* renamed from: c */
        public Type[] mo27449c() {
            return TypeToken.this.getInvariantTypeResolver().m27472k(super.mo27449c());
        }

        @Override // com.google.common.reflect.Invokable.C6262b, com.google.common.reflect.Invokable
        /* renamed from: d */
        public Type mo27450d() {
            return TypeToken.this.getCovariantTypeResolver().resolveType(super.mo27450d());
        }

        @Override // com.google.common.reflect.Invokable
        public TypeToken<T> getOwnerType() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.Invokable
        public String toString() {
            String valueOf = String.valueOf(getOwnerType());
            String invokable = super.toString();
            StringBuilder sb = new StringBuilder(valueOf.length() + 1 + String.valueOf(invokable).length());
            sb.append(valueOf);
            sb.append(".");
            sb.append(invokable);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$b */
    /* loaded from: classes6.dex */
    public class C6272b extends Invokable.C6261a<T> {
        public C6272b(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.Invokable.C6261a, com.google.common.reflect.Invokable
        /* renamed from: b */
        public Type[] mo27448b() {
            return TypeToken.this.getCovariantTypeResolver().m27472k(super.mo27448b());
        }

        @Override // com.google.common.reflect.Invokable.C6261a, com.google.common.reflect.Invokable
        /* renamed from: c */
        public Type[] mo27449c() {
            return TypeToken.this.getInvariantTypeResolver().m27472k(super.mo27449c());
        }

        @Override // com.google.common.reflect.Invokable.C6261a, com.google.common.reflect.Invokable
        /* renamed from: d */
        public Type mo27450d() {
            return TypeToken.this.getCovariantTypeResolver().resolveType(super.mo27450d());
        }

        @Override // com.google.common.reflect.Invokable
        public TypeToken<T> getOwnerType() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.Invokable
        public String toString() {
            String valueOf = String.valueOf(getOwnerType());
            String join = Joiner.m25799on(", ").join(mo27449c());
            StringBuilder sb = new StringBuilder(valueOf.length() + 2 + String.valueOf(join).length());
            sb.append(valueOf);
            sb.append(MotionUtils.f31761c);
            sb.append(join);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$c */
    /* loaded from: classes6.dex */
    public class C6273c extends bpn {
        public C6273c() {
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: c */
        public void mo27476c(GenericArrayType genericArrayType) {
            m53317a(genericArrayType.getGenericComponentType());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: d */
        public void mo27477d(ParameterizedType parameterizedType) {
            m53317a(parameterizedType.getActualTypeArguments());
            m53317a(parameterizedType.getOwnerType());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: e */
        public void mo27478e(TypeVariable<?> typeVariable) {
            String valueOf = String.valueOf(TypeToken.this.runtimeType);
            StringBuilder sb = new StringBuilder(valueOf.length() + 58);
            sb.append(valueOf);
            sb.append("contains a type variable and is not safe for the operation");
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: f */
        public void mo27479f(WildcardType wildcardType) {
            m53317a(wildcardType.getLowerBounds());
            m53317a(wildcardType.getUpperBounds());
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$d */
    /* loaded from: classes6.dex */
    public class C6274d extends bpn {

        /* renamed from: b */
        public final /* synthetic */ ImmutableSet.Builder f35117b;

        public C6274d(TypeToken typeToken, ImmutableSet.Builder builder) {
            this.f35117b = builder;
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: b */
        public void mo27475b(Class<?> cls) {
            this.f35117b.add((ImmutableSet.Builder) cls);
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: c */
        public void mo27476c(GenericArrayType genericArrayType) {
            this.f35117b.add((ImmutableSet.Builder) Types.m27519h(TypeToken.m27495of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: d */
        public void mo27477d(ParameterizedType parameterizedType) {
            this.f35117b.add((ImmutableSet.Builder) parameterizedType.getRawType());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: e */
        public void mo27478e(TypeVariable<?> typeVariable) {
            m53317a(typeVariable.getBounds());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: f */
        public void mo27479f(WildcardType wildcardType) {
            m53317a(wildcardType.getUpperBounds());
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$e */
    /* loaded from: classes6.dex */
    public static class C6275e {

        /* renamed from: a */
        public final Type[] f35118a;

        /* renamed from: b */
        public final boolean f35119b;

        public C6275e(Type[] typeArr, boolean z) {
            this.f35118a = typeArr;
            this.f35119b = z;
        }

        /* renamed from: a */
        public boolean m27496a(Type type) {
            for (Type type2 : this.f35118a) {
                boolean isSubtypeOf = TypeToken.m27495of(type2).isSubtypeOf(type);
                boolean z = this.f35119b;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f35119b;
        }

        /* renamed from: b */
        public boolean m27497b(Type type) {
            TypeToken<?> m27495of = TypeToken.m27495of(type);
            for (Type type2 : this.f35118a) {
                boolean isSubtypeOf = m27495of.isSubtypeOf(type2);
                boolean z = this.f35119b;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.f35119b;
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6276f<K> {

        /* renamed from: a */
        public static final AbstractC6276f<TypeToken<?>> f35120a = new a();

        /* renamed from: b */
        public static final AbstractC6276f<Class<?>> f35121b = new b();

        /* renamed from: com.google.common.reflect.TypeToken$f$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6276f<TypeToken<?>> {
            public a() {
                super(null);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public Iterable<? extends TypeToken<?>> mo27503e(TypeToken<?> typeToken) {
                return typeToken.getGenericInterfaces();
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public Class<?> mo27504f(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            @CheckForNull
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public TypeToken<?> mo27505g(TypeToken<?> typeToken) {
                return typeToken.getGenericSuperclass();
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractC6276f<Class<?>> {
            public b() {
                super(null);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: i, reason: merged with bridge method [inline-methods] */
            public Iterable<? extends Class<?>> mo27503e(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: j, reason: merged with bridge method [inline-methods] */
            public Class<?> mo27504f(Class<?> cls) {
                return cls;
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            @CheckForNull
            /* renamed from: k, reason: merged with bridge method [inline-methods] */
            public Class<?> mo27505g(Class<?> cls) {
                return cls.getSuperclass();
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$c */
        /* loaded from: classes6.dex */
        public class c extends e<K> {
            public c(AbstractC6276f abstractC6276f, AbstractC6276f abstractC6276f2) {
                super(abstractC6276f2);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: c */
            public ImmutableList<K> mo27501c(Iterable<? extends K> iterable) {
                ImmutableList.Builder builder = ImmutableList.builder();
                for (K k : iterable) {
                    if (!mo27504f(k).isInterface()) {
                        builder.add((ImmutableList.Builder) k);
                    }
                }
                return super.mo27501c(builder.build());
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f.e, com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: e */
            public Iterable<? extends K> mo27503e(K k) {
                return ImmutableSet.m26234of();
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$d */
        /* loaded from: classes6.dex */
        public class d extends Ordering<K> {

            /* renamed from: e */
            public final /* synthetic */ Comparator f35122e;

            /* renamed from: f */
            public final /* synthetic */ Map f35123f;

            public d(Comparator comparator, Map map) {
                this.f35122e = comparator;
                this.f35123f = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.Ordering, java.util.Comparator
            public int compare(K k, K k2) {
                Comparator comparator = this.f35122e;
                Object obj = this.f35123f.get(k);
                Objects.requireNonNull(obj);
                Object obj2 = this.f35123f.get(k2);
                Objects.requireNonNull(obj2);
                return comparator.compare(obj, obj2);
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$f$e */
        /* loaded from: classes6.dex */
        public static class e<K> extends AbstractC6276f<K> {

            /* renamed from: c */
            public final AbstractC6276f<K> f35124c;

            public e(AbstractC6276f<K> abstractC6276f) {
                super(null);
                this.f35124c = abstractC6276f;
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: e */
            public Iterable<? extends K> mo27503e(K k) {
                return this.f35124c.mo27503e(k);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            /* renamed from: f */
            public Class<?> mo27504f(K k) {
                return this.f35124c.mo27504f(k);
            }

            @Override // com.google.common.reflect.TypeToken.AbstractC6276f
            @CheckForNull
            /* renamed from: g */
            public K mo27505g(K k) {
                return this.f35124c.mo27505g(k);
            }
        }

        public AbstractC6276f() {
        }

        /* renamed from: h */
        public static <K, V> ImmutableList<K> m27498h(Map<K, V> map, Comparator<? super V> comparator) {
            return (ImmutableList<K>) new d(comparator, map).immutableSortedCopy(map.keySet());
        }

        /* renamed from: a */
        public final AbstractC6276f<K> m27499a() {
            return new c(this, this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        /* renamed from: b */
        public final int m27500b(K k, Map<? super K, Integer> map) {
            Integer num = map.get(k);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = mo27504f(k).isInterface();
            Iterator<? extends K> it2 = mo27503e(k).iterator();
            int i = isInterface;
            while (it2.hasNext()) {
                i = Math.max(i, m27500b(it2.next(), map));
            }
            K mo27505g = mo27505g(k);
            int i2 = i;
            if (mo27505g != null) {
                i2 = Math.max(i, m27500b(mo27505g, map));
            }
            int i3 = i2 + 1;
            map.put(k, Integer.valueOf(i3));
            return i3;
        }

        /* renamed from: c */
        public ImmutableList<K> mo27501c(Iterable<? extends K> iterable) {
            HashMap newHashMap = Maps.newHashMap();
            Iterator<? extends K> it2 = iterable.iterator();
            while (it2.hasNext()) {
                m27500b(it2.next(), newHashMap);
            }
            return m27498h(newHashMap, Ordering.natural().reverse());
        }

        /* renamed from: d */
        public final ImmutableList<K> m27502d(K k) {
            return mo27501c(ImmutableList.m26162of(k));
        }

        /* renamed from: e */
        public abstract Iterable<? extends K> mo27503e(K k);

        /* renamed from: f */
        public abstract Class<?> mo27504f(K k);

        @CheckForNull
        /* renamed from: g */
        public abstract K mo27505g(K k);

        public /* synthetic */ AbstractC6276f(C6271a c6271a) {
            this();
        }
    }

    public /* synthetic */ TypeToken(Type type, C6271a c6271a) {
        this(type);
    }

    private static C6275e any(Type[] typeArr) {
        return new C6275e(typeArr, true);
    }

    @CheckForNull
    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) m27495of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> m27495of = m27495of(type);
            if (m27495of.getRawType().isInterface()) {
                builder.add((ImmutableList.Builder) m27495of);
            }
        }
        return builder.build();
    }

    private static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? canonicalizeWildcardType(typeVariable, (WildcardType) type) : canonicalizeWildcardsInType(type);
    }

    private static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).m27496a(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new Types.WildcardTypeImpl(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            actualTypeArguments[i] = canonicalizeTypeArg(typeParameters[i], actualTypeArguments[i]);
        }
        return Types.m27524m(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Type canonicalizeWildcardsInType(Type type) {
        return type instanceof ParameterizedType ? canonicalizeWildcardsInParameterizedType((ParameterizedType) type) : type instanceof GenericArrayType ? Types.m27521j(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static C6275e every(Type[] typeArr) {
        return new C6275e(typeArr, false);
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType != null) {
            TypeToken<?> componentType2 = getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? extends T>) m27495of(newArrayClassOrGenericArrayType(componentType2.getSubtype(componentType).runtimeType));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb = new StringBuilder(valueOf.length() + 36 + valueOf2.length());
        sb.append(valueOf);
        sb.append(" does not appear to be a subtype of ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        if (componentType != 0) {
            Class<?> componentType2 = cls.getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? super T>) m27495of(newArrayClassOrGenericArrayType(componentType.getSupertype(componentType2).runtimeType));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb.append(valueOf);
        sb.append(" isn't a super type of ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeResolver getCovariantTypeResolver() {
        TypeResolver typeResolver = this.covariantTypeResolver;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver m27465d = TypeResolver.m27465d(this.runtimeType);
        this.covariantTypeResolver = m27465d;
        return m27465d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeResolver getInvariantTypeResolver() {
        TypeResolver typeResolver = this.invariantTypeResolver;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver m27467f = TypeResolver.m27467f(this.runtimeType);
        this.invariantTypeResolver = m27467f;
        return m27467f;
    }

    @CheckForNull
    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> getRawTypes() {
        ImmutableSet.Builder builder = ImmutableSet.builder();
        new C6274d(this, builder).m53317a(this.runtimeType);
        return builder.build();
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) m27495of(typeArr[0]).getSubtype(cls);
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb.append(valueOf);
        sb.append(" isn't a subclass of ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> m27495of = m27495of(type);
            if (m27495of.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) m27495of.getSupertype(cls);
            }
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb.append(valueOf);
        sb.append(" isn't a super type of ");
        sb.append(valueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: is */
    private boolean m27493is(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
        }
        WildcardType canonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
        return every(canonicalizeWildcardType.getUpperBounds()).m27497b(this.runtimeType) && every(canonicalizeWildcardType.getLowerBounds()).m27496a(this.runtimeType);
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<TypeToken<? super T>> it2 = getTypes().iterator();
        while (it2.hasNext()) {
            Type ownerTypeIfPresent = it2.next().getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && m27495of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return m27495of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return m27494of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = m27495of(parameterizedType).getRawType();
        if (!someRawTypeIsSubclassOf(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!m27495of(getCovariantTypeResolver().resolveType(typeParameters[i])).m27493is(actualTypeArguments[i], typeParameters[i])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType());
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : m27495of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return m27495of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        }
        return false;
    }

    private boolean isWrapper() {
        return Primitives.allWrapperTypes().contains(this.runtimeType);
    }

    private static Type newArrayClassOrGenericArrayType(Type type) {
        return Types.JavaVersion.JAVA7.newArrayType(type);
    }

    /* renamed from: of */
    public static <T> TypeToken<T> m27494of(Class<T> cls) {
        return new SimpleTypeToken(cls);
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> m27495of = m27495of(getCovariantTypeResolver().resolveType(type));
        m27495of.covariantTypeResolver = this.covariantTypeResolver;
        m27495of.invariantTypeResolver = this.invariantTypeResolver;
        return m27495of;
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        TypeToken genericType = toGenericType(cls);
        return new TypeResolver().where(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).resolveType(genericType.runtimeType);
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        UnmodifiableIterator<Class<? super T>> it2 = getRawTypes().iterator();
        while (it2.hasNext()) {
            if (cls.isAssignableFrom(it2.next())) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    public static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) m27495of(Types.m27521j(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (TypeToken<? extends T>) m27495of(Types.m27524m(type, cls, typeParameters)) : m27494of((Class) cls);
    }

    @Beta
    public final Invokable<T, T> constructor(Constructor<?> constructor) {
        Preconditions.checkArgument(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new C6272b(constructor);
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    @CheckForNull
    public final TypeToken<?> getComponentType() {
        Type m27520i = Types.m27520i(this.runtimeType);
        if (m27520i == null) {
            return null;
        }
        return m27495of(m27520i);
    }

    public final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            builder.add((ImmutableList.Builder) resolveSupertype(type2));
        }
        return builder.build();
    }

    @CheckForNull
    public final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return getRawTypes().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        Preconditions.checkArgument(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        Preconditions.checkArgument(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) m27495of(resolveTypeArgsForSubclass(cls));
        Preconditions.checkArgument(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        Preconditions.checkArgument(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        return type instanceof TypeVariable ? getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds()) : type instanceof WildcardType ? getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds()) : cls.isArray() ? getArraySupertype(cls) : (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    @Beta
    public final Invokable<T, Object> method(Method method) {
        Preconditions.checkArgument(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new C6271a(method);
    }

    @CanIgnoreReturnValue
    public final TypeToken<T> rejectTypeVariables() {
        new C6273c().m53317a(this.runtimeType);
        return this;
    }

    public final TypeToken<?> resolveType(Type type) {
        Preconditions.checkNotNull(type);
        return m27495of(getInvariantTypeResolver().resolveType(type));
    }

    public String toString() {
        return Types.m27530s(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? m27494of(Primitives.unwrap((Class) this.runtimeType)) : this;
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, TypeToken<X> typeToken) {
        return new SimpleTypeToken(new TypeResolver().m27474m(ImmutableMap.m26186of(new TypeResolver.C6267d(typeParameter.f35102e), typeToken.runtimeType)).resolveType(this.runtimeType));
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? m27494of(Primitives.wrap((Class) this.runtimeType)) : this;
    }

    public Object writeReplace() {
        return m27495of(new TypeResolver().resolveType(this.runtimeType));
    }

    /* loaded from: classes6.dex */
    public final class InterfaceSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        private final transient TypeToken<T>.TypeSet allTypes;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> interfaces;

        public InterfaceSet(TypeToken<T>.TypeSet typeSet) {
            super();
            this.allTypes = typeSet;
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return FluentIterable.from(AbstractC6276f.f35121b.mo27501c(TypeToken.this.getRawTypes())).filter(new Predicate() { // from class: com.sunia.HTREnginev2.apn
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((Class) obj).isInterface();
                }
            }).toSet();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.interfaces;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(this.allTypes).filter(TypeFilter.INTERFACE_ONLY).toSet();
            this.interfaces = set;
            return set;
        }
    }

    /* loaded from: classes6.dex */
    public class TypeSet extends ForwardingSet<TypeToken<? super T>> implements Serializable {
        private static final long serialVersionUID = 0;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> types;

        public TypeSet() {
        }

        public TypeToken<T>.TypeSet classes() {
            return new ClassSet(TypeToken.this, null);
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new InterfaceSet(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) AbstractC6276f.f35121b.mo27501c(TypeToken.this.getRawTypes()));
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(AbstractC6276f.f35120a.m27502d(TypeToken.this)).filter(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
            this.types = set;
            return set;
        }
    }

    public TypeToken() {
        Type capture = capture();
        this.runtimeType = capture;
        Preconditions.checkState(!(capture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", capture);
    }

    /* renamed from: of */
    public static TypeToken<?> m27495of(Type type) {
        return new SimpleTypeToken(type);
    }

    public final boolean isSubtypeOf(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).m27497b(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).m27496a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).m27496a(type);
        }
        if (type2 instanceof GenericArrayType) {
            return m27495of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        }
        if (type instanceof Class) {
            return someRawTypeIsSubclassOf((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return isSubtypeOfParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return isSubtypeOfArrayType((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isSupertypeOf(Type type) {
        return m27495of(type).isSubtypeOf(getType());
    }

    public TypeToken(Class<?> cls) {
        Type capture = super.capture();
        if (capture instanceof Class) {
            this.runtimeType = capture;
        } else {
            this.runtimeType = TypeResolver.m27465d(cls).resolveType(capture);
        }
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, Class<X> cls) {
        return where(typeParameter, m27494of((Class) cls));
    }

    private TypeToken(Type type) {
        this.runtimeType = (Type) Preconditions.checkNotNull(type);
    }
}
