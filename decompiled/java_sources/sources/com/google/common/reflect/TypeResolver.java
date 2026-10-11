package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.reflect.Types;
import com.sunia.HTREnginev2.bpn;
import com.sunia.HTREnginev2.onf;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;

@onf
/* loaded from: classes6.dex */
public final class TypeResolver {

    /* renamed from: a */
    public final C6266c f35103a;

    /* renamed from: com.google.common.reflect.TypeResolver$a */
    /* loaded from: classes6.dex */
    public class C6264a extends bpn {

        /* renamed from: b */
        public final /* synthetic */ Map f35104b;

        /* renamed from: c */
        public final /* synthetic */ Type f35105c;

        public C6264a(Map map, Type type) {
            this.f35104b = map;
            this.f35105c = type;
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: b */
        public void mo27475b(Class<?> cls) {
            if (this.f35105c instanceof WildcardType) {
                return;
            }
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(this.f35105c);
            StringBuilder sb = new StringBuilder(valueOf.length() + 25 + valueOf2.length());
            sb.append("No type mapping from ");
            sb.append(valueOf);
            sb.append(" to ");
            sb.append(valueOf2);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: c */
        public void mo27476c(GenericArrayType genericArrayType) {
            Type type = this.f35105c;
            if (type instanceof WildcardType) {
                return;
            }
            Type m27520i = Types.m27520i(type);
            Preconditions.checkArgument(m27520i != null, "%s is not an array type.", this.f35105c);
            TypeResolver.m27468g(this.f35104b, genericArrayType.getGenericComponentType(), m27520i);
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: d */
        public void mo27477d(ParameterizedType parameterizedType) {
            Type type = this.f35105c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) TypeResolver.m27466e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                TypeResolver.m27468g(this.f35104b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            Preconditions.checkArgument(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f35105c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            Preconditions.checkArgument(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i = 0; i < actualTypeArguments.length; i++) {
                TypeResolver.m27468g(this.f35104b, actualTypeArguments[i], actualTypeArguments2[i]);
            }
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: e */
        public void mo27478e(TypeVariable<?> typeVariable) {
            this.f35104b.put(new C6267d(typeVariable), this.f35105c);
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: f */
        public void mo27479f(WildcardType wildcardType) {
            Type type = this.f35105c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                Preconditions.checkArgument(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f35105c);
                for (int i = 0; i < upperBounds.length; i++) {
                    TypeResolver.m27468g(this.f35104b, upperBounds[i], upperBounds2[i]);
                }
                for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                    TypeResolver.m27468g(this.f35104b, lowerBounds[i2], lowerBounds2[i2]);
                }
            }
        }
    }

    /* renamed from: com.google.common.reflect.TypeResolver$b */
    /* loaded from: classes6.dex */
    public static final class C6265b extends bpn {

        /* renamed from: b */
        public final Map<C6267d, Type> f35106b = Maps.newHashMap();

        /* renamed from: g */
        public static ImmutableMap<C6267d, Type> m27480g(Type type) {
            Preconditions.checkNotNull(type);
            C6265b c6265b = new C6265b();
            c6265b.m53317a(type);
            return ImmutableMap.copyOf((Map) c6265b.f35106b);
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: b */
        public void mo27475b(Class<?> cls) {
            m53317a(cls.getGenericSuperclass());
            m53317a(cls.getGenericInterfaces());
        }

        @Override // com.sunia.HTREnginev2.bpn
        /* renamed from: d */
        public void mo27477d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Preconditions.checkState(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                m27481h(new C6267d(typeParameters[i]), actualTypeArguments[i]);
            }
            m53317a(cls);
            m53317a(parameterizedType.getOwnerType());
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

        /* renamed from: h */
        public final void m27481h(C6267d c6267d, Type type) {
            if (this.f35106b.containsKey(c6267d)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (c6267d.m27486a(type2)) {
                    while (type != null) {
                        type = this.f35106b.remove(C6267d.m27485c(type));
                    }
                    return;
                }
                type2 = this.f35106b.get(C6267d.m27485c(type2));
            }
            this.f35106b.put(c6267d, type);
        }
    }

    /* renamed from: com.google.common.reflect.TypeResolver$d */
    /* loaded from: classes6.dex */
    public static final class C6267d {

        /* renamed from: a */
        public final TypeVariable<?> f35110a;

        public C6267d(TypeVariable<?> typeVariable) {
            this.f35110a = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        @CheckForNull
        /* renamed from: c */
        public static C6267d m27485c(Type type) {
            if (type instanceof TypeVariable) {
                return new C6267d((TypeVariable) type);
            }
            return null;
        }

        /* renamed from: a */
        public boolean m27486a(Type type) {
            if (type instanceof TypeVariable) {
                return m27487b((TypeVariable) type);
            }
            return false;
        }

        /* renamed from: b */
        public final boolean m27487b(TypeVariable<?> typeVariable) {
            return this.f35110a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f35110a.getName().equals(typeVariable.getName());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C6267d) {
                return m27487b(((C6267d) obj).f35110a);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.f35110a.getGenericDeclaration(), this.f35110a.getName());
        }

        public String toString() {
            return this.f35110a.toString();
        }
    }

    /* renamed from: com.google.common.reflect.TypeResolver$e */
    /* loaded from: classes6.dex */
    public static class C6268e {

        /* renamed from: b */
        public static final C6268e f35111b = new C6268e();

        /* renamed from: a */
        public final AtomicInteger f35112a;

        /* renamed from: com.google.common.reflect.TypeResolver$e$a */
        /* loaded from: classes6.dex */
        public class a extends C6268e {

            /* renamed from: c */
            public final /* synthetic */ TypeVariable f35113c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(C6268e c6268e, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f35113c = typeVariable;
            }

            @Override // com.google.common.reflect.TypeResolver.C6268e
            /* renamed from: b */
            public TypeVariable<?> mo27489b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f35113c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.mo27489b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        public /* synthetic */ C6268e(AtomicInteger atomicInteger, C6264a c6264a) {
            this(atomicInteger);
        }

        /* renamed from: a */
        public final Type m27488a(Type type) {
            Preconditions.checkNotNull(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return Types.m27521j(m27492e().m27488a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (!(type instanceof ParameterizedType)) {
                if (!(type instanceof WildcardType)) {
                    throw new AssertionError("must have been one of the known types");
                }
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? mo27489b(wildcardType.getUpperBounds()) : type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable<?>[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i = 0; i < actualTypeArguments.length; i++) {
                actualTypeArguments[i] = m27491d(typeParameters[i]).m27488a(actualTypeArguments[i]);
            }
            return Types.m27524m(m27492e().m27490c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
        }

        /* renamed from: b */
        public TypeVariable<?> mo27489b(Type[] typeArr) {
            int incrementAndGet = this.f35112a.incrementAndGet();
            String join = Joiner.m25798on('&').join(typeArr);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 33);
            sb.append("capture#");
            sb.append(incrementAndGet);
            sb.append("-of ? extends ");
            sb.append(join);
            return Types.m27522k(C6268e.class, sb.toString(), typeArr);
        }

        @CheckForNull
        /* renamed from: c */
        public final Type m27490c(@CheckForNull Type type) {
            if (type == null) {
                return null;
            }
            return m27488a(type);
        }

        /* renamed from: d */
        public final C6268e m27491d(TypeVariable<?> typeVariable) {
            return new a(this, this.f35112a, typeVariable);
        }

        /* renamed from: e */
        public final C6268e m27492e() {
            return new C6268e(this.f35112a);
        }

        public C6268e() {
            this(new AtomicInteger());
        }

        public C6268e(AtomicInteger atomicInteger) {
            this.f35112a = atomicInteger;
        }
    }

    public /* synthetic */ TypeResolver(C6266c c6266c, C6264a c6264a) {
        this(c6266c);
    }

    /* renamed from: d */
    public static TypeResolver m27465d(Type type) {
        return new TypeResolver().m27474m(C6265b.m27480g(type));
    }

    /* renamed from: e */
    public static <T> T m27466e(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(obj);
            String simpleName = cls.getSimpleName();
            StringBuilder sb = new StringBuilder(valueOf.length() + 10 + simpleName.length());
            sb.append(valueOf);
            sb.append(" is not a ");
            sb.append(simpleName);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* renamed from: f */
    public static TypeResolver m27467f(Type type) {
        return new TypeResolver().m27474m(C6265b.m27480g(C6268e.f35111b.m27488a(type)));
    }

    /* renamed from: g */
    public static void m27468g(Map<C6267d, Type> map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new C6264a(map, type2).m53317a(type);
    }

    /* renamed from: h */
    public final Type m27469h(GenericArrayType genericArrayType) {
        return Types.m27521j(resolveType(genericArrayType.getGenericComponentType()));
    }

    /* renamed from: i */
    public final ParameterizedType m27470i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.m27524m(ownerType == null ? null : resolveType(ownerType), (Class) resolveType(parameterizedType.getRawType()), m27471j(parameterizedType.getActualTypeArguments()));
    }

    /* renamed from: j */
    public final Type[] m27471j(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }

    /* renamed from: k */
    public Type[] m27472k(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = resolveType(typeArr[i]);
        }
        return typeArr;
    }

    /* renamed from: l */
    public final WildcardType m27473l(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(m27471j(wildcardType.getLowerBounds()), m27471j(wildcardType.getUpperBounds()));
    }

    /* renamed from: m */
    public TypeResolver m27474m(Map<C6267d, ? extends Type> map) {
        return new TypeResolver(this.f35103a.m27484c(map));
    }

    public Type resolveType(Type type) {
        Preconditions.checkNotNull(type);
        return type instanceof TypeVariable ? this.f35103a.m27482a((TypeVariable) type) : type instanceof ParameterizedType ? m27470i((ParameterizedType) type) : type instanceof GenericArrayType ? m27469h((GenericArrayType) type) : type instanceof WildcardType ? m27473l((WildcardType) type) : type;
    }

    public TypeResolver where(Type type, Type type2) {
        HashMap newHashMap = Maps.newHashMap();
        m27468g(newHashMap, (Type) Preconditions.checkNotNull(type), (Type) Preconditions.checkNotNull(type2));
        return m27474m(newHashMap);
    }

    /* renamed from: com.google.common.reflect.TypeResolver$c */
    /* loaded from: classes6.dex */
    public static class C6266c {

        /* renamed from: a */
        public final ImmutableMap<C6267d, Type> f35107a;

        /* renamed from: com.google.common.reflect.TypeResolver$c$a */
        /* loaded from: classes6.dex */
        public class a extends C6266c {

            /* renamed from: b */
            public final /* synthetic */ TypeVariable f35108b;

            /* renamed from: c */
            public final /* synthetic */ C6266c f35109c;

            public a(C6266c c6266c, TypeVariable typeVariable, C6266c c6266c2) {
                this.f35108b = typeVariable;
                this.f35109c = c6266c2;
            }

            @Override // com.google.common.reflect.TypeResolver.C6266c
            /* renamed from: b */
            public Type mo27483b(TypeVariable<?> typeVariable, C6266c c6266c) {
                return typeVariable.getGenericDeclaration().equals(this.f35108b.getGenericDeclaration()) ? typeVariable : this.f35109c.mo27483b(typeVariable, c6266c);
            }
        }

        public C6266c() {
            this.f35107a = ImmutableMap.m26185of();
        }

        /* renamed from: a */
        public final Type m27482a(TypeVariable<?> typeVariable) {
            return mo27483b(typeVariable, new a(this, typeVariable, this));
        }

        /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.reflect.GenericDeclaration] */
        /* renamed from: b */
        public Type mo27483b(TypeVariable<?> typeVariable, C6266c c6266c) {
            Type type = this.f35107a.get(new C6267d(typeVariable));
            C6264a c6264a = null;
            if (type != null) {
                return new TypeResolver(c6266c, c6264a).resolveType(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] m27471j = new TypeResolver(c6266c, c6264a).m27471j(bounds);
            return (Types.C6288b.f35127a && Arrays.equals(bounds, m27471j)) ? typeVariable : Types.m27522k(typeVariable.getGenericDeclaration(), typeVariable.getName(), m27471j);
        }

        /* renamed from: c */
        public final C6266c m27484c(Map<C6267d, ? extends Type> map) {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            builder.putAll(this.f35107a);
            for (Map.Entry<C6267d, ? extends Type> entry : map.entrySet()) {
                C6267d key = entry.getKey();
                Type value = entry.getValue();
                Preconditions.checkArgument(!key.m27486a(value), "Type variable %s bound to itself", key);
                builder.put(key, value);
            }
            return new C6266c(builder.buildOrThrow());
        }

        public C6266c(ImmutableMap<C6267d, Type> immutableMap) {
            this.f35107a = immutableMap;
        }
    }

    public TypeResolver() {
        this.f35103a = new C6266c();
    }

    public TypeResolver(C6266c c6266c) {
        this.f35103a = c6266c;
    }
}
