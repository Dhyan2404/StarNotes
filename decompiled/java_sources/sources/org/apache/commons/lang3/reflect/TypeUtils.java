package org.apache.commons.lang3.reflect;

import com.onyx.android.sdk.base.data.font.TTCFont;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;
import org.apache.commons.lang3.builder.Builder;

/* loaded from: classes12.dex */
public class TypeUtils {
    public static final WildcardType WILDCARD_ALL = wildcardType().withUpperBounds(Object.class).build();

    /* loaded from: classes12.dex */
    public static class WildcardTypeBuilder implements Builder<WildcardType> {

        /* renamed from: e */
        public Type[] f107550e;

        /* renamed from: f */
        public Type[] f107551f;

        public /* synthetic */ WildcardTypeBuilder(C18957a c18957a) {
            this();
        }

        public WildcardTypeBuilder withLowerBounds(Type... typeArr) {
            this.f107551f = typeArr;
            return this;
        }

        public WildcardTypeBuilder withUpperBounds(Type... typeArr) {
            this.f107550e = typeArr;
            return this;
        }

        public WildcardTypeBuilder() {
        }

        @Override // org.apache.commons.lang3.builder.Builder
        public WildcardType build() {
            return new C18960d(this.f107550e, this.f107551f, null);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: org.apache.commons.lang3.reflect.TypeUtils$a */
    /* loaded from: classes12.dex */
    public static class C18957a<T> implements Typed<T> {

        /* renamed from: a */
        public final /* synthetic */ Type f107552a;

        public C18957a(Type type) {
            this.f107552a = type;
        }

        @Override // org.apache.commons.lang3.reflect.Typed
        public Type getType() {
            return this.f107552a;
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.TypeUtils$b */
    /* loaded from: classes12.dex */
    public static final class C18958b implements GenericArrayType {

        /* renamed from: e */
        public final Type f107553e;

        public /* synthetic */ C18958b(Type type, C18957a c18957a) {
            this(type);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof GenericArrayType) && TypeUtils.m67350h(this, (GenericArrayType) obj));
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f107553e;
        }

        public int hashCode() {
            return this.f107553e.hashCode() | 1072;
        }

        public String toString() {
            return TypeUtils.toString(this);
        }

        public C18958b(Type type) {
            this.f107553e = type;
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.TypeUtils$c */
    /* loaded from: classes12.dex */
    public static final class C18959c implements ParameterizedType {

        /* renamed from: e */
        public final Class<?> f107554e;

        /* renamed from: f */
        public final Type f107555f;

        /* renamed from: g */
        public final Type[] f107556g;

        public /* synthetic */ C18959c(Class cls, Type type, Type[] typeArr, C18957a c18957a) {
            this(cls, type, typeArr);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof ParameterizedType) && TypeUtils.m67351i(this, (ParameterizedType) obj));
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f107556g.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f107555f;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f107554e;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f107556g) | ((((this.f107554e.hashCode() | 1136) << 4) | Objects.hashCode(this.f107555f)) << 8);
        }

        public String toString() {
            return TypeUtils.toString(this);
        }

        public C18959c(Class<?> cls, Type type, Type[] typeArr) {
            this.f107554e = cls;
            this.f107555f = type;
            this.f107556g = (Type[]) typeArr.clone();
        }
    }

    /* renamed from: org.apache.commons.lang3.reflect.TypeUtils$d */
    /* loaded from: classes12.dex */
    public static final class C18960d implements WildcardType {

        /* renamed from: g */
        public static final Type[] f107557g = new Type[0];

        /* renamed from: e */
        public final Type[] f107558e;

        /* renamed from: f */
        public final Type[] f107559f;

        public /* synthetic */ C18960d(Type[] typeArr, Type[] typeArr2, C18957a c18957a) {
            this(typeArr, typeArr2);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof WildcardType) && TypeUtils.m67352j(this, (WildcardType) obj));
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return (Type[]) this.f107559f.clone();
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return (Type[]) this.f107558e.clone();
        }

        public int hashCode() {
            return Arrays.hashCode(this.f107559f) | ((Arrays.hashCode(this.f107558e) | 18688) << 8);
        }

        public String toString() {
            return TypeUtils.toString(this);
        }

        public C18960d(Type[] typeArr, Type[] typeArr2) {
            Type[] typeArr3 = f107557g;
            this.f107558e = (Type[]) ObjectUtils.defaultIfNull(typeArr, typeArr3);
            this.f107559f = (Type[]) ObjectUtils.defaultIfNull(typeArr2, typeArr3);
        }
    }

    /* renamed from: A */
    public static String m67336A(ParameterizedType parameterizedType) {
        StringBuilder sb = new StringBuilder();
        Type ownerType = parameterizedType.getOwnerType();
        Class cls = (Class) parameterizedType.getRawType();
        if (ownerType == null) {
            sb.append(cls.getName());
        } else {
            if (ownerType instanceof Class) {
                sb.append(((Class) ownerType).getName());
            } else {
                sb.append(ownerType.toString());
            }
            sb.append('.');
            sb.append(cls.getSimpleName());
        }
        int[] m67355m = m67355m(parameterizedType);
        if (m67355m.length > 0) {
            m67347e(sb, m67355m, parameterizedType.getActualTypeArguments());
        } else {
            sb.append('<');
            m67346d(sb, ", ", parameterizedType.getActualTypeArguments()).append('>');
        }
        return sb.toString();
    }

    /* renamed from: B */
    public static Type m67337B(Type type, Map<TypeVariable<?>, Type> map) {
        if (!(type instanceof TypeVariable) || map == null) {
            return type;
        }
        Type type2 = map.get(type);
        if (type2 != null) {
            return type2;
        }
        throw new IllegalArgumentException("missing assignment type for type variable " + type);
    }

    /* renamed from: C */
    public static <T> String m67338C(T t) {
        return t instanceof Type ? toString((Type) t) : t.toString();
    }

    /* renamed from: D */
    public static String m67339D(TypeVariable<?> typeVariable) {
        StringBuilder sb = new StringBuilder(typeVariable.getName());
        Type[] bounds = typeVariable.getBounds();
        if (bounds.length > 0 && (bounds.length != 1 || !Object.class.equals(bounds[0]))) {
            sb.append(" extends ");
            m67346d(sb, TTCFont.FONT_NAME_DELIMITER, typeVariable.getBounds());
        }
        return sb.toString();
    }

    /* renamed from: E */
    public static Type[] m67340E(Map<TypeVariable<?>, Type> map, Type[] typeArr) {
        int i = 0;
        while (i < typeArr.length) {
            Type unrollVariables = unrollVariables(map, typeArr[i]);
            if (unrollVariables == null) {
                typeArr = (Type[]) ArrayUtils.remove(typeArr, i);
                i--;
            } else {
                typeArr[i] = unrollVariables;
            }
            i++;
        }
        return typeArr;
    }

    /* renamed from: F */
    public static Type m67341F(TypeVariable<?> typeVariable, Map<TypeVariable<?>, Type> map) {
        Type type;
        while (true) {
            type = map.get(typeVariable);
            if (!(type instanceof TypeVariable) || type.equals(typeVariable)) {
                break;
            }
            typeVariable = (TypeVariable) type;
        }
        return type;
    }

    /* renamed from: G */
    public static String m67342G(WildcardType wildcardType) {
        StringBuilder sb = new StringBuilder();
        sb.append('?');
        Type[] lowerBounds = wildcardType.getLowerBounds();
        Type[] upperBounds = wildcardType.getUpperBounds();
        if (lowerBounds.length > 1 || (lowerBounds.length == 1 && lowerBounds[0] != null)) {
            sb.append(" super ");
            m67346d(sb, TTCFont.FONT_NAME_DELIMITER, lowerBounds);
        } else if (upperBounds.length > 1 || (upperBounds.length == 1 && !Object.class.equals(upperBounds[0]))) {
            sb.append(" extends ");
            m67346d(sb, TTCFont.FONT_NAME_DELIMITER, upperBounds);
        }
        return sb.toString();
    }

    public static boolean containsTypeVariables(Type type) {
        if (type instanceof TypeVariable) {
            return true;
        }
        if (type instanceof Class) {
            return ((Class) type).getTypeParameters().length > 0;
        }
        if (!(type instanceof ParameterizedType)) {
            if (!(type instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            return containsTypeVariables(getImplicitLowerBounds(wildcardType)[0]) || containsTypeVariables(getImplicitUpperBounds(wildcardType)[0]);
        }
        for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
            if (containsTypeVariables(type2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static <T> StringBuilder m67346d(StringBuilder sb, String str, T... tArr) {
        Validate.notEmpty(Validate.noNullElements(tArr));
        if (tArr.length > 0) {
            sb.append(m67338C(tArr[0]));
            for (int i = 1; i < tArr.length; i++) {
                sb.append(str);
                sb.append(m67338C(tArr[i]));
            }
        }
        return sb;
    }

    public static Map<TypeVariable<?>, Type> determineTypeArguments(Class<?> cls, ParameterizedType parameterizedType) {
        Validate.notNull(cls, "cls is null", new Object[0]);
        Validate.notNull(parameterizedType, "superType is null", new Object[0]);
        Class<?> m67358p = m67358p(parameterizedType);
        if (!m67362t(cls, m67358p)) {
            return null;
        }
        if (cls.equals(m67358p)) {
            return m67360r(parameterizedType, m67358p, null);
        }
        Type m67357o = m67357o(cls, m67358p);
        if (m67357o instanceof Class) {
            return determineTypeArguments((Class) m67357o, parameterizedType);
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) m67357o;
        Map<TypeVariable<?>, Type> determineTypeArguments = determineTypeArguments(m67358p(parameterizedType2), parameterizedType);
        m67368z(cls, parameterizedType2, determineTypeArguments);
        return determineTypeArguments;
    }

    /* renamed from: e */
    public static void m67347e(StringBuilder sb, int[] iArr, Type[] typeArr) {
        for (int i = 0; i < iArr.length; i++) {
            sb.append('<');
            m67346d(sb, ", ", typeArr[i].toString()).append('>');
        }
        Type[] typeArr2 = (Type[]) ArrayUtils.removeAll(typeArr, iArr);
        if (typeArr2.length > 0) {
            sb.append('<');
            m67346d(sb, ", ", typeArr2).append('>');
        }
    }

    public static boolean equals(Type type, Type type2) {
        if (Objects.equals(type, type2)) {
            return true;
        }
        if (type instanceof ParameterizedType) {
            return m67351i((ParameterizedType) type, type2);
        }
        if (type instanceof GenericArrayType) {
            return m67350h((GenericArrayType) type, type2);
        }
        if (type instanceof WildcardType) {
            return m67352j((WildcardType) type, type2);
        }
        return false;
    }

    /* renamed from: f */
    public static String m67348f(Class<?> cls) {
        if (cls.isArray()) {
            return toString(cls.getComponentType()) + "[]";
        }
        StringBuilder sb = new StringBuilder();
        if (cls.getEnclosingClass() != null) {
            sb.append(m67348f(cls.getEnclosingClass()));
            sb.append('.');
            sb.append(cls.getSimpleName());
        } else {
            sb.append(cls.getName());
        }
        if (cls.getTypeParameters().length > 0) {
            sb.append('<');
            m67346d(sb, ", ", cls.getTypeParameters());
            sb.append('>');
        }
        return sb.toString();
    }

    /* renamed from: g */
    public static boolean m67349g(TypeVariable<?> typeVariable, ParameterizedType parameterizedType) {
        return ArrayUtils.contains(typeVariable.getBounds(), parameterizedType);
    }

    public static GenericArrayType genericArrayType(Type type) {
        return new C18958b((Type) Validate.notNull(type, "componentType is null", new Object[0]), null);
    }

    public static Type getArrayComponentType(Type type) {
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return ((GenericArrayType) type).getGenericComponentType();
            }
            return null;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return cls.getComponentType();
        }
        return null;
    }

    public static Type[] getImplicitBounds(TypeVariable<?> typeVariable) {
        Validate.notNull(typeVariable, "typeVariable is null", new Object[0]);
        Type[] bounds = typeVariable.getBounds();
        return bounds.length == 0 ? new Type[]{Object.class} : normalizeUpperBounds(bounds);
    }

    public static Type[] getImplicitLowerBounds(WildcardType wildcardType) {
        Validate.notNull(wildcardType, "wildcardType is null", new Object[0]);
        Type[] lowerBounds = wildcardType.getLowerBounds();
        return lowerBounds.length == 0 ? new Type[]{null} : lowerBounds;
    }

    public static Type[] getImplicitUpperBounds(WildcardType wildcardType) {
        Validate.notNull(wildcardType, "wildcardType is null", new Object[0]);
        Type[] upperBounds = wildcardType.getUpperBounds();
        return upperBounds.length == 0 ? new Type[]{Object.class} : normalizeUpperBounds(upperBounds);
    }

    public static Class<?> getRawType(Type type, Type type2) {
        Map<TypeVariable<?>, Type> typeArguments;
        Type type3;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return m67358p((ParameterizedType) type);
        }
        if (type instanceof TypeVariable) {
            if (type2 == null) {
                return null;
            }
            GenericDeclaration genericDeclaration = ((TypeVariable) type).getGenericDeclaration();
            if (!(genericDeclaration instanceof Class) || (typeArguments = getTypeArguments(type2, (Class) genericDeclaration)) == null || (type3 = typeArguments.get(type)) == null) {
                return null;
            }
            return getRawType(type3, type2);
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType(), type2), 0).getClass();
        }
        if (type instanceof WildcardType) {
            return null;
        }
        throw new IllegalArgumentException("unknown type: " + type);
    }

    public static Map<TypeVariable<?>, Type> getTypeArguments(ParameterizedType parameterizedType) {
        return m67360r(parameterizedType, m67358p(parameterizedType), null);
    }

    /* renamed from: h */
    public static boolean m67350h(GenericArrayType genericArrayType, Type type) {
        return (type instanceof GenericArrayType) && equals(genericArrayType.getGenericComponentType(), ((GenericArrayType) type).getGenericComponentType());
    }

    /* renamed from: i */
    public static boolean m67351i(ParameterizedType parameterizedType, Type type) {
        if (!(type instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType parameterizedType2 = (ParameterizedType) type;
        if (equals(parameterizedType.getRawType(), parameterizedType2.getRawType()) && equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType())) {
            return m67353k(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        return false;
    }

    public static boolean isArrayType(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    public static boolean isAssignable(Type type, Type type2) {
        return m67365w(type, type2, null);
    }

    public static boolean isInstance(Object obj, Type type) {
        if (type == null) {
            return false;
        }
        return obj == null ? ((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true : m67365w(obj.getClass(), type, null);
    }

    /* renamed from: j */
    public static boolean m67352j(WildcardType wildcardType, Type type) {
        if (!(type instanceof WildcardType)) {
            return false;
        }
        WildcardType wildcardType2 = (WildcardType) type;
        return m67353k(getImplicitLowerBounds(wildcardType), getImplicitLowerBounds(wildcardType2)) && m67353k(getImplicitUpperBounds(wildcardType), getImplicitUpperBounds(wildcardType2));
    }

    /* renamed from: k */
    public static boolean m67353k(Type[] typeArr, Type[] typeArr2) {
        if (typeArr.length != typeArr2.length) {
            return false;
        }
        for (int i = 0; i < typeArr.length; i++) {
            if (!equals(typeArr[i], typeArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: l */
    public static Type[] m67354l(Map<TypeVariable<?>, Type> map, TypeVariable<?>[] typeVariableArr) {
        Type[] typeArr = new Type[typeVariableArr.length];
        int length = typeVariableArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            TypeVariable<?> typeVariable = typeVariableArr[i];
            Validate.isTrue(map.containsKey(typeVariable), "missing argument mapping for %s", toString(typeVariable));
            typeArr[i2] = map.get(typeVariable);
            i++;
            i2++;
        }
        return typeArr;
    }

    /* renamed from: m */
    public static int[] m67355m(ParameterizedType parameterizedType) {
        Type[] typeArr = (Type[]) Arrays.copyOf(parameterizedType.getActualTypeArguments(), parameterizedType.getActualTypeArguments().length);
        int[] iArr = new int[0];
        for (int i = 0; i < typeArr.length; i++) {
            Type type = typeArr[i];
            if ((type instanceof TypeVariable) && m67349g((TypeVariable) type, parameterizedType)) {
                iArr = ArrayUtils.add(iArr, i);
            }
        }
        return iArr;
    }

    /* renamed from: n */
    public static String m67356n(GenericArrayType genericArrayType) {
        return String.format("%s[]", toString(genericArrayType.getGenericComponentType()));
    }

    public static Type[] normalizeUpperBounds(Type[] typeArr) {
        boolean z;
        Validate.notNull(typeArr, "null value specified for bounds array", new Object[0]);
        if (typeArr.length < 2) {
            return typeArr;
        }
        HashSet hashSet = new HashSet(typeArr.length);
        for (Type type : typeArr) {
            int length = typeArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                Type type2 = typeArr[i];
                if (type != type2 && m67365w(type2, type, null)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                hashSet.add(type);
            }
        }
        return (Type[]) hashSet.toArray(new Type[hashSet.size()]);
    }

    /* renamed from: o */
    public static Type m67357o(Class<?> cls, Class<?> cls2) {
        Class<?> cls3;
        if (cls2.isInterface()) {
            Type type = null;
            for (Type type2 : cls.getGenericInterfaces()) {
                if (type2 instanceof ParameterizedType) {
                    cls3 = m67358p((ParameterizedType) type2);
                } else {
                    if (!(type2 instanceof Class)) {
                        throw new IllegalStateException("Unexpected generic interface type found: " + type2);
                    }
                    cls3 = (Class) type2;
                }
                if (m67362t(cls3, cls2) && isAssignable(type, cls3)) {
                    type = type2;
                }
            }
            if (type != null) {
                return type;
            }
        }
        return cls.getGenericSuperclass();
    }

    /* renamed from: p */
    public static Class<?> m67358p(ParameterizedType parameterizedType) {
        Type rawType = parameterizedType.getRawType();
        if (rawType instanceof Class) {
            return (Class) rawType;
        }
        throw new IllegalStateException("Wait... What!? Type of rawType: " + rawType);
    }

    public static final ParameterizedType parameterize(Class<?> cls, Type... typeArr) {
        return parameterizeWithOwner((Type) null, cls, typeArr);
    }

    public static final ParameterizedType parameterizeWithOwner(Type type, Class<?> cls, Type... typeArr) {
        Validate.notNull(cls, "raw class is null", new Object[0]);
        C18957a c18957a = null;
        if (cls.getEnclosingClass() == null) {
            Validate.isTrue(type == null, "no owner allowed for top-level %s", cls);
            type = null;
        } else if (type == null) {
            type = cls.getEnclosingClass();
        } else {
            Validate.isTrue(m67362t(type, cls.getEnclosingClass()), "%s is invalid owner type for parameterized %s", type, cls);
        }
        Validate.noNullElements(typeArr, "null type argument at index %s", new Object[0]);
        Validate.isTrue(cls.getTypeParameters().length == typeArr.length, "invalid number of type parameters specified: expected %d, got %d", Integer.valueOf(cls.getTypeParameters().length), Integer.valueOf(typeArr.length));
        return new C18959c(cls, type, typeArr, c18957a);
    }

    /* renamed from: q */
    public static Map<TypeVariable<?>, Type> m67359q(Class<?> cls, Class<?> cls2, Map<TypeVariable<?>, Type> map) {
        if (!m67362t(cls, cls2)) {
            return null;
        }
        if (cls.isPrimitive()) {
            if (cls2.isPrimitive()) {
                return new HashMap();
            }
            cls = ClassUtils.primitiveToWrapper(cls);
        }
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        return cls2.equals(cls) ? hashMap : m67361s(m67357o(cls, cls2), cls2, hashMap);
    }

    /* renamed from: r */
    public static Map<TypeVariable<?>, Type> m67360r(ParameterizedType parameterizedType, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        Map<TypeVariable<?>, Type> hashMap;
        Class<?> m67358p = m67358p(parameterizedType);
        if (!m67362t(m67358p, cls)) {
            return null;
        }
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            ParameterizedType parameterizedType2 = (ParameterizedType) ownerType;
            hashMap = m67360r(parameterizedType2, m67358p(parameterizedType2), map);
        } else {
            hashMap = map == null ? new HashMap<>() : new HashMap(map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = m67358p.getTypeParameters();
        for (int i = 0; i < typeParameters.length; i++) {
            Type type = actualTypeArguments[i];
            TypeVariable<Class<?>> typeVariable = typeParameters[i];
            if (hashMap.containsKey(type)) {
                type = hashMap.get(type);
            }
            hashMap.put(typeVariable, type);
        }
        return cls.equals(m67358p) ? hashMap : m67361s(m67357o(m67358p, cls), cls, hashMap);
    }

    /* renamed from: s */
    public static Map<TypeVariable<?>, Type> m67361s(Type type, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        if (type instanceof Class) {
            return m67359q((Class) type, cls, map);
        }
        if (type instanceof ParameterizedType) {
            return m67360r((ParameterizedType) type, cls, map);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (cls.isArray()) {
                cls = cls.getComponentType();
            }
            return m67361s(genericComponentType, cls, map);
        }
        int i = 0;
        if (type instanceof WildcardType) {
            Type[] implicitUpperBounds = getImplicitUpperBounds((WildcardType) type);
            int length = implicitUpperBounds.length;
            while (i < length) {
                Type type2 = implicitUpperBounds[i];
                if (m67362t(type2, cls)) {
                    return m67361s(type2, cls, map);
                }
                i++;
            }
            return null;
        }
        if (!(type instanceof TypeVariable)) {
            throw new IllegalStateException("found an unhandled type: " + type);
        }
        Type[] implicitBounds = getImplicitBounds((TypeVariable) type);
        int length2 = implicitBounds.length;
        while (i < length2) {
            Type type3 = implicitBounds[i];
            if (m67362t(type3, cls)) {
                return m67361s(type3, cls, map);
            }
            i++;
        }
        return null;
    }

    /* renamed from: t */
    public static boolean m67362t(Type type, Class<?> cls) {
        if (type == null) {
            return cls == null || !cls.isPrimitive();
        }
        if (cls == null) {
            return false;
        }
        if (cls.equals(type)) {
            return true;
        }
        if (type instanceof Class) {
            return ClassUtils.isAssignable((Class<?>) type, cls);
        }
        if (type instanceof ParameterizedType) {
            return m67362t(m67358p((ParameterizedType) type), cls);
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : ((TypeVariable) type).getBounds()) {
                if (m67362t(type2, cls)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            if (cls.equals(Object.class)) {
                return true;
            }
            return cls.isArray() && m67362t(((GenericArrayType) type).getGenericComponentType(), cls.getComponentType());
        }
        if (type instanceof WildcardType) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    public static String toLongString(TypeVariable<?> typeVariable) {
        Validate.notNull(typeVariable, "var is null", new Object[0]);
        StringBuilder sb = new StringBuilder();
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            Class<?> cls = (Class) genericDeclaration;
            while (cls.getEnclosingClass() != null) {
                sb.insert(0, cls.getSimpleName()).insert(0, '.');
                cls = cls.getEnclosingClass();
            }
            sb.insert(0, cls.getName());
        } else if (genericDeclaration instanceof Type) {
            sb.append(toString((Type) genericDeclaration));
        } else {
            sb.append(genericDeclaration);
        }
        sb.append(':');
        sb.append(m67339D(typeVariable));
        return sb.toString();
    }

    public static String toString(Type type) {
        Validate.notNull(type);
        if (type instanceof Class) {
            return m67348f((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return m67336A((ParameterizedType) type);
        }
        if (type instanceof WildcardType) {
            return m67342G((WildcardType) type);
        }
        if (type instanceof TypeVariable) {
            return m67339D((TypeVariable) type);
        }
        if (type instanceof GenericArrayType) {
            return m67356n((GenericArrayType) type);
        }
        throw new IllegalArgumentException(ObjectUtils.identityToString(type));
    }

    public static boolean typesSatisfyVariables(Map<TypeVariable<?>, Type> map) {
        Validate.notNull(map, "typeVarAssigns is null", new Object[0]);
        for (Map.Entry<TypeVariable<?>, Type> entry : map.entrySet()) {
            TypeVariable<?> key = entry.getKey();
            Type value = entry.getValue();
            for (Type type : getImplicitBounds(key)) {
                if (!m67365w(value, m67337B(type, map), map)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: u */
    public static boolean m67363u(Type type, GenericArrayType genericArrayType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (genericArrayType == null) {
            return false;
        }
        if (genericArrayType.equals(type)) {
            return true;
        }
        Type genericComponentType = genericArrayType.getGenericComponentType();
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() && m67365w(cls.getComponentType(), genericComponentType, map);
        }
        if (type instanceof GenericArrayType) {
            return m67365w(((GenericArrayType) type).getGenericComponentType(), genericComponentType, map);
        }
        if (type instanceof WildcardType) {
            for (Type type2 : getImplicitUpperBounds((WildcardType) type)) {
                if (isAssignable(type2, genericArrayType)) {
                    return true;
                }
            }
            return false;
        }
        if (!(type instanceof TypeVariable)) {
            if (type instanceof ParameterizedType) {
                return false;
            }
            throw new IllegalStateException("found an unhandled type: " + type);
        }
        for (Type type3 : getImplicitBounds((TypeVariable) type)) {
            if (isAssignable(type3, genericArrayType)) {
                return true;
            }
        }
        return false;
    }

    public static Type unrollVariables(Map<TypeVariable<?>, Type> map, Type type) {
        if (map == null) {
            map = Collections.emptyMap();
        }
        if (containsTypeVariables(type)) {
            if (type instanceof TypeVariable) {
                return unrollVariables(map, map.get(type));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                if (parameterizedType.getOwnerType() != null) {
                    HashMap hashMap = new HashMap(map);
                    hashMap.putAll(getTypeArguments(parameterizedType));
                    map = hashMap;
                }
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    Type unrollVariables = unrollVariables(map, actualTypeArguments[i]);
                    if (unrollVariables != null) {
                        actualTypeArguments[i] = unrollVariables;
                    }
                }
                return parameterizeWithOwner(parameterizedType.getOwnerType(), (Class<?>) parameterizedType.getRawType(), actualTypeArguments);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType().withUpperBounds(m67340E(map, wildcardType.getUpperBounds())).withLowerBounds(m67340E(map, wildcardType.getLowerBounds())).build();
            }
        }
        return type;
    }

    /* renamed from: v */
    public static boolean m67364v(Type type, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (parameterizedType == null) {
            return false;
        }
        if (parameterizedType.equals(type)) {
            return true;
        }
        Class<?> m67358p = m67358p(parameterizedType);
        Map<TypeVariable<?>, Type> m67361s = m67361s(type, m67358p, null);
        if (m67361s == null) {
            return false;
        }
        if (m67361s.isEmpty()) {
            return true;
        }
        Map<TypeVariable<?>, Type> m67360r = m67360r(parameterizedType, m67358p, map);
        for (TypeVariable<?> typeVariable : m67360r.keySet()) {
            Type m67341F = m67341F(typeVariable, m67360r);
            Type m67341F2 = m67341F(typeVariable, m67361s);
            if (m67341F != null || !(m67341F2 instanceof Class)) {
                if (m67341F2 != null && !m67341F.equals(m67341F2) && (!(m67341F instanceof WildcardType) || !m67365w(m67341F2, m67341F, map))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: w */
    public static boolean m67365w(Type type, Type type2, Map<TypeVariable<?>, Type> map) {
        if (type2 == null || (type2 instanceof Class)) {
            return m67362t(type, (Class) type2);
        }
        if (type2 instanceof ParameterizedType) {
            return m67364v(type, (ParameterizedType) type2, map);
        }
        if (type2 instanceof GenericArrayType) {
            return m67363u(type, (GenericArrayType) type2, map);
        }
        if (type2 instanceof WildcardType) {
            return m67367y(type, (WildcardType) type2, map);
        }
        if (type2 instanceof TypeVariable) {
            return m67366x(type, (TypeVariable) type2, map);
        }
        throw new IllegalStateException("found an unhandled type: " + type2);
    }

    public static WildcardTypeBuilder wildcardType() {
        return new WildcardTypeBuilder(null);
    }

    public static <T> Typed<T> wrap(Type type) {
        return new C18957a(type);
    }

    /* renamed from: x */
    public static boolean m67366x(Type type, TypeVariable<?> typeVariable, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (typeVariable == null) {
            return false;
        }
        if (typeVariable.equals(type)) {
            return true;
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : getImplicitBounds((TypeVariable) type)) {
                if (m67366x(type2, typeVariable, map)) {
                    return true;
                }
            }
        }
        if ((type instanceof Class) || (type instanceof ParameterizedType) || (type instanceof GenericArrayType) || (type instanceof WildcardType)) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    /* renamed from: y */
    public static boolean m67367y(Type type, WildcardType wildcardType, Map<TypeVariable<?>, Type> map) {
        if (type == null) {
            return true;
        }
        if (wildcardType == null) {
            return false;
        }
        if (wildcardType.equals(type)) {
            return true;
        }
        Type[] implicitUpperBounds = getImplicitUpperBounds(wildcardType);
        Type[] implicitLowerBounds = getImplicitLowerBounds(wildcardType);
        if (!(type instanceof WildcardType)) {
            for (Type type2 : implicitUpperBounds) {
                if (!m67365w(type, m67337B(type2, map), map)) {
                    return false;
                }
            }
            for (Type type3 : implicitLowerBounds) {
                if (!m67365w(m67337B(type3, map), type, map)) {
                    return false;
                }
            }
            return true;
        }
        WildcardType wildcardType2 = (WildcardType) type;
        Type[] implicitUpperBounds2 = getImplicitUpperBounds(wildcardType2);
        Type[] implicitLowerBounds2 = getImplicitLowerBounds(wildcardType2);
        for (Type type4 : implicitUpperBounds) {
            Type m67337B = m67337B(type4, map);
            for (Type type5 : implicitUpperBounds2) {
                if (!m67365w(type5, m67337B, map)) {
                    return false;
                }
            }
        }
        for (Type type6 : implicitLowerBounds) {
            Type m67337B2 = m67337B(type6, map);
            for (Type type7 : implicitLowerBounds2) {
                if (!m67365w(m67337B2, type7, map)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: z */
    public static <T> void m67368z(Class<T> cls, ParameterizedType parameterizedType, Map<TypeVariable<?>, Type> map) {
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            m67368z(cls, (ParameterizedType) ownerType, map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable<Class<?>>[] typeParameters = m67358p(parameterizedType).getTypeParameters();
        List asList = Arrays.asList(cls.getTypeParameters());
        for (int i = 0; i < actualTypeArguments.length; i++) {
            TypeVariable<Class<?>> typeVariable = typeParameters[i];
            Type type = actualTypeArguments[i];
            if (asList.contains(type) && map.containsKey(typeVariable)) {
                map.put((TypeVariable) type, map.get(typeVariable));
            }
        }
    }

    public static Map<TypeVariable<?>, Type> getTypeArguments(Type type, Class<?> cls) {
        return m67361s(type, cls, null);
    }

    public static final ParameterizedType parameterize(Class<?> cls, Map<TypeVariable<?>, Type> map) {
        Validate.notNull(cls, "raw class is null", new Object[0]);
        Validate.notNull(map, "typeArgMappings is null", new Object[0]);
        return parameterizeWithOwner((Type) null, cls, m67354l(map, cls.getTypeParameters()));
    }

    public static <T> Typed<T> wrap(Class<T> cls) {
        return wrap((Type) cls);
    }

    public static final ParameterizedType parameterizeWithOwner(Type type, Class<?> cls, Map<TypeVariable<?>, Type> map) {
        Validate.notNull(cls, "raw class is null", new Object[0]);
        Validate.notNull(map, "typeArgMappings is null", new Object[0]);
        return parameterizeWithOwner(type, cls, m67354l(map, cls.getTypeParameters()));
    }
}
