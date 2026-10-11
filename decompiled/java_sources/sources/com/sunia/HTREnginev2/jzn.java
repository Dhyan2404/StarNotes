package com.sunia.HTREnginev2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import okhttp3.ResponseBody;
import okio.Buffer;

/* loaded from: classes16.dex */
public final class jzn {

    /* renamed from: a */
    public static final Type[] f74851a = new Type[0];

    /* renamed from: com.sunia.HTREnginev2.jzn$a */
    /* loaded from: classes16.dex */
    public static final class C13958a implements GenericArrayType {

        /* renamed from: e */
        public final Type f74852e;

        public C13958a(Type type) {
            this.f74852e = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && jzn.m55081f(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f74852e;
        }

        public int hashCode() {
            return this.f74852e.hashCode();
        }

        public String toString() {
            return jzn.m55093r(this.f74852e) + "[]";
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jzn$b */
    /* loaded from: classes16.dex */
    public static final class C13959b implements ParameterizedType {

        /* renamed from: e */
        public final Type f74853e;

        /* renamed from: f */
        public final Type f74854f;

        /* renamed from: g */
        public final Type[] f74855g;

        public C13959b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            this.f74853e = type;
            this.f74854f = type2;
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f74855g = typeArr2;
            for (Type type3 : typeArr2) {
                type3.getClass();
                jzn.m55078c(type3);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && jzn.m55081f(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f74855g.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f74853e;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f74854f;
        }

        public int hashCode() {
            return jzn.m55088m(this.f74853e) ^ (Arrays.hashCode(this.f74855g) ^ this.f74854f.hashCode());
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.f74855g.length + 1) * 30);
            sb.append(jzn.m55093r(this.f74854f));
            if (this.f74855g.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(jzn.m55093r(this.f74855g[0]));
            for (int i = 1; i < this.f74855g.length; i++) {
                sb.append(", ");
                sb.append(jzn.m55093r(this.f74855g[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.jzn$c */
    /* loaded from: classes16.dex */
    public static final class C13960c implements WildcardType {

        /* renamed from: e */
        public final Type f74856e;

        /* renamed from: f */
        public final Type f74857f;

        public C13960c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length != 1) {
                Type type = typeArr[0];
                type.getClass();
                jzn.m55078c(type);
                this.f74857f = null;
                this.f74856e = typeArr[0];
                return;
            }
            Type type2 = typeArr2[0];
            type2.getClass();
            jzn.m55078c(type2);
            if (typeArr[0] != Object.class) {
                throw new IllegalArgumentException();
            }
            this.f74857f = typeArr2[0];
            this.f74856e = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && jzn.m55081f(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f74857f;
            return type != null ? new Type[]{type} : jzn.f74851a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f74856e};
        }

        public int hashCode() {
            Type type = this.f74857f;
            return (this.f74856e.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public String toString() {
            if (this.f74857f != null) {
                return "? super " + jzn.m55093r(this.f74857f);
            }
            if (this.f74856e == Object.class) {
                return "?";
            }
            return "? extends " + jzn.m55093r(this.f74856e);
        }
    }

    /* renamed from: a */
    public static ResponseBody m55076a(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.getSource().readAll(buffer);
        return ResponseBody.create(responseBody.getF103417f(), responseBody.getContentLength(), buffer);
    }

    /* renamed from: b */
    public static <T> T m55077b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static void m55078c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: d */
    public static Class<?> m55079d(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    /* renamed from: e */
    public static boolean m55080e(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: f */
    public static boolean m55081f(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return m55080e(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return m55081f(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    /* renamed from: g */
    public static Type m55082g(Type type) {
        if (type instanceof ParameterizedType) {
            return m55084i(0, (ParameterizedType) type);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }

    /* renamed from: h */
    public static Type m55083h(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls3 = interfaces[i];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return m55083h(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m55083h(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: i */
    public static Type m55084i(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i >= 0 && i < actualTypeArguments.length) {
            Type type = actualTypeArguments[i];
            return type instanceof WildcardType ? ((WildcardType) type).getUpperBounds()[0] : type;
        }
        throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    /* renamed from: j */
    public static Class<?> m55085j(Type type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(m55085j(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return m55085j(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
    }

    /* renamed from: k */
    public static Type m55086k(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return m55091p(type, cls, m55083h(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: l */
    public static boolean m55087l(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (m55087l(type2)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return m55087l(((GenericArrayType) type).getGenericComponentType());
        }
        if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
            return true;
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    /* renamed from: m */
    public static int m55088m(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: n */
    public static int m55089n(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    /* renamed from: o */
    public static boolean m55090o(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r10 = r10;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type m55091p(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10) {
        /*
        L0:
            boolean r0 = r10 instanceof java.lang.reflect.TypeVariable
            if (r0 == 0) goto Lf
            java.lang.reflect.TypeVariable r10 = (java.lang.reflect.TypeVariable) r10
            java.lang.reflect.Type r0 = m55092q(r8, r9, r10)
            if (r0 != r10) goto Ld
            return r0
        Ld:
            r10 = r0
            goto L0
        Lf:
            boolean r0 = r10 instanceof java.lang.Class
            if (r0 == 0) goto L2d
            r0 = r10
            java.lang.Class r0 = (java.lang.Class) r0
            boolean r1 = r0.isArray()
            if (r1 == 0) goto L2d
            java.lang.Class r10 = r0.getComponentType()
            java.lang.reflect.Type r8 = m55091p(r8, r9, r10)
            if (r10 != r8) goto L27
            goto L2c
        L27:
            com.sunia.HTREnginev2.jzn$a r0 = new com.sunia.HTREnginev2.jzn$a
            r0.<init>(r8)
        L2c:
            return r0
        L2d:
            boolean r0 = r10 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L44
            java.lang.reflect.GenericArrayType r10 = (java.lang.reflect.GenericArrayType) r10
            java.lang.reflect.Type r0 = r10.getGenericComponentType()
            java.lang.reflect.Type r8 = m55091p(r8, r9, r0)
            if (r0 != r8) goto L3e
            goto L43
        L3e:
            com.sunia.HTREnginev2.jzn$a r10 = new com.sunia.HTREnginev2.jzn$a
            r10.<init>(r8)
        L43:
            return r10
        L44:
            boolean r0 = r10 instanceof java.lang.reflect.ParameterizedType
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L86
            java.lang.reflect.ParameterizedType r10 = (java.lang.reflect.ParameterizedType) r10
            java.lang.reflect.Type r0 = r10.getOwnerType()
            java.lang.reflect.Type r3 = m55091p(r8, r9, r0)
            if (r3 == r0) goto L58
            r0 = r1
            goto L59
        L58:
            r0 = r2
        L59:
            java.lang.reflect.Type[] r4 = r10.getActualTypeArguments()
            int r5 = r4.length
        L5e:
            if (r2 >= r5) goto L79
            r6 = r4[r2]
            java.lang.reflect.Type r6 = m55091p(r8, r9, r6)
            r7 = r4[r2]
            if (r6 == r7) goto L76
            if (r0 != 0) goto L74
            java.lang.Object r0 = r4.clone()
            r4 = r0
            java.lang.reflect.Type[] r4 = (java.lang.reflect.Type[]) r4
            r0 = r1
        L74:
            r4[r2] = r6
        L76:
            int r2 = r2 + 1
            goto L5e
        L79:
            if (r0 == 0) goto L85
            com.sunia.HTREnginev2.jzn$b r8 = new com.sunia.HTREnginev2.jzn$b
            java.lang.reflect.Type r9 = r10.getRawType()
            r8.<init>(r3, r9, r4)
            r10 = r8
        L85:
            return r10
        L86:
            boolean r0 = r10 instanceof java.lang.reflect.WildcardType
            if (r0 == 0) goto Lca
            java.lang.reflect.WildcardType r10 = (java.lang.reflect.WildcardType) r10
            java.lang.reflect.Type[] r0 = r10.getLowerBounds()
            java.lang.reflect.Type[] r3 = r10.getUpperBounds()
            int r4 = r0.length
            if (r4 != r1) goto Lb1
            r3 = r0[r2]
            java.lang.reflect.Type r8 = m55091p(r8, r9, r3)
            r9 = r0[r2]
            if (r8 == r9) goto Lca
            com.sunia.HTREnginev2.jzn$c r9 = new com.sunia.HTREnginev2.jzn$c
            java.lang.reflect.Type[] r10 = new java.lang.reflect.Type[r1]
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            r10[r2] = r0
            java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r1]
            r0[r2] = r8
            r9.<init>(r10, r0)
            return r9
        Lb1:
            int r0 = r3.length
            if (r0 != r1) goto Lca
            r0 = r3[r2]
            java.lang.reflect.Type r8 = m55091p(r8, r9, r0)
            r9 = r3[r2]
            if (r8 == r9) goto Lca
            com.sunia.HTREnginev2.jzn$c r9 = new com.sunia.HTREnginev2.jzn$c
            java.lang.reflect.Type[] r10 = new java.lang.reflect.Type[r1]
            r10[r2] = r8
            java.lang.reflect.Type[] r8 = com.sunia.HTREnginev2.jzn.f74851a
            r9.<init>(r10, r8)
            return r9
        Lca:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.jzn.m55091p(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type):java.lang.reflect.Type");
    }

    /* renamed from: q */
    public static Type m55092q(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> m55079d = m55079d(typeVariable);
        if (m55079d == null) {
            return typeVariable;
        }
        Type m55083h = m55083h(type, cls, m55079d);
        if (!(m55083h instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) m55083h).getActualTypeArguments()[m55089n(m55079d.getTypeParameters(), typeVariable)];
    }

    /* renamed from: r */
    public static String m55093r(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: s */
    public static <T> void m55094s(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (cls.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }
}
