package com.twelvemonkeys.lang;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.twelvemonkeys.util.convert.ConversionException;
import com.twelvemonkeys.util.convert.Converter;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class BeanUtil {
    /* renamed from: a */
    public static Object m60720a(Object obj, Class<?> cls) throws ConversionException {
        if (cls.isPrimitive()) {
            if (cls == Boolean.TYPE && (obj instanceof Boolean)) {
                return obj;
            }
            if (cls == Byte.TYPE && (obj instanceof Byte)) {
                return obj;
            }
            if (cls == Character.TYPE && (obj instanceof Character)) {
                return obj;
            }
            if (cls == Double.TYPE && (obj instanceof Double)) {
                return obj;
            }
            if (cls == Float.TYPE && (obj instanceof Float)) {
                return obj;
            }
            if (cls == Integer.TYPE && (obj instanceof Integer)) {
                return obj;
            }
            if (cls == Long.TYPE && (obj instanceof Long)) {
                return obj;
            }
            if (cls == Short.TYPE && (obj instanceof Short)) {
                return obj;
            }
        }
        if (obj instanceof String) {
            return Converter.getInstance().toObject((String) obj, cls);
        }
        if (cls == String.class) {
            return Converter.getInstance().toString(obj);
        }
        throw new ConversionException("Cannot convert " + obj.getClass().getName() + " to " + cls.getName());
    }

    /* renamed from: b */
    public static Method m60721b(Object obj, String str, Class[] clsArr, Object[] objArr) throws NoSuchMethodException {
        Method method;
        Method method2;
        Class cls = clsArr[0];
        try {
            return obj.getClass().getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            if (ReflectUtil.isPrimitiveWrapper(cls)) {
                clsArr[0] = ReflectUtil.unwrapType(cls);
            }
            try {
                method = obj.getClass().getMethod(str, clsArr);
            } catch (Throwable unused) {
                method = null;
            }
            if (method == null) {
                while (true) {
                    cls = cls.getSuperclass();
                    if (cls == null) {
                        break;
                    }
                    clsArr[0] = cls;
                    try {
                        method = obj.getClass().getMethod(str, clsArr);
                        break;
                    } catch (Throwable unused2) {
                    }
                }
            }
            if (method == null) {
                for (Method method3 : obj.getClass().getMethods()) {
                    if (Modifier.isPublic(method3.getModifiers()) && method3.getName().equals(str) && method3.getReturnType() == Void.TYPE && method3.getParameterTypes().length == 1) {
                        try {
                            objArr[0] = m60720a(objArr[0], method3.getParameterTypes()[0]);
                            method2 = method3;
                            break;
                        } catch (Throwable unused3) {
                            continue;
                        }
                    }
                }
            }
            method2 = method;
            if (method2 != null) {
                return method2;
            }
            throw e;
        }
    }

    public static void configure(Object obj, Map<String, ?> map) throws InvocationTargetException {
        configure(obj, map, false);
    }

    public static <T> T createInstance(Class<T> cls, Object obj) throws InvocationTargetException {
        return (T) createInstance((Class) cls, obj);
    }

    public static Object getPropertyValue(Object obj, String str) {
        String substring;
        int i;
        Object[] objArr;
        Class<?> cls;
        if (obj == null || str == null || str.length() < 1) {
            return null;
        }
        Class<?> cls2 = obj.getClass();
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length() && i2 >= 0) {
            i3 = str.indexOf(".", i3 + 1);
            if (i3 > 0) {
                substring = str.substring(i2, i3);
                i = i3 + 1;
            } else {
                substring = str.substring(i2);
                i = -1;
            }
            Class<?>[] clsArr = new Class[0];
            int indexOf = substring.indexOf(IteratorUtils.f104923a);
            if (indexOf <= 0) {
                objArr = null;
            } else {
                if (!substring.endsWith(IteratorUtils.f104924b)) {
                    return null;
                }
                String substring2 = substring.substring(indexOf + 1, substring.length() - 1);
                substring = substring.substring(0, indexOf);
                objArr = new Object[1];
                Class<?>[] clsArr2 = new Class[1];
                if (StringUtil.isNumber(substring2)) {
                    try {
                        objArr[0] = Integer.valueOf(substring2);
                        clsArr2[0] = Integer.TYPE;
                    } catch (NumberFormatException unused) {
                    }
                } else {
                    objArr[0] = substring2.toLowerCase();
                    clsArr2[0] = String.class;
                }
                clsArr = clsArr2;
            }
            String str2 = "get" + StringUtil.capitalize(substring);
            try {
                Method method = cls2.getMethod(str2, clsArr);
                if (method == null) {
                    return null;
                }
                try {
                    obj = method.invoke(obj, objArr);
                    if (obj == null) {
                        return null;
                    }
                    cls2 = obj.getClass();
                    i2 = i;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                    return null;
                } catch (NullPointerException e2) {
                    PrintStream printStream = System.err;
                    StringBuilder sb = new StringBuilder();
                    sb.append(cls2.getName());
                    sb.append(".");
                    sb.append(method.getName());
                    sb.append(MotionUtils.f31761c);
                    sb.append((clsArr.length <= 0 || (cls = clsArr[0]) == null) ? "" : cls.getName());
                    sb.append(MotionUtils.f31762d);
                    printStream.println(sb.toString());
                    e2.printStackTrace();
                    return null;
                } catch (InvocationTargetException e3) {
                    System.err.println("property=" + str + " & result=" + obj + " & param=" + Arrays.toString(objArr));
                    e3.getTargetException().printStackTrace();
                    e3.printStackTrace();
                    return null;
                }
            } catch (NoSuchMethodException unused2) {
                System.err.print("No method named \"" + str2 + "()\"");
                if (clsArr.length > 0 && clsArr[0] != null) {
                    System.err.print(" with the parameter " + clsArr[0].getName());
                }
                System.err.println(" in class " + cls2.getName() + "!");
                return null;
            }
        }
        return obj;
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Object obj) throws InvocationTargetException {
        return invokeStaticMethod(cls, str, obj);
    }

    public static void setPropertyValue(Object obj, String str, Object obj2) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        Class cls = obj2 != null ? obj2.getClass() : Object.class;
        int indexOf = str.indexOf(46);
        if (indexOf >= 0) {
            obj = getPropertyValue(obj, str.substring(0, indexOf));
            str = str.substring(indexOf + 1);
        }
        Object[] objArr = {obj2};
        m60721b(obj, ExtensionNamespaceContext.EXSLT_SET_PREFIX + StringUtil.capitalize(str), new Class[]{cls}, objArr).invoke(obj, objArr);
    }

    public static void configure(Object obj, Map<String, ?> map, boolean z) throws InvocationTargetException {
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            try {
                String valueOf = StringUtil.valueOf(entry.getKey());
                try {
                    setPropertyValue(obj, valueOf, entry.getValue());
                } catch (NoSuchMethodException unused) {
                    if (z && valueOf.indexOf(45) > 0) {
                        setPropertyValue(obj, StringUtil.lispToCamel(valueOf, false), entry.getValue());
                    }
                }
            } catch (IllegalAccessException | NoSuchMethodException unused2) {
            }
        }
    }

    public static <T> T createInstance(Class<T> cls, Object... objArr) throws InvocationTargetException {
        Class<?>[] clsArr;
        if (objArr != null) {
            try {
                if (objArr.length > 0) {
                    clsArr = new Class[objArr.length];
                    for (int i = 0; i < objArr.length; i++) {
                        clsArr[i] = objArr[i].getClass();
                    }
                    return cls.getConstructor(clsArr).newInstance(objArr);
                }
            } catch (ExceptionInInitializerError | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException unused) {
                return null;
            }
        }
        clsArr = null;
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Object... objArr) throws InvocationTargetException {
        try {
            Class<?>[] clsArr = new Class[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            Method method = cls.getMethod(str, clsArr);
            if (Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
                return method.invoke(null, objArr);
            }
            return null;
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException unused) {
            return null;
        }
    }
}
