package com.onyx.common.util;

import android.annotation.TargetApi;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes8.dex */
public class ReflectUtils {
    public static final String TAG = "ReflectUtils";
    private static Object sDummyObject = new Object();

    static {
        setHiddenApiExemptions();
    }

    public static Class<?> classForName(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            JLog.m41643e(TAG, e);
            return null;
        }
    }

    public static boolean cleanFieldFinalModifierSafely(Field field) {
        return setDeclareFieldSafely((Class<?>) Field.class, field, "accessFlags", Integer.valueOf(field.getModifiers() & (-17)));
    }

    public static boolean constructObjectSafely(AtomicReference<Object> atomicReference, Constructor<?> constructor, Object... objArr) {
        if (constructor == null) {
            return false;
        }
        try {
            atomicReference.set(constructor.newInstance(objArr));
            return true;
        } catch (Throwable th) {
            JLog.m41652w(TAG, th);
            return false;
        }
    }

    public static Map<String, String> getBeanKeyValueMap(Object obj) {
        HashMap hashMap = new HashMap();
        try {
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null) {
                        hashMap.put(field.getName(), obj2.toString());
                    }
                }
            }
        } catch (Exception e) {
            JLog.m41652w(TAG, e);
        }
        return hashMap;
    }

    public static boolean getClassSafely(AtomicReference<Class> atomicReference, String str) {
        try {
            atomicReference.set(Class.forName(str));
            return true;
        } catch (ClassNotFoundException e) {
            JLog.m41652w(TAG, e);
            return false;
        }
    }

    public static boolean getConstructorSafely(AtomicReference<Constructor<?>> atomicReference, Class<?> cls, Class<?>... clsArr) {
        if (cls == null) {
            return false;
        }
        try {
            atomicReference.set(cls.getConstructor(clsArr));
            return true;
        } catch (NoSuchMethodException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (SecurityException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static boolean getDeclareIntFieldSafely(AtomicReference<Integer> atomicReference, Class<?> cls, Object obj, String str) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField == null) {
                return false;
            }
            declaredField.setAccessible(true);
            atomicReference.set(Integer.valueOf(declaredField.getInt(obj)));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static boolean getDeclareStringFieldSafely(AtomicReference<String> atomicReference, Class<?> cls, Object obj, String str) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField == null) {
                return false;
            }
            declaredField.setAccessible(true);
            atomicReference.set((String) declaredField.get(obj));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static Constructor<?> getDeclaredConstructorSafely(Class<?> cls, Class<?>... clsArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (getDeclaredConstructorSafely(atomicReference, cls, clsArr)) {
            return (Constructor) atomicReference.get();
        }
        return null;
    }

    public static Object getDeclaredFieldSafely(Class<?> cls, Object obj, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getDeclaredFieldSafely(atomicReference, cls, obj, str)) {
            return atomicReference.get();
        }
        return null;
    }

    public static boolean getDeclaredMethod(AtomicReference<Method> atomicReference, Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null) {
            return false;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
            declaredMethod.setAccessible(true);
            atomicReference.set(declaredMethod);
            return true;
        } catch (NoSuchMethodException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (SecurityException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static Method getDeclaredMethodSafely(Class<?> cls, String str, Class<?>... clsArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (getDeclaredMethod(atomicReference, cls, str, clsArr)) {
            return (Method) atomicReference.get();
        }
        return null;
    }

    public static Object getFieldSafely(Class<?> cls, Object obj, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getFieldSafely(atomicReference, cls, obj, str)) {
            return atomicReference.get();
        }
        return null;
    }

    public static int getIntSafely(Object obj, Field field) {
        field.setAccessible(true);
        try {
            return field.getInt(obj);
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return 0;
        }
    }

    public static boolean getMethodSafely(AtomicReference<Method> atomicReference, Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null) {
            return false;
        }
        try {
            atomicReference.set(cls.getMethod(str, clsArr));
            return true;
        } catch (NoSuchMethodException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (SecurityException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static Object getObjectFiled(Object obj, String str) {
        try {
            Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            try {
                return declaredField.get(obj);
            } catch (IllegalAccessException e) {
                JLog.m41652w(TAG, e);
                return null;
            }
        } catch (NoSuchFieldException e2) {
            JLog.m41652w(TAG, e2);
            return null;
        }
    }

    public static Object getObjectSafely(Object obj, Field field) {
        field.setAccessible(true);
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return null;
        }
    }

    public static boolean getSafely(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public static boolean getStaticFieldSafely(AtomicReference<Object> atomicReference, Class<?> cls, String str) {
        if (cls == null) {
            return false;
        }
        try {
            atomicReference.set(cls.getField(str).get(null));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static boolean getStaticInnerClassDeclareIntFieldSafely(AtomicReference<Integer> atomicReference, Class<?> cls, String str, String str2) {
        if (cls == null) {
            return false;
        }
        try {
            for (Class<?> cls2 : cls.getDeclaredClasses()) {
                if (Modifier.toString(cls2.getModifiers()).contains("static") && cls2.getSimpleName().contains(str)) {
                    Object newInstance = cls2.newInstance();
                    Field declaredField = cls2.getDeclaredField(str2);
                    declaredField.setAccessible(true);
                    atomicReference.set(Integer.valueOf(declaredField.getInt(newInstance)));
                }
            }
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (InstantiationException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (NoSuchFieldException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        } catch (SecurityException e5) {
            JLog.m41652w(TAG, e5);
            return false;
        }
    }

    public static boolean getStaticIntDeclaredFieldSafely(AtomicReference<Integer> atomicReference, Class<?> cls, String str) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            atomicReference.set(Integer.valueOf(declaredField.getInt(null)));
            return true;
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException e) {
            JLog.m41652w(TAG, e);
            return false;
        }
    }

    public static boolean getStaticIntFieldSafely(AtomicReference<Integer> atomicReference, Class<?> cls, String str) {
        if (cls == null) {
            return false;
        }
        try {
            atomicReference.set(Integer.valueOf(cls.getField(str).getInt(null)));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static boolean invokeMethodSafely(AtomicReference<Object> atomicReference, Method method, Object obj, Object... objArr) {
        if (method == null) {
            return false;
        }
        try {
            atomicReference.set(method.invoke(obj, objArr));
            return true;
        } catch (Throwable th) {
            JLog.m41652w(TAG, th);
            return false;
        }
    }

    public static Object newInstance(Constructor<?> constructor, Object... objArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (constructObjectSafely(atomicReference, constructor, objArr)) {
            return atomicReference.get();
        }
        return null;
    }

    public static boolean setDeclareFieldSafely(String str, Object obj, String str2, Object obj2) {
        return setDeclareFieldSafely(classForName(str), obj, str2, obj2);
    }

    public static boolean setDeclareIntFieldSafely(String str, Object obj, String str2, int i) {
        return setDeclareIntFieldSafely(classForName(str), obj, str2, i);
    }

    @TargetApi(28)
    private static void setHiddenApiExemptions() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Class cls = (Class) declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            ((Method) declaredMethod2.invoke(cls, "setHiddenApiExemptions", new Class[]{String[].class})).invoke(((Method) declaredMethod2.invoke(cls, "getRuntime", null)).invoke(null, new Object[0]), new String[]{"L"});
        } catch (Throwable th) {
            JLog.m41644e(TAG, th, "reflect bootstrap failed:", new Object[0]);
        }
    }

    public static void setObjectSafely(Field field, Object obj, Object obj2) {
        field.setAccessible(true);
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
        }
    }

    public static boolean setDeclareFieldSafely(Class<?> cls, Object obj, String str, Object obj2) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, obj2);
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (NoSuchFieldException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static boolean setDeclareIntFieldSafely(Class<?> cls, Object obj, String str, int i) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.setInt(obj, i);
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (NoSuchFieldException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static Object invokeMethodSafely(Method method, Object obj, Object... objArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (!invokeMethodSafely(atomicReference, method, obj, objArr)) {
            return null;
        }
        if (atomicReference.get() != null) {
            return atomicReference.get();
        }
        return sDummyObject;
    }

    public static Constructor<?> getConstructorSafely(Class<?> cls, Class<?>... clsArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (getConstructorSafely(atomicReference, cls, clsArr)) {
            return (Constructor) atomicReference.get();
        }
        return null;
    }

    public static boolean getDeclaredConstructorSafely(AtomicReference<Constructor<?>> atomicReference, Class<?> cls, Class<?>... clsArr) {
        if (cls == null) {
            return false;
        }
        try {
            atomicReference.set(cls.getDeclaredConstructor(clsArr));
            return true;
        } catch (NoSuchMethodException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (SecurityException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        }
    }

    public static boolean getDeclaredFieldSafely(AtomicReference<Object> atomicReference, Class<?> cls, Object obj, String str) {
        if (cls == null) {
            return false;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            atomicReference.set(declaredField.get(obj));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static boolean getFieldSafely(AtomicReference<Object> atomicReference, Class<?> cls, Object obj, String str) {
        if (cls == null) {
            return false;
        }
        try {
            Field field = cls.getField(str);
            field.setAccessible(true);
            atomicReference.set(field.get(obj));
            return true;
        } catch (IllegalAccessException e) {
            JLog.m41652w(TAG, e);
            return false;
        } catch (IllegalArgumentException e2) {
            JLog.m41652w(TAG, e2);
            return false;
        } catch (NoSuchFieldException e3) {
            JLog.m41652w(TAG, e3);
            return false;
        } catch (SecurityException e4) {
            JLog.m41652w(TAG, e4);
            return false;
        }
    }

    public static Method getMethodSafely(Class<?> cls, String str, Class<?>... clsArr) {
        AtomicReference atomicReference = new AtomicReference();
        if (getMethodSafely(atomicReference, cls, str, clsArr)) {
            return (Method) atomicReference.get();
        }
        return null;
    }

    public static Object getStaticFieldSafely(Class<?> cls, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getStaticFieldSafely(atomicReference, cls, str)) {
            return atomicReference.get();
        }
        return null;
    }

    public static int getStaticIntDeclaredFieldSafely(Class<?> cls, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getStaticIntDeclaredFieldSafely(atomicReference, cls, str)) {
            return ((Integer) atomicReference.get()).intValue();
        }
        return 0;
    }

    public static int getStaticIntFieldSafely(Class<?> cls, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getStaticIntFieldSafely(atomicReference, cls, str)) {
            return ((Integer) atomicReference.get()).intValue();
        }
        return 0;
    }

    public static int getDeclareIntFieldSafely(String str, Object obj, String str2) {
        return getDeclareIntFieldSafely(classForName(str), obj, str2);
    }

    public static String getDeclareStringFieldSafely(Class<?> cls, Object obj, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getDeclareStringFieldSafely(atomicReference, cls, obj, str)) {
            return (String) atomicReference.get();
        }
        return null;
    }

    public static int getDeclareIntFieldSafely(Class<?> cls, Object obj, String str) {
        AtomicReference atomicReference = new AtomicReference();
        if (getDeclareIntFieldSafely(atomicReference, cls, obj, str)) {
            return ((Integer) atomicReference.get()).intValue();
        }
        return 0;
    }

    public static Field getDeclaredFieldSafely(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            JLog.m41652w(TAG, e);
            return null;
        }
    }

    public static Field getFieldSafely(Class<?> cls, String str) {
        try {
            return cls.getField(str);
        } catch (NoSuchFieldException e) {
            JLog.m41652w(TAG, e);
            return null;
        }
    }

    public static boolean getDeclaredFieldSafely(AtomicReference<Field> atomicReference, Class<?> cls, String str) {
        try {
            atomicReference.set(cls.getDeclaredField(str));
            return true;
        } catch (NoSuchFieldException e) {
            JLog.m41652w(TAG, e);
            return false;
        }
    }

    public static int getStaticInnerClassDeclareIntFieldSafely(String str, String str2, String str3) {
        return getStaticInnerClassDeclareIntFieldSafely(classForName(str), str2, str3);
    }

    public static int getStaticInnerClassDeclareIntFieldSafely(Class<?> cls, String str, String str2) {
        AtomicReference atomicReference = new AtomicReference();
        if (getStaticInnerClassDeclareIntFieldSafely(atomicReference, cls, str, str2)) {
            return ((Integer) atomicReference.get()).intValue();
        }
        return 0;
    }
}
