package com.alibaba.fastjson2.util;

import androidx.lifecycle.SavedStateHandle;
import com.alibaba.fastjson2.JSONException;
import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONWriter;
import com.alibaba.fastjson2.TypeReference;
import com.alibaba.fastjson2.annotation.JSONField;
import com.alibaba.fastjson2.annotation.JSONType;
import com.alibaba.fastjson2.codec.BeanInfo;
import com.alibaba.fastjson2.codec.FieldInfo;
import com.alibaba.fastjson2.reader.ObjectReader;
import com.alibaba.fastjson2.reader.ObjectReaderProvider;
import com.alibaba.fastjson2.util.BeanUtils;
import com.alibaba.fastjson2.writer.ObjectWriter;
import com.alibaba.fastjson2.writer.ObjectWriterProvider;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import org.apache.xmlbeans.impl.common.NameUtil;

/* loaded from: classes3.dex */
public abstract class BeanUtils {

    /* renamed from: a */
    public static final AtomicReference<char[]> f12760a = new AtomicReference<>();

    /* renamed from: b */
    public static final NameCacheEntry[] f12761b = new NameCacheEntry[2048];

    /* renamed from: c */
    public static final Type[] f12762c = new Type[0];

    /* renamed from: d */
    public static final ConcurrentMap<Class, Field[]> f12763d = new ConcurrentHashMap();

    /* renamed from: e */
    public static final ConcurrentMap<Class, Map<String, Field>> f12764e = new ConcurrentHashMap();

    /* renamed from: f */
    public static final ConcurrentMap<Class, Field[]> f12765f = new ConcurrentHashMap();

    /* renamed from: g */
    public static final ConcurrentMap<Class, Method[]> f12766g = new ConcurrentHashMap();

    /* renamed from: h */
    public static final ConcurrentMap<Class, Constructor[]> f12767h = new ConcurrentHashMap();

    /* renamed from: i */
    public static volatile boolean f12768i;

    /* renamed from: j */
    public static volatile Constructor<?> f12769j;

    /* renamed from: k */
    public static volatile Method f12770k;

    /* renamed from: l */
    public static volatile Method f12771l;

    /* renamed from: m */
    public static volatile Method f12772m;

    /* renamed from: n */
    public static volatile boolean f12773n;

    /* loaded from: classes3.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        public GenericArrayTypeImpl(Type type) {
            this.componentType = BeanUtils.canonicalize(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && BeanUtils.equals(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return BeanUtils.typeToString(this.componentType) + "[]";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        public ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z = true;
                boolean z2 = Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null;
                if (type == null && !z2) {
                    z = false;
                }
                BeanUtils.m7556f(z);
            }
            this.ownerType = type == null ? null : BeanUtils.canonicalize(type);
            this.rawType = BeanUtils.canonicalize(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.typeArguments = typeArr2;
            int length = typeArr2.length;
            for (int i = 0; i < length; i++) {
                BeanUtils.checkNotNull(this.typeArguments[i]);
                BeanUtils.m7557g(this.typeArguments[i]);
                Type[] typeArr3 = this.typeArguments;
                typeArr3[i] = BeanUtils.canonicalize(typeArr3[i]);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && BeanUtils.equals(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            return BeanUtils.m7563m(this.ownerType) ^ (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode());
        }

        public String toString() {
            int length = this.typeArguments.length;
            if (length == 0) {
                return BeanUtils.typeToString(this.rawType);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(BeanUtils.typeToString(this.rawType));
            sb.append("<");
            sb.append(BeanUtils.typeToString(this.typeArguments[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(BeanUtils.typeToString(this.typeArguments[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type lowerBound;
        private final Type upperBound;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            BeanUtils.m7556f(typeArr2.length <= 1);
            BeanUtils.m7556f(typeArr.length == 1);
            if (typeArr2.length != 1) {
                BeanUtils.checkNotNull(typeArr[0]);
                BeanUtils.m7557g(typeArr[0]);
                this.lowerBound = null;
                this.upperBound = BeanUtils.canonicalize(typeArr[0]);
                return;
            }
            BeanUtils.checkNotNull(typeArr2[0]);
            BeanUtils.m7557g(typeArr2[0]);
            BeanUtils.m7556f(typeArr[0] == Object.class);
            this.lowerBound = BeanUtils.canonicalize(typeArr2[0]);
            this.upperBound = Object.class;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && BeanUtils.equals(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.lowerBound;
            return type != null ? new Type[]{type} : BeanUtils.f12762c;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        public int hashCode() {
            Type type = this.lowerBound;
            return (this.upperBound.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + BeanUtils.typeToString(this.lowerBound);
            }
            if (this.upperBound == Object.class) {
                return "?";
            }
            return "? extends " + BeanUtils.typeToString(this.upperBound);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0034. Please report as an issue. */
    public static void annotationMethods(Class cls, Consumer<Method> consumer) {
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (Method method : methodArr) {
            if (method.getParameterCount() == 0 && method.getDeclaringClass() != Object.class) {
                String name = method.getName();
                name.hashCode();
                char c = 65535;
                switch (name.hashCode()) {
                    case -1776922004:
                        if (name.equals("toString")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 147696667:
                        if (name.equals("hashCode")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1444986633:
                        if (name.equals("annotationType")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                    case 2:
                        break;
                    default:
                        consumer.accept(method);
                        break;
                }
            }
        }
    }

    public static GenericArrayType arrayOf(Type type) {
        return new GenericArrayTypeImpl(type);
    }

    public static Method buildMethod(Class cls, String str) {
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (Method method : methodArr) {
            if (!Modifier.isStatic(method.getModifiers()) && method.getParameterCount() == 0 && method.getName().equals(str)) {
                return method;
            }
        }
        return null;
    }

    public static Type canonicalize(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new GenericArrayTypeImpl(canonicalize(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static void cleanupCache(Class cls) {
        if (cls == null) {
            return;
        }
        f12763d.remove(cls);
        f12764e.remove(cls);
        f12765f.remove(cls);
        f12766g.remove(cls);
        f12767h.remove(cls);
    }

    public static void constructor(Class cls, Consumer<Constructor> consumer) {
        ConcurrentMap<Class, Constructor[]> concurrentMap = f12767h;
        Constructor<?>[] constructorArr = concurrentMap.get(cls);
        if (constructorArr == null) {
            constructorArr = cls.getDeclaredConstructors();
            concurrentMap.put(cls, constructorArr);
        }
        for (Constructor<?> constructor : constructorArr) {
            consumer.accept(constructor);
        }
    }

    public static void declaredFields(Class cls, Consumer<Field> consumer) {
        boolean z;
        boolean z2;
        if (cls == null || consumer == null) {
            return;
        }
        Class superclass = cls.getSuperclass();
        if (superclass == null || superclass == Object.class) {
            z = false;
        } else {
            z = superclass.getName().equals("com.google.protobuf.GeneratedMessageV3");
            if (!z) {
                declaredFields(superclass, consumer);
            }
        }
        ConcurrentMap<Class, Field[]> concurrentMap = f12765f;
        Field[] fieldArr = concurrentMap.get(cls);
        if (fieldArr == null) {
            try {
                fieldArr = cls.getDeclaredFields();
                concurrentMap.put(cls, fieldArr);
            } catch (Throwable unused) {
                fieldArr = new Field[0];
            }
            int length = fieldArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z2 = true;
                    break;
                } else {
                    if (Modifier.isStatic(fieldArr[i].getModifiers())) {
                        z2 = false;
                        break;
                    }
                    i++;
                }
            }
            if (!z2) {
                ArrayList arrayList = new ArrayList(fieldArr.length);
                for (Field field : fieldArr) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(field);
                    }
                }
                fieldArr = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
            }
            f12763d.put(cls, fieldArr);
        }
        for (Field field2 : fieldArr) {
            if ((field2.getModifiers() & 8) == 0) {
                if (z) {
                    String name = field2.getName();
                    Class<?> type = field2.getType();
                    if ("cardsmap_".equals(name) && type.getName().equals("com.google.protobuf.MapField")) {
                        return;
                    }
                }
                Class<?> declaringClass = field2.getDeclaringClass();
                if (declaringClass != AbstractMap.class && declaringClass != HashMap.class && declaringClass != LinkedHashMap.class && declaringClass != TreeMap.class && declaringClass != ConcurrentHashMap.class) {
                    consumer.accept(field2);
                }
            }
        }
    }

    public static boolean equals(Type type, Type type2) {
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
            return m7561k(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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

    /* renamed from: f */
    public static void m7556f(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static String fieldName(String str, String str2) {
        char charAt;
        char charAt2;
        if (str2 == null) {
            str2 = "CamelCase";
        }
        if (str == null || str.isEmpty()) {
            return str;
        }
        char c = 65535;
        switch (str2.hashCode()) {
            case -2068429102:
                if (str2.equals("UpperCase")) {
                    c = 0;
                    break;
                }
                break;
            case -1863045342:
                if (str2.equals("UpperCaseWithDots")) {
                    c = 1;
                    break;
                }
                break;
            case -1112704575:
                if (str2.equals("NeverUseThisValueExceptDefaultValue")) {
                    c = 2;
                    break;
                }
                break;
            case -46641534:
                if (str2.equals("LowerCaseWithUnderScores")) {
                    c = 3;
                    break;
                }
                break;
            case 246111473:
                if (str2.equals("NoChange")) {
                    c = 4;
                    break;
                }
                break;
            case 572594479:
                if (str2.equals("UpperCamelCaseWithUnderScores")) {
                    c = 5;
                    break;
                }
                break;
            case 601822360:
                if (str2.equals("UpperCaseWithDashes")) {
                    c = 6;
                    break;
                }
                break;
            case 928600554:
                if (str2.equals("UpperCamelCaseWithDashes")) {
                    c = 7;
                    break;
                }
                break;
            case 975280372:
                if (str2.equals("UpperCamelCaseWithDots")) {
                    c = '\b';
                    break;
                }
                break;
            case 1315531521:
                if (str2.equals("LowerCaseWithDots")) {
                    c = '\t';
                    break;
                }
                break;
            case 1336502620:
                if (str2.equals("PascalCase")) {
                    c = '\n';
                    break;
                }
                break;
            case 1371349591:
                if (str2.equals("UpperCamelCaseWithSpaces")) {
                    c = 11;
                    break;
                }
                break;
            case 1460726553:
                if (str2.equals("KebabCase")) {
                    c = '\f';
                    break;
                }
                break;
            case 1488507313:
                if (str2.equals("LowerCase")) {
                    c = '\r';
                    break;
                }
                break;
            case 1492440247:
                if (str2.equals("LowerCaseWithDashes")) {
                    c = 14;
                    break;
                }
                break;
            case 1655544038:
                if (str2.equals("CamelCase")) {
                    c = 15;
                    break;
                }
                break;
            case 1839922637:
                if (str2.equals("CamelCase1x")) {
                    c = 16;
                    break;
                }
                break;
            case 1976554305:
                if (str2.equals("UpperCaseWithUnderScores")) {
                    c = 17;
                    break;
                }
                break;
            case 2087942256:
                if (str2.equals("SnakeCase")) {
                    c = 18;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return str.toUpperCase();
            case 1:
                return m7560j(str, 0, true);
            case 2:
            case 4:
            case 15:
                char charAt3 = str.charAt(0);
                char charAt4 = str.length() > 1 ? str.charAt(1) : (char) 0;
                if (charAt3 < 'A' || charAt3 > 'Z' || str.length() <= 1 || (charAt4 >= 'A' && charAt4 <= 'Z')) {
                    return str;
                }
                char[] charArray = str.toCharArray();
                charArray[0] = (char) (charAt3 + ' ');
                return new String(charArray);
            case 3:
                return m7575y(str, 0, false);
            case 5:
                return m7576z(str, 0, NameUtil.USCORE);
            case 6:
                return m7558h(str, 0, true);
            case 7:
                return m7576z(str, 0, '-');
            case '\b':
                return m7576z(str, 0, '.');
            case '\t':
                return m7560j(str, 0, false);
            case '\n':
                char charAt5 = str.charAt(0);
                if (charAt5 >= 'a' && charAt5 <= 'z' && str.length() > 1 && (charAt2 = str.charAt(1)) >= 'a' && charAt2 <= 'z') {
                    char[] charArray2 = str.toCharArray();
                    charArray2[0] = (char) (charAt5 - ' ');
                    return new String(charArray2);
                }
                if (charAt5 != '_' || str.length() <= 1 || (charAt = str.charAt(1)) < 'a' || charAt > 'z') {
                    return str;
                }
                char[] charArray3 = str.toCharArray();
                charArray3[1] = (char) (charAt - ' ');
                return new String(charArray3);
            case 11:
                return m7576z(str, 0, ' ');
            case '\f':
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < str.length(); i++) {
                    char charAt6 = str.charAt(i);
                    if (charAt6 >= 'A' && charAt6 <= 'Z') {
                        charAt6 = (char) (charAt6 + ' ');
                        if (i > 0) {
                            sb.append('-');
                        }
                    }
                    sb.append(charAt6);
                }
                return sb.toString();
            case '\r':
                return str.toLowerCase();
            case 14:
                return m7558h(str, 0, false);
            case 16:
                char charAt7 = str.charAt(0);
                if (charAt7 < 'A' || charAt7 > 'Z' || str.length() <= 1) {
                    return str;
                }
                char[] charArray4 = str.toCharArray();
                charArray4[0] = (char) (charAt7 + ' ');
                return new String(charArray4);
            case 17:
                return m7575y(str, 0, true);
            case 18:
                return m7574x(str, 0);
            default:
                throw new JSONException("TODO : " + str2);
        }
    }

    public static void fields(Class cls, Consumer<Field> consumer) {
        ConcurrentMap<Class, Field[]> concurrentMap = f12763d;
        Field[] fieldArr = concurrentMap.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getFields();
            concurrentMap.put(cls, fieldArr);
        }
        boolean isAssignableFrom = Enum.class.isAssignableFrom(cls);
        for (Field field : fieldArr) {
            if (!Modifier.isStatic(field.getModifiers()) || isAssignableFrom) {
                consumer.accept(field);
            }
        }
    }

    public static <A extends Annotation> A findAnnotation(AnnotatedElement annotatedElement, Class<A> cls) {
        if (cls != null) {
            return (A) annotatedElement.getAnnotation(cls);
        }
        throw new NullPointerException("annotationType must not be null");
    }

    /* renamed from: g */
    public static void m7557g(Type type) {
        m7556f(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    public static Constructor[] getConstructor(Class cls) {
        ConcurrentMap<Class, Constructor[]> concurrentMap = f12767h;
        Constructor[] constructorArr = concurrentMap.get(cls);
        if (constructorArr != null) {
            return constructorArr;
        }
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        concurrentMap.put(cls, declaredConstructors);
        return declaredConstructors;
    }

    public static Field getDeclaredField(Class cls, String str) {
        boolean z;
        Map<String, Field> map = f12764e.get(cls);
        if (map == null) {
            HashMap hashMap = new HashMap();
            ConcurrentMap<Class, Field[]> concurrentMap = f12765f;
            Field[] fieldArr = concurrentMap.get(cls);
            if (fieldArr == null) {
                try {
                    fieldArr = cls.getDeclaredFields();
                    concurrentMap.put(cls, fieldArr);
                } catch (Throwable unused) {
                    fieldArr = new Field[0];
                }
                int length = fieldArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    if (Modifier.isStatic(fieldArr[i].getModifiers())) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    ArrayList arrayList = new ArrayList(fieldArr.length);
                    for (Field field : fieldArr) {
                        if (!Modifier.isStatic(field.getModifiers())) {
                            arrayList.add(field);
                        }
                    }
                    fieldArr = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
                }
                f12763d.put(cls, fieldArr);
            }
            for (Field field2 : fieldArr) {
                hashMap.put(field2.getName(), field2);
            }
            ConcurrentMap<Class, Map<String, Field>> concurrentMap2 = f12764e;
            concurrentMap2.put(cls, hashMap);
            map = concurrentMap2.get(cls);
        }
        return map.get(str);
    }

    public static Constructor getDefaultConstructor(Class cls, boolean z) {
        Class<?> declaringClass;
        if (cls == StackTraceElement.class) {
            return null;
        }
        ConcurrentMap<Class, Constructor[]> concurrentMap = f12767h;
        Constructor[] constructorArr = concurrentMap.get(cls);
        if (constructorArr == null) {
            constructorArr = cls.getDeclaredConstructors();
            concurrentMap.put(cls, constructorArr);
        }
        for (Constructor<?> constructor : constructorArr) {
            if (constructor.getParameterCount() == 0) {
                return constructor;
            }
        }
        if (z && (declaringClass = cls.getDeclaringClass()) != null) {
            for (Constructor<?> constructor2 : constructorArr) {
                if (constructor2.getParameterCount() == 1 && declaringClass.equals(constructor2.getParameterTypes()[0])) {
                    return constructor2;
                }
            }
        }
        return null;
    }

    public static String[] getEnumAnnotationNames(Class cls) {
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        int length = enumArr.length;
        String[] strArr = new String[length];
        ConcurrentMap<Class, Field[]> concurrentMap = f12763d;
        Field[] fieldArr = concurrentMap.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getFields();
            concurrentMap.put(cls, fieldArr);
        }
        for (Field field : fieldArr) {
            String name = field.getName();
            int i = 0;
            while (true) {
                if (i < enumArr.length) {
                    String name2 = enumArr[i].name();
                    if (name.equals(name2)) {
                        JSONField jSONField = (JSONField) field.getAnnotation(JSONField.class);
                        if (jSONField != null) {
                            String name3 = jSONField.name();
                            if (name3.length() != 0 && !name3.equals(name2)) {
                                strArr[i] = name3;
                            }
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (strArr[i3] == null) {
                i2++;
            }
        }
        if (i2 == length) {
            return null;
        }
        return strArr;
    }

    public static Member getEnumValueField(Class cls, Object obj) {
        boolean z;
        Class<?> declaringClass;
        Field declaredField;
        if (cls == null) {
            return null;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (final Method method : methodArr) {
            if (method.getReturnType() != Void.class && (declaringClass = method.getDeclaringClass()) != Enum.class && declaringClass != Object.class) {
                final String name = method.getName();
                if (!name.equals(SavedStateHandle.f7922f) && method.getParameterCount() == 0) {
                    if (m7565o(method)) {
                        return method;
                    }
                    if (name.startsWith("get", 0) && (declaredField = getDeclaredField(cls, getterName(name, null))) != null && m7565o(declaredField)) {
                        return method;
                    }
                    final AtomicReference atomicReference = new AtomicReference();
                    for (Class<?> cls2 : interfaces) {
                        getters(cls2, new Consumer() { // from class: com.sunia.HTREnginev2.vo
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj2) {
                                BeanUtils.m7566p(name, atomicReference, method, (Method) obj2);
                            }
                        });
                        Class mixIn = obj instanceof ObjectReaderProvider ? ((ObjectReaderProvider) obj).getMixIn(cls2) : obj instanceof ObjectWriterProvider ? ((ObjectWriterProvider) obj).getMixIn(cls2) : JSONFactory.defaultObjectWriterProvider.getMixIn(cls2);
                        if (mixIn != null) {
                            getters(mixIn, new Consumer() { // from class: com.sunia.HTREnginev2.wo
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj2) {
                                    BeanUtils.m7567q(name, atomicReference, method, (Method) obj2);
                                }
                            });
                        }
                    }
                    Member member = (Member) atomicReference.get();
                    if (member != null) {
                        return member;
                    }
                }
            }
        }
        ConcurrentMap<Class, Field[]> concurrentMap2 = f12763d;
        Field[] fieldArr = concurrentMap2.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getFields();
            concurrentMap2.put(cls, fieldArr);
        }
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        for (Field field : fieldArr) {
            if (enumArr != null) {
                String name2 = field.getName();
                for (Enum r0 : enumArr) {
                    if (name2.equals(r0.name())) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (m7565o(field) && !z) {
                return field;
            }
        }
        return null;
    }

    public static Field getField(Class cls, String str) {
        ConcurrentMap<Class, Field[]> concurrentMap = f12763d;
        Field[] fieldArr = concurrentMap.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getFields();
            concurrentMap.put(cls, fieldArr);
        }
        for (Field field : fieldArr) {
            if (field.getName().equals(str)) {
                return field;
            }
        }
        return null;
    }

    public static void getFieldInfo(Class cls, FieldInfo fieldInfo, ObjectReaderProvider objectReaderProvider, String str, String str2, String str3) {
        ConcurrentMap<Class, Field[]> concurrentMap = f12765f;
        Field[] fieldArr = concurrentMap.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getDeclaredFields();
            concurrentMap.put(cls, fieldArr);
        }
        for (Field field : fieldArr) {
            int modifiers = field.getModifiers();
            if ((modifiers & 8) == 0) {
                boolean z = (modifiers & 1) == 0;
                String name = field.getName();
                if (name.equals(str)) {
                    if (z) {
                        objectReaderProvider.getFieldInfo(fieldInfo, cls, field);
                    }
                    fieldInfo.features |= 4503599627370496L;
                } else if (name.equals(str2)) {
                    if (z) {
                        objectReaderProvider.getFieldInfo(fieldInfo, cls, field);
                    }
                    fieldInfo.features |= 4503599627370496L;
                } else if (name.equals(str3)) {
                    if (z) {
                        objectReaderProvider.getFieldInfo(fieldInfo, cls, field);
                    }
                    fieldInfo.features |= 4503599627370496L;
                }
            }
        }
    }

    public static Type getFieldType(TypeReference typeReference, Class<?> cls, Member member, Type type) {
        Class<?> declaringClass = member == null ? null : member.getDeclaringClass();
        while (cls != Object.class) {
            Type type2 = typeReference == null ? null : typeReference.getType();
            if (declaringClass == cls) {
                return m7572v(type2, declaringClass, type, new HashMap());
            }
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass == null) {
                break;
            }
            typeReference = TypeReference.get(m7572v(type2, cls, genericSuperclass, new HashMap()));
            cls = typeReference.getRawType();
        }
        return null;
    }

    public static void getKotlinConstructor(Class<?> cls, BeanInfo beanInfo) {
        ConcurrentMap<Class, Constructor[]> concurrentMap = f12767h;
        Constructor[] constructorArr = concurrentMap.get(cls);
        if (constructorArr == null) {
            constructorArr = cls.getDeclaredConstructors();
            concurrentMap.put(cls, constructorArr);
        }
        String[] strArr = beanInfo.createParameterNames;
        Constructor<?> constructor = null;
        for (Constructor<?> constructor2 : constructorArr) {
            int parameterCount = constructor2.getParameterCount();
            if (strArr == null || parameterCount == strArr.length) {
                if (parameterCount > 2) {
                    Class<?>[] parameterTypes = constructor2.getParameterTypes();
                    if (parameterTypes[parameterCount - 2] == Integer.TYPE && "kotlin.jvm.internal.DefaultConstructorMarker".equals(parameterTypes[parameterCount - 1].getName())) {
                        beanInfo.markerConstructor = constructor2;
                    }
                }
                if (constructor == null || constructor.getParameterCount() < parameterCount) {
                    constructor = constructor2;
                }
            }
        }
        beanInfo.creatorConstructor = constructor;
    }

    public static String[] getKotlinConstructorParameters(Class<?> cls) {
        if (f12769j == null && !f12768i) {
            try {
                f12769j = Class.forName("kotlin.reflect.jvm.internal.KClassImpl").getConstructor(Class.class);
            } catch (Throwable unused) {
                f12768i = true;
            }
        }
        if (f12769j == null) {
            return null;
        }
        if (f12770k == null && !f12768i) {
            try {
                f12770k = Class.forName("kotlin.reflect.jvm.internal.KClassImpl").getMethod("getConstructors", new Class[0]);
            } catch (Throwable unused2) {
                f12768i = true;
            }
        }
        if (f12771l == null && !f12768i) {
            try {
                f12771l = KFunction.class.getMethod("getParameters", new Class[0]);
            } catch (Throwable unused3) {
                f12768i = true;
            }
        }
        if (f12772m == null && !f12768i) {
            try {
                f12772m = KParameter.class.getMethod("getName", new Class[0]);
            } catch (Throwable unused4) {
                f12768i = true;
            }
        }
        if (f12773n) {
            return null;
        }
        try {
            Iterator it2 = ((Iterable) f12770k.invoke(f12769j.newInstance(cls), new Object[0])).iterator();
            Object obj = null;
            while (it2.hasNext()) {
                Object next = it2.next();
                List list = (List) f12771l.invoke(next, new Object[0]);
                if (obj == null || list.size() != 0) {
                    obj = next;
                }
                it2.hasNext();
            }
            if (obj == null) {
                return null;
            }
            List list2 = (List) f12771l.invoke(obj, new Object[0]);
            String[] strArr = new String[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                strArr[i] = (String) f12772m.invoke(list2.get(i), new Object[0]);
            }
            return strArr;
        } catch (Throwable unused5) {
            f12773n = true;
            return null;
        }
    }

    public static Method getMethod(Class cls, String str) {
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (Method method : methodArr) {
            if (method.getName().equals(str)) {
                return method;
            }
        }
        return null;
    }

    public static Type getParamType(TypeReference typeReference, Class<?> cls, Class cls2, Type type) {
        while (cls != Object.class) {
            if (cls2 == cls) {
                return m7572v(typeReference.getType(), cls2, type, new HashMap());
            }
            typeReference = TypeReference.get(m7572v(typeReference.getType(), cls, cls.getGenericSuperclass(), new HashMap()));
            cls = typeReference.getRawType();
        }
        return null;
    }

    public static Class<?> getRawType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            m7556f(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return getRawType(((WildcardType) type).getUpperBounds()[0]);
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static Method getSetter(Class cls, final String str) {
        final Method[] methodArr = new Method[1];
        setters(cls, new Consumer() { // from class: com.sunia.HTREnginev2.uo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BeanUtils.m7569s(str, methodArr, (Method) obj);
            }
        });
        return methodArr[0];
    }

    public static String getterName(Method method, boolean z, String str) {
        Class<?> returnType;
        String name = method.getName();
        if (name.startsWith("is") && (((returnType = method.getReturnType()) != Boolean.class && returnType != Boolean.TYPE) || z)) {
            return name;
        }
        String str2 = getterName(name, str);
        if (str2.length() <= 2 || str2.charAt(0) < 'A' || str2.charAt(0) > 'Z' || str2.charAt(1) < 'A' || str2.charAt(1) > 'Z') {
            return str2;
        }
        char[] charArray = str2.toCharArray();
        charArray[0] = (char) (charArray[0] + ' ');
        Field declaredField = getDeclaredField(method.getDeclaringClass(), new String(charArray));
        return (declaredField == null || !Modifier.isPublic(declaredField.getModifiers())) ? str2 : declaredField.getName();
    }

    public static void getters(Class cls, Consumer<Method> consumer) {
        getters(cls, null, consumer);
    }

    /* renamed from: h */
    public static String m7558h(String str, int i, boolean z) {
        int i2;
        int length = str.length();
        char[] andSet = TypeUtils.f12807e.getAndSet(TypeUtils.f12806d, null);
        if (andSet == null) {
            andSet = new char[128];
        }
        int i3 = i;
        int i4 = 0;
        while (i3 < length) {
            try {
                char charAt = str.charAt(i3);
                if (z) {
                    if (charAt < 'A' || charAt > 'Z') {
                        if (charAt >= 'a' && charAt <= 'z') {
                            i2 = charAt - ' ';
                            charAt = (char) i2;
                        }
                    } else if (i3 > i) {
                        andSet[i4] = '-';
                        i4++;
                    }
                } else if (charAt >= 'A' && charAt <= 'Z') {
                    if (i3 > i) {
                        andSet[i4] = '-';
                        i4++;
                    }
                    i2 = charAt + ' ';
                    charAt = (char) i2;
                }
                andSet[i4] = charAt;
                i3++;
                i4++;
            } finally {
                TypeUtils.f12807e.set(TypeUtils.f12806d, andSet);
            }
        }
        return new String(andSet, 0, i4);
    }

    /* renamed from: i */
    public static Class<?> m7559i(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    public static boolean isNoneStaticMemberClass(Class cls, Class cls2) {
        Class<?> enclosingClass = cls2.getEnclosingClass();
        if (enclosingClass == null || !(cls == null || cls.equals(enclosingClass))) {
            return false;
        }
        ConcurrentMap<Class, Constructor[]> concurrentMap = f12767h;
        Constructor[] constructorArr = concurrentMap.get(cls2);
        if (constructorArr == null) {
            constructorArr = cls2.getDeclaredConstructors();
            concurrentMap.put(cls2, constructorArr);
        }
        if (constructorArr.length == 0) {
            return false;
        }
        Class<?>[] parameterTypes = constructorArr[0].getParameterTypes();
        if (parameterTypes.length == 0) {
            return false;
        }
        return enclosingClass.equals(parameterTypes[0]);
    }

    public static boolean isWriteEnumAsJavaBean(Class cls) {
        for (final Annotation annotation : cls.getDeclaredAnnotations()) {
            JSONType jSONType = (JSONType) findAnnotation(annotation, JSONType.class);
            if (jSONType != null) {
                return jSONType.writeEnumAsJavaBean();
            }
            Class<? extends Annotation> annotationType = annotation.annotationType();
            if ("com.alibaba.fastjson.annotation.JSONType".equals(annotationType.getName())) {
                final BeanInfo beanInfo = new BeanInfo();
                annotationMethods(annotationType, new Consumer() { // from class: com.sunia.HTREnginev2.xo
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        BeanUtils.processJSONType1x(BeanInfo.this, annotation, (Method) obj);
                    }
                });
                if (beanInfo.writeEnumAsJavaBean) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: j */
    public static String m7560j(String str, int i, boolean z) {
        int i2;
        int length = str.length();
        char[] andSet = TypeUtils.f12807e.getAndSet(TypeUtils.f12806d, null);
        if (andSet == null) {
            andSet = new char[128];
        }
        int i3 = i;
        int i4 = 0;
        while (i3 < length) {
            try {
                char charAt = str.charAt(i3);
                if (z) {
                    if (charAt < 'A' || charAt > 'Z') {
                        if (charAt >= 'a' && charAt <= 'z') {
                            i2 = charAt - ' ';
                            charAt = (char) i2;
                        }
                    } else if (i3 > i) {
                        andSet[i4] = '.';
                        i4++;
                    }
                } else if (charAt >= 'A' && charAt <= 'Z') {
                    if (i3 > i) {
                        andSet[i4] = '.';
                        i4++;
                    }
                    i2 = charAt + ' ';
                    charAt = (char) i2;
                }
                andSet[i4] = charAt;
                i3++;
                i4++;
            } finally {
                TypeUtils.f12807e.set(TypeUtils.f12806d, andSet);
            }
        }
        return new String(andSet, 0, i4);
    }

    /* renamed from: k */
    public static boolean m7561k(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: l */
    public static Type m7562l(Type type, Class<?> cls, Class<?> cls2) {
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
                    return m7562l(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (cls != null && !cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m7562l(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static String[] lookupParameterNames(Constructor constructor) {
        Class declaringClass = constructor.getDeclaringClass();
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        if (Throwable.class.isAssignableFrom(declaringClass)) {
            int length = parameterTypes.length;
            if (length == 1) {
                Class<?> cls = parameterTypes[0];
                if (cls == String.class) {
                    return new String[]{"message"};
                }
                if (Throwable.class.isAssignableFrom(cls)) {
                    return new String[]{"cause"};
                }
            } else if (length == 2 && parameterTypes[0] == String.class && Throwable.class.isAssignableFrom(parameterTypes[1])) {
                return new String[]{"message", "cause"};
            }
        }
        int length2 = parameterTypes.length;
        String[] strArr = new String[length2];
        if (length2 > 0 && parameterTypes[0] == declaringClass.getDeclaringClass() && !Modifier.isStatic(declaringClass.getModifiers())) {
            strArr[0] = "this.$0";
        }
        return strArr;
    }

    /* renamed from: m */
    public static int m7563m(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: n */
    public static int m7564n(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    public static ParameterizedType newParameterizedTypeWithOwner(Type type, Type type2, Type... typeArr) {
        return new ParameterizedTypeImpl(type, type2, typeArr);
    }

    /* renamed from: o */
    public static boolean m7565o(AnnotatedElement annotatedElement) {
        for (Annotation annotation : annotatedElement.getAnnotations()) {
            String name = annotation.annotationType().getName();
            if (name.equals("com.alibaba.fastjson.annotation.JSONField") || name.equals("com.alibaba.fastjson2.annotation.JSONField")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: p */
    public static /* synthetic */ void m7566p(String str, AtomicReference atomicReference, Method method, Method method2) {
        if (method2.getName().equals(str) && m7565o(method2)) {
            atomicReference.set(method);
        }
    }

    public static void processJSONType1x(BeanInfo beanInfo, Annotation annotation, Method method) {
        char c;
        char c2;
        try {
            Object invoke = method.invoke(annotation, new Object[0]);
            String name = method.getName();
            switch (name.hashCode()) {
                case -1678076717:
                    if (name.equals("deserializer")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -1315832283:
                    if (name.equals("serializeEnumAsJavaBean")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -1210506547:
                    if (name.equals(Constants.ATTRVAL_ALPHABETIC)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1052827512:
                    if (name.equals("naming")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -1008770331:
                    if (name.equals("orders")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -940893828:
                    if (name.equals("serialzeFeatures")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -853109563:
                    if (name.equals("typeKey")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -676507419:
                    if (name.equals("typeName")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -597985902:
                    if (name.equals("serializer")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 90259659:
                    if (name.equals("includes")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 1752415457:
                    if (name.equals("ignores")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1869860669:
                    if (name.equals("serializeFeatures")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1970571962:
                    if (name.equals("seeAlso")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    Class[] clsArr = (Class[]) invoke;
                    if (clsArr.length != 0) {
                        beanInfo.seeAlso = clsArr;
                        return;
                    }
                    return;
                case 1:
                    String str = (String) invoke;
                    if (str.isEmpty()) {
                        return;
                    }
                    beanInfo.typeName = str;
                    return;
                case 2:
                    String str2 = (String) invoke;
                    if (str2.isEmpty()) {
                        return;
                    }
                    beanInfo.typeKey = str2;
                    return;
                case 3:
                    if (((Boolean) invoke).booleanValue()) {
                        return;
                    }
                    beanInfo.alphabetic = false;
                    return;
                case 4:
                case 5:
                    for (Enum r0 : (Enum[]) invoke) {
                        String name2 = r0.name();
                        switch (name2.hashCode()) {
                            case -1937516631:
                                if (name2.equals("WriteNullNumberAsZero")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            case -1779797023:
                                if (name2.equals("IgnoreErrorGetter")) {
                                    c2 = '\n';
                                    break;
                                }
                                break;
                            case -335314544:
                                if (name2.equals("WriteEnumUsingToString")) {
                                    c2 = '\b';
                                    break;
                                }
                                break;
                            case -211922948:
                                if (name2.equals("BrowserCompatible")) {
                                    c2 = 5;
                                    break;
                                }
                                break;
                            case -102443356:
                                if (name2.equals("WriteNullStringAsEmpty")) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                            case -62964779:
                                if (name2.equals("NotWriteRootClassName")) {
                                    c2 = '\t';
                                    break;
                                }
                                break;
                            case 1009181687:
                                if (name2.equals("WriteNullListAsEmpty")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case 1519175029:
                                if (name2.equals("WriteNonStringValueAsString")) {
                                    c2 = 7;
                                    break;
                                }
                                break;
                            case 1808123471:
                                if (name2.equals("WriteNullBooleanAsFalse")) {
                                    c2 = 4;
                                    break;
                                }
                                break;
                            case 1879776036:
                                if (name2.equals("WriteClassName")) {
                                    c2 = 6;
                                    break;
                                }
                                break;
                            case 2049970061:
                                if (name2.equals("WriteMapNullValue")) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                        }
                        c2 = 65535;
                        switch (c2) {
                            case 0:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNulls.mask;
                                break;
                            case 1:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNullListAsEmpty.mask;
                                break;
                            case 2:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNullStringAsEmpty.mask;
                                break;
                            case 3:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNullNumberAsZero.mask;
                                break;
                            case 4:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNullBooleanAsFalse.mask;
                                break;
                            case 5:
                                beanInfo.writerFeatures |= JSONWriter.Feature.BrowserCompatible.mask;
                                break;
                            case 6:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteClassName.mask;
                                break;
                            case 7:
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteNonStringValueAsString.mask;
                                break;
                            case '\b':
                                beanInfo.writerFeatures |= JSONWriter.Feature.WriteEnumUsingToString.mask;
                                break;
                            case '\t':
                                beanInfo.writerFeatures |= JSONWriter.Feature.NotWriteRootClassName.mask;
                                break;
                            case '\n':
                                beanInfo.writerFeatures |= JSONWriter.Feature.IgnoreErrorGetter.mask;
                                break;
                        }
                    }
                    return;
                case 6:
                    if (((Boolean) invoke).booleanValue()) {
                        beanInfo.writeEnumAsJavaBean = true;
                        return;
                    }
                    return;
                case 7:
                    beanInfo.namingStrategy = ((Enum) invoke).name();
                    return;
                case '\b':
                    String[] strArr = (String[]) invoke;
                    if (strArr.length != 0) {
                        if (beanInfo.ignores == null) {
                            beanInfo.ignores = strArr;
                            return;
                        }
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        for (String str3 : beanInfo.ignores) {
                            linkedHashSet.add(str3);
                        }
                        Collections.addAll(linkedHashSet, strArr);
                        beanInfo.ignores = (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
                        return;
                    }
                    return;
                case '\t':
                    String[] strArr2 = (String[]) invoke;
                    if (strArr2.length != 0) {
                        beanInfo.includes = strArr2;
                        return;
                    }
                    return;
                case '\n':
                    String[] strArr3 = (String[]) invoke;
                    if (strArr3.length != 0) {
                        beanInfo.orders = strArr3;
                        return;
                    }
                    return;
                case 11:
                    Class cls = (Class) invoke;
                    if (ObjectWriter.class.isAssignableFrom(cls)) {
                        beanInfo.writeEnumAsJavaBean = true;
                        beanInfo.serializer = cls;
                        return;
                    }
                    return;
                case '\f':
                    Class cls2 = (Class) invoke;
                    if (ObjectReader.class.isAssignableFrom(cls2)) {
                        beanInfo.deserializer = cls2;
                        return;
                    }
                    return;
                default:
                    return;
            }
        } catch (Throwable unused) {
        }
    }

    /* renamed from: q */
    public static /* synthetic */ void m7567q(String str, AtomicReference atomicReference, Method method, Method method2) {
        if (method2.getName().equals(str) && m7565o(method2)) {
            atomicReference.set(method);
        }
    }

    /* renamed from: r */
    public static /* synthetic */ void m7568r(int i, int i2, Class cls, char c, String str, Field[] fieldArr, Field field) {
        String name = field.getName();
        int length = name.length();
        if (length == i - i2) {
            if (field.getType() == cls || cls.isAssignableFrom(field.getType())) {
                if (c >= 'A' && c <= 'Z' && c + ' ' == name.charAt(0) && name.regionMatches(1, str, i2 + 1, length - 1)) {
                    fieldArr[0] = field;
                } else if (name.regionMatches(0, str, i2, length)) {
                    fieldArr[1] = field;
                }
            }
        }
    }

    /* renamed from: s */
    public static /* synthetic */ void m7569s(String str, Method[] methodArr, Method method) {
        if (str.equals(method.getName())) {
            methodArr[0] = method;
        }
    }

    public static void setNoneStaticMemberClassParent(Object obj, Object obj2) {
        boolean z;
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        Field[] fieldArr = f12765f.get(cls);
        if (fieldArr == null) {
            fieldArr = cls.getDeclaredFields();
            int length = fieldArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                } else {
                    if (Modifier.isStatic(fieldArr[i].getModifiers())) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (!z) {
                ArrayList arrayList = new ArrayList(fieldArr.length);
                for (Field field : fieldArr) {
                    if (!Modifier.isStatic(field.getModifiers())) {
                        arrayList.add(field);
                    }
                }
                fieldArr = (Field[]) arrayList.toArray(new Field[arrayList.size()]);
            }
            f12763d.put(cls, fieldArr);
        }
        Field field2 = null;
        for (Field field3 : fieldArr) {
            if ("this$0".equals(field3.getName())) {
                field2 = field3;
            }
        }
        if (field2 != null) {
            field2.setAccessible(true);
            try {
                field2.set(obj, obj2);
            } catch (IllegalAccessException unused) {
                throw new JSONException("setNoneStaticMemberClassParent error, class " + cls);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x003e, code lost:
    
        if (r9.equals("CamelCase") == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String setterName(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.BeanUtils.setterName(java.lang.String, java.lang.String):java.lang.String");
    }

    public static void setters(Class cls, Consumer<Method> consumer) {
        setters(cls, null, null, consumer);
    }

    public static void staticMethod(Class cls, Consumer<Method> consumer) {
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (Method method : methodArr) {
            if (Modifier.isStatic(method.getModifiers())) {
                consumer.accept(method);
            }
        }
    }

    public static WildcardType subtypeOf(Type type) {
        return new WildcardTypeImpl(type instanceof WildcardType ? ((WildcardType) type).getUpperBounds() : new Type[]{type}, f12762c);
    }

    public static WildcardType supertypeOf(Type type) {
        return new WildcardTypeImpl(new Type[]{Object.class}, type instanceof WildcardType ? ((WildcardType) type).getLowerBounds() : new Type[]{type});
    }

    public static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: u */
    public static String m7571u(String str, int i, int i2) {
        char c;
        char c2;
        int i3 = i - i2;
        char[] cArr = new char[i3];
        str.getChars(i2, i, cArr, 0);
        char c3 = cArr[0];
        if (c3 >= 'a' && c3 <= 'z' && i3 > 1) {
            cArr[0] = (char) (c3 - ' ');
        } else if (c3 == '_' && i3 > 2 && (c = cArr[1]) >= 'a' && c <= 'z' && (c2 = cArr[2]) >= 'a' && c2 <= 'z') {
            cArr[1] = (char) (c - ' ');
        }
        return new String(cArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00e0, code lost:
    
        if (r0 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00e2, code lost:
    
        r12.put(r0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00e5, code lost:
    
        return r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [java.lang.reflect.Type, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map<java.lang.reflect.TypeVariable<?>, java.lang.reflect.Type>, java.util.Map] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Type m7572v(java.lang.reflect.Type r9, java.lang.Class<?> r10, java.lang.reflect.Type r11, java.util.Map<java.lang.reflect.TypeVariable<?>, java.lang.reflect.Type> r12) {
        /*
            r0 = 0
        L1:
            boolean r1 = r11 instanceof java.lang.reflect.TypeVariable
            if (r1 == 0) goto L27
            r1 = r11
            java.lang.reflect.TypeVariable r1 = (java.lang.reflect.TypeVariable) r1
            java.lang.Object r2 = r12.get(r1)
            java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
            if (r2 == 0) goto L17
            java.lang.Class r9 = java.lang.Void.TYPE
            if (r2 != r9) goto L15
            goto L16
        L15:
            r11 = r2
        L16:
            return r11
        L17:
            java.lang.Class r11 = java.lang.Void.TYPE
            r12.put(r1, r11)
            if (r0 != 0) goto L1f
            r0 = r1
        L1f:
            java.lang.reflect.Type r11 = m7573w(r9, r10, r1)
            if (r11 != r1) goto L1
            goto Le0
        L27:
            boolean r1 = r11 instanceof java.lang.Class
            if (r1 == 0) goto L4c
            r1 = r11
            java.lang.Class r1 = (java.lang.Class) r1
            boolean r2 = r1.isArray()
            if (r2 == 0) goto L4c
            java.lang.Class r11 = r1.getComponentType()
            java.lang.reflect.Type r9 = m7572v(r9, r10, r11, r12)
            boolean r10 = m7561k(r11, r9)
            if (r10 == 0) goto L45
            r11 = r1
            goto Le0
        L45:
            java.lang.reflect.GenericArrayType r9 = arrayOf(r9)
        L49:
            r11 = r9
            goto Le0
        L4c:
            boolean r1 = r11 instanceof java.lang.reflect.GenericArrayType
            if (r1 == 0) goto L67
            java.lang.reflect.GenericArrayType r11 = (java.lang.reflect.GenericArrayType) r11
            java.lang.reflect.Type r1 = r11.getGenericComponentType()
            java.lang.reflect.Type r9 = m7572v(r9, r10, r1, r12)
            boolean r10 = m7561k(r1, r9)
            if (r10 == 0) goto L62
            goto Le0
        L62:
            java.lang.reflect.GenericArrayType r9 = arrayOf(r9)
            goto L49
        L67:
            boolean r1 = r11 instanceof java.lang.reflect.ParameterizedType
            r2 = 0
            r3 = 1
            if (r1 == 0) goto Lae
            java.lang.reflect.ParameterizedType r11 = (java.lang.reflect.ParameterizedType) r11
            java.lang.reflect.Type r1 = r11.getOwnerType()
            java.lang.reflect.Type r4 = m7572v(r9, r10, r1, r12)
            boolean r1 = m7561k(r4, r1)
            r1 = r1 ^ r3
            java.lang.reflect.Type[] r5 = r11.getActualTypeArguments()
            int r6 = r5.length
        L81:
            if (r2 >= r6) goto La3
            r7 = r5[r2]
            java.lang.Class<java.lang.String> r8 = java.lang.String.class
            if (r7 != r8) goto L8a
            goto La0
        L8a:
            java.lang.reflect.Type r8 = m7572v(r9, r10, r7, r12)
            boolean r7 = m7561k(r8, r7)
            if (r7 != 0) goto La0
            if (r1 != 0) goto L9e
            java.lang.Object r1 = r5.clone()
            r5 = r1
            java.lang.reflect.Type[] r5 = (java.lang.reflect.Type[]) r5
            r1 = r3
        L9e:
            r5[r2] = r8
        La0:
            int r2 = r2 + 1
            goto L81
        La3:
            if (r1 == 0) goto Le0
            java.lang.reflect.Type r9 = r11.getRawType()
            java.lang.reflect.ParameterizedType r9 = newParameterizedTypeWithOwner(r4, r9, r5)
            goto L49
        Lae:
            boolean r1 = r11 instanceof java.lang.reflect.WildcardType
            if (r1 == 0) goto Le0
            r1 = r11
            java.lang.reflect.WildcardType r1 = (java.lang.reflect.WildcardType) r1
            java.lang.reflect.Type[] r4 = r1.getLowerBounds()
            java.lang.reflect.Type[] r1 = r1.getUpperBounds()
            int r5 = r4.length
            if (r5 != r3) goto Lcf
            r1 = r4[r2]
            java.lang.reflect.Type r9 = m7572v(r9, r10, r1, r12)
            r10 = r4[r2]
            if (r9 == r10) goto Le0
            java.lang.reflect.WildcardType r11 = supertypeOf(r9)
            goto Le0
        Lcf:
            int r4 = r1.length
            if (r4 != r3) goto Le0
            r3 = r1[r2]
            java.lang.reflect.Type r9 = m7572v(r9, r10, r3, r12)
            r10 = r1[r2]
            if (r9 == r10) goto Le0
            java.lang.reflect.WildcardType r11 = subtypeOf(r9)
        Le0:
            if (r0 == 0) goto Le5
            r12.put(r0, r11)
        Le5:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.BeanUtils.m7572v(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Map):java.lang.reflect.Type");
    }

    /* renamed from: w */
    public static Type m7573w(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> m7559i = m7559i(typeVariable);
        if (m7559i == null) {
            return typeVariable;
        }
        Type m7562l = m7562l(type, cls, m7559i);
        if (!(m7562l instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) m7562l).getActualTypeArguments()[m7564n(m7559i.getTypeParameters(), typeVariable)];
    }

    /* renamed from: x */
    public static String m7574x(String str, int i) {
        int length = str.length();
        char[] andSet = TypeUtils.f12807e.getAndSet(TypeUtils.f12806d, null);
        if (andSet == null) {
            andSet = new char[128];
        }
        int i2 = i;
        int i3 = 0;
        while (i2 < length) {
            try {
                char charAt = str.charAt(i2);
                if (charAt >= 'A' && charAt <= 'Z') {
                    charAt = (char) (charAt + ' ');
                    if (i2 > i) {
                        andSet[i3] = NameUtil.USCORE;
                        i3++;
                    }
                }
                andSet[i3] = charAt;
                i2++;
                i3++;
            } finally {
                TypeUtils.f12807e.set(TypeUtils.f12806d, andSet);
            }
        }
        return new String(andSet, 0, i3);
    }

    /* renamed from: y */
    public static String m7575y(String str, int i, boolean z) {
        int i2;
        int length = str.length();
        char[] andSet = TypeUtils.f12807e.getAndSet(TypeUtils.f12806d, null);
        if (andSet == null) {
            andSet = new char[128];
        }
        int i3 = i;
        int i4 = 0;
        while (i3 < length) {
            try {
                char charAt = str.charAt(i3);
                if (z) {
                    if (charAt >= 'A' && charAt <= 'Z') {
                        if (i3 > i) {
                            andSet[i4] = NameUtil.USCORE;
                            i4++;
                        }
                    }
                    if (charAt >= 'a' && charAt <= 'z') {
                        i2 = charAt - ' ';
                        charAt = (char) i2;
                    }
                } else if (charAt >= 'A' && charAt <= 'Z') {
                    if (i3 > i) {
                        andSet[i4] = NameUtil.USCORE;
                        i4++;
                    }
                    i2 = charAt + ' ';
                    charAt = (char) i2;
                }
                andSet[i4] = charAt;
                i3++;
                i4++;
            } finally {
                TypeUtils.f12807e.set(TypeUtils.f12806d, andSet);
            }
        }
        return new String(andSet, 0, i4);
    }

    /* renamed from: z */
    public static String m7576z(String str, int i, char c) {
        int i2;
        char charAt;
        char charAt2;
        int i3;
        int i4;
        char charAt3;
        int i5;
        char charAt4;
        int i6;
        char charAt5;
        int length = str.length();
        char[] andSet = TypeUtils.f12807e.getAndSet(TypeUtils.f12806d, null);
        if (andSet == null) {
            andSet = new char[128];
        }
        int i7 = i;
        int i8 = 0;
        while (i7 < length) {
            try {
                char charAt6 = str.charAt(i7);
                if (i7 == i) {
                    if (charAt6 >= 'a' && charAt6 <= 'z' && (i6 = i7 + 1) < length && (charAt5 = str.charAt(i6)) >= 'a' && charAt5 <= 'z') {
                        charAt6 = (char) (charAt6 - ' ');
                    } else if (charAt6 == '_' && (i5 = i7 + 1) < length && (charAt4 = str.charAt(i5)) >= 'a' && charAt4 <= 'z') {
                        andSet[i8] = charAt6;
                        charAt6 = (char) (charAt4 - ' ');
                        i8++;
                        i7 = i5;
                    }
                } else if (charAt6 < 'A' || charAt6 > 'Z' || (i4 = i7 + 1) >= length || ((charAt3 = str.charAt(i4)) >= 'A' && charAt3 <= 'Z')) {
                    if (charAt6 >= 'A' && charAt6 <= 'Z' && i7 > i && (i2 = i7 + 1) < length && (charAt = str.charAt(i2)) >= 'A' && charAt <= 'Z' && (charAt2 = str.charAt(i7 - 1)) >= 'a' && charAt2 <= 'z') {
                        i3 = i8 + 1;
                        andSet[i8] = c;
                        i8 = i3;
                    }
                } else if (i7 > i) {
                    i3 = i8 + 1;
                    andSet[i8] = c;
                    i8 = i3;
                }
                andSet[i8] = charAt6;
                i7++;
                i8++;
            } finally {
                TypeUtils.f12807e.set(TypeUtils.f12806d, andSet);
            }
        }
        return new String(andSet, 0, i8);
    }

    public static void getters(Class cls, Class cls2, Consumer<Method> consumer) {
        getters(cls, cls2, false, consumer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0150, code lost:
    
        if (((com.alibaba.fastjson2.annotation.JSONField) r9).unwrapped() == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0074, code lost:
    
        if (r13.f116569kotlin != false) goto L39;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x006c. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setters(java.lang.Class r12, com.alibaba.fastjson2.codec.BeanInfo r13, java.lang.Class r14, java.util.function.Consumer<java.lang.reflect.Method> r15) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.BeanUtils.setters(java.lang.Class, com.alibaba.fastjson2.codec.BeanInfo, java.lang.Class, java.util.function.Consumer):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <A extends Annotation> A findAnnotation(Annotation annotation, Class<A> cls) {
        if (annotation == 0) {
            throw new NullPointerException("annotation must not be null");
        }
        if (cls != null) {
            if (annotation.annotationType() == cls) {
                return annotation;
            }
            return null;
        }
        throw new NullPointerException("annotationType must not be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b8, code lost:
    
        if (r6 != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x018b, code lost:
    
        if (findAnnotation(r9, com.alibaba.fastjson2.annotation.JSONField.class) == null) goto L106;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00b4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0206  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void getters(java.lang.Class r23, java.lang.Class r24, boolean r25, java.util.function.Consumer<java.lang.reflect.Method> r26) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.BeanUtils.getters(java.lang.Class, java.lang.Class, boolean, java.util.function.Consumer):void");
    }

    public static void cleanupCache(ClassLoader classLoader) {
        Iterator<Map.Entry<Class, Field[]>> it2 = f12763d.entrySet().iterator();
        while (it2.hasNext()) {
            if (it2.next().getKey().getClassLoader() == classLoader) {
                it2.remove();
            }
        }
        Iterator<Map.Entry<Class, Map<String, Field>>> it3 = f12764e.entrySet().iterator();
        while (it3.hasNext()) {
            if (it3.next().getKey().getClassLoader() == classLoader) {
                it3.remove();
            }
        }
        Iterator<Map.Entry<Class, Field[]>> it4 = f12765f.entrySet().iterator();
        while (it4.hasNext()) {
            if (it4.next().getKey().getClassLoader() == classLoader) {
                it4.remove();
            }
        }
        Iterator<Map.Entry<Class, Method[]>> it5 = f12766g.entrySet().iterator();
        while (it5.hasNext()) {
            if (it5.next().getKey().getClassLoader() == classLoader) {
                it5.remove();
            }
        }
        Iterator<Map.Entry<Class, Constructor[]>> it6 = f12767h.entrySet().iterator();
        while (it6.hasNext()) {
            if (it6.next().getKey().getClassLoader() == classLoader) {
                it6.remove();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0065 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.reflect.Field getField(java.lang.Class r14, java.lang.reflect.Method r15) {
        /*
            java.lang.String r5 = r15.getName()
            int r1 = r5.length()
            java.lang.Class r0 = r15.getReturnType()
            r2 = 3
            r7 = 1
            r8 = 0
            r3 = 2
            if (r1 <= r3) goto L5e
            char r4 = r5.charAt(r8)
            char r6 = r5.charAt(r7)
            char r9 = r5.charAt(r3)
            r10 = 105(0x69, float:1.47E-43)
            r11 = 115(0x73, float:1.61E-43)
            if (r4 != r10) goto L34
            if (r6 != r11) goto L34
            java.lang.Class<java.lang.Boolean> r4 = java.lang.Boolean.class
            if (r0 == r4) goto L31
            java.lang.Class r4 = java.lang.Boolean.TYPE
            if (r0 != r4) goto L2f
            goto L31
        L2f:
            r4 = r8
            goto L32
        L31:
            r4 = r7
        L32:
            r6 = r8
            goto L60
        L34:
            r10 = 103(0x67, float:1.44E-43)
            r12 = 116(0x74, float:1.63E-43)
            r13 = 101(0x65, float:1.42E-43)
            if (r4 != r10) goto L49
            if (r6 != r13) goto L49
            if (r9 != r12) goto L49
            if (r1 <= r2) goto L44
            r4 = r7
            goto L45
        L44:
            r4 = r8
        L45:
            r6 = r4
            r4 = r8
            r9 = r4
            goto L61
        L49:
            if (r4 != r11) goto L5e
            if (r6 != r13) goto L5e
            if (r9 != r12) goto L5e
            if (r1 <= r2) goto L59
            int r4 = r15.getParameterCount()
            if (r4 != r7) goto L59
            r4 = r7
            goto L5a
        L59:
            r4 = r8
        L5a:
            r9 = r4
            r4 = r8
            r6 = r4
            goto L61
        L5e:
            r4 = r8
            r6 = r4
        L60:
            r9 = r6
        L61:
            java.lang.reflect.Field[] r10 = new java.lang.reflect.Field[r3]
            if (r4 != 0) goto L69
            if (r6 != 0) goto L69
            if (r9 == 0) goto L8d
        L69:
            if (r4 != 0) goto L75
            if (r6 == 0) goto L6e
            goto L75
        L6e:
            java.lang.Class[] r15 = r15.getParameterTypes()
            r15 = r15[r8]
            goto L76
        L75:
            r15 = r0
        L76:
            if (r4 == 0) goto L79
            r2 = r3
        L79:
            int r0 = r1 - r2
            char[] r0 = new char[r0]
            r5.getChars(r2, r1, r0, r8)
            char r4 = r0[r8]
            com.sunia.HTREnginev2.to r9 = new com.sunia.HTREnginev2.to
            r0 = r9
            r3 = r15
            r6 = r10
            r0.<init>()
            declaredFields(r14, r9)
        L8d:
            r14 = r10[r8]
            if (r14 == 0) goto L92
            goto L94
        L92:
            r14 = r10[r7]
        L94:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.util.BeanUtils.getField(java.lang.Class, java.lang.reflect.Method):java.lang.reflect.Field");
    }

    public static Method getMethod(Class cls, Method method) {
        boolean z;
        if (cls != null && cls != Object.class && cls != Serializable.class) {
            ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
            Method[] methodArr = concurrentMap.get(cls);
            if (methodArr == null) {
                methodArr = cls.getMethods();
                concurrentMap.put(cls, methodArr);
            }
            for (Method method2 : methodArr) {
                if (method2.getName().equals(method.getName()) && method2.getParameterCount() == method.getParameterCount()) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    int i = 0;
                    while (true) {
                        if (i >= parameterTypes.length) {
                            z = true;
                            break;
                        }
                        if (!parameterTypes[i].equals(parameterTypes2[i])) {
                            z = false;
                            break;
                        }
                        i++;
                    }
                    if (z) {
                        return method2;
                    }
                }
            }
        }
        return null;
    }

    public static String getterName(String str, String str2) {
        char c;
        if (str2 == null) {
            str2 = "CamelCase";
        }
        int length = str.length();
        int i = 0;
        boolean startsWith = str.startsWith("is", 0);
        boolean startsWith2 = str.startsWith("get", 0);
        int i2 = startsWith ? 2 : startsWith2 ? 3 : 0;
        if (length == i2) {
            return str;
        }
        char c2 = 65535;
        switch (str2.hashCode()) {
            case -2068429102:
                if (str2.equals("UpperCase")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1863045342:
                if (str2.equals("UpperCaseWithDots")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1112704575:
                if (str2.equals("NeverUseThisValueExceptDefaultValue")) {
                    c2 = 2;
                    break;
                }
                break;
            case 601822360:
                if (str2.equals("UpperCaseWithDashes")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1336502620:
                if (str2.equals("PascalCase")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1371349591:
                if (str2.equals("UpperCamelCaseWithSpaces")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1460726553:
                if (str2.equals("KebabCase")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1655544038:
                if (str2.equals("CamelCase")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1839922637:
                if (str2.equals("CamelCase1x")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 1976554305:
                if (str2.equals("UpperCaseWithUnderScores")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 2087942256:
                if (str2.equals("SnakeCase")) {
                    c2 = '\n';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return str.substring(i2).toUpperCase();
            case 1:
                return m7560j(str, i2, true);
            case 2:
            case 7:
                int i3 = length - i2;
                char[] andSet = f12760a.getAndSet(null);
                if (andSet == null || andSet.length < i3) {
                    andSet = new char[Math.max(32, i3)];
                }
                try {
                    str.getChars(i2, length, andSet, 0);
                    char c3 = andSet[0];
                    boolean z = andSet.length > 1 && (c = andSet[1]) >= 'A' && c <= 'Z';
                    if (c3 >= 'A' && c3 <= 'Z' && !z) {
                        andSet[0] = (char) (c3 + ' ');
                    }
                    if (i3 <= 8) {
                        long j = 0;
                        int i4 = 0;
                        while (true) {
                            if (i4 < i3) {
                                char c4 = andSet[i4];
                                if (c4 > 128) {
                                    j = 0;
                                } else {
                                    j = (j << 8) + c4;
                                    i4++;
                                }
                            }
                        }
                        if (j != 0) {
                            NameCacheEntry[] nameCacheEntryArr = f12761b;
                            int length2 = ((int) j) & (nameCacheEntryArr.length - 1);
                            NameCacheEntry nameCacheEntry = nameCacheEntryArr[length2];
                            if (nameCacheEntry == null) {
                                String str3 = new String(andSet, 0, i3);
                                nameCacheEntryArr[length2] = new NameCacheEntry(str3, j);
                                return str3;
                            }
                            if (nameCacheEntry.value == j) {
                                return nameCacheEntry.name;
                            }
                        }
                    }
                    return new String(andSet, 0, i3);
                } finally {
                    f12760a.set(andSet);
                }
            case 3:
                return m7558h(str, i2, true);
            case 4:
                return m7571u(str, length, i2);
            case 5:
                return m7576z(str, i2, ' ');
            case 6:
                if (startsWith) {
                    i = 2;
                } else if (startsWith2) {
                    i = 3;
                }
                StringBuilder sb = new StringBuilder();
                for (int i5 = i; i5 < str.length(); i5++) {
                    char charAt = str.charAt(i5);
                    if (charAt >= 'A' && charAt <= 'Z') {
                        charAt = (char) (charAt + ' ');
                        if (i5 > i) {
                            sb.append('-');
                        }
                    }
                    sb.append(charAt);
                }
                return sb.toString();
            case '\b':
                char[] cArr = new char[length - i2];
                str.getChars(i2, length, cArr, 0);
                char c5 = cArr[0];
                if (c5 >= 'A' && c5 <= 'Z') {
                    cArr[0] = (char) (c5 + ' ');
                }
                return new String(cArr);
            case '\t':
                return m7575y(str, i2, true);
            case '\n':
                return m7574x(str, i2);
            default:
                throw new JSONException("TODO : " + str2);
        }
    }

    public static String setterName(String str, int i) {
        char c;
        int length = str.length();
        int i2 = length - i;
        char[] cArr = new char[i2];
        str.getChars(i, length, cArr, 0);
        char c2 = cArr[0];
        boolean z = i2 > 1 && (c = cArr[1]) >= 'A' && c <= 'Z';
        if (c2 >= 'A' && c2 <= 'Z' && !z) {
            cArr[0] = (char) (c2 + ' ');
        }
        return new String(cArr);
    }

    public static void setters(Class cls, boolean z, Consumer<Method> consumer) {
        ConcurrentMap<Class, Method[]> concurrentMap = f12766g;
        Method[] methodArr = concurrentMap.get(cls);
        if (methodArr == null) {
            methodArr = cls.getMethods();
            concurrentMap.put(cls, methodArr);
        }
        for (Method method : methodArr) {
            int parameterCount = method.getParameterCount();
            if (parameterCount == 0) {
                String name = method.getName();
                if (!z || (name.length() > 3 && name.startsWith("get", 0))) {
                    Class<?> returnType = method.getReturnType();
                    if (returnType == AtomicInteger.class || returnType == AtomicLong.class || returnType == AtomicBoolean.class || returnType == AtomicIntegerArray.class || returnType == AtomicLongArray.class || Collection.class.isAssignableFrom(returnType)) {
                        consumer.accept(method);
                    }
                }
            }
            if (parameterCount == 1 && !Modifier.isStatic(method.getModifiers())) {
                String name2 = method.getName();
                int length = name2.length();
                if (!z || (length > 3 && name2.startsWith(ExtensionNamespaceContext.EXSLT_SET_PREFIX, 0))) {
                    consumer.accept(method);
                }
            }
        }
    }
}
