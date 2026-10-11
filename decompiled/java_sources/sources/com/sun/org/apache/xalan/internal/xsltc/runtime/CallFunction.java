package com.sun.org.apache.xalan.internal.xsltc.runtime;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Vector;

/* loaded from: classes10.dex */
public final class CallFunction {
    public static String className;
    public static Class clazz;
    public static String methodName;
    public static int nArgs;

    private static Constructor findConstructor(Object[] objArr) {
        Constructor<?>[] constructors = clazz.getConstructors();
        Vector vector = null;
        for (int i = 0; i < constructors.length; i++) {
            if (Modifier.isPublic(constructors[i].getModifiers()) && constructors[i].getParameterTypes().length == nArgs) {
                if (vector == null) {
                    vector = new Vector();
                }
                vector.addElement(constructors[i]);
            }
        }
        if (vector == null) {
            throw new RuntimeException("CONSTRUCTOR_NOT_FOUND_ERR" + className + ":" + methodName);
        }
        int size = vector.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            Constructor constructor = (Constructor) vector.elementAt(i2);
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            int i3 = 0;
            while (true) {
                if (i3 >= nArgs) {
                    break;
                }
                Class<?> cls = objArr[i3].getClass();
                Class<?> cls2 = parameterTypes[i3];
                if (cls != cls2 && !cls.isAssignableFrom(cls2)) {
                    z = false;
                    break;
                }
                i3++;
                z = true;
            }
            if (z) {
                return constructor;
            }
        }
        return null;
    }

    private static Method findMethods(Object[] objArr) {
        Method[] methods = clazz.getMethods();
        Vector vector = null;
        for (int i = 0; i < methods.length; i++) {
            if (Modifier.isPublic(methods[i].getModifiers()) && methods[i].getName().equals(methodName) && methods[i].getParameterTypes().length == nArgs) {
                if (vector == null) {
                    vector = new Vector();
                }
                vector.addElement(methods[i]);
            }
        }
        if (vector == null) {
            throw new RuntimeException(ErrorMsg.METHOD_NOT_FOUND_ERR + className + ":" + methodName);
        }
        int size = vector.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            Method method = (Method) vector.elementAt(i2);
            Class<?>[] parameterTypes = method.getParameterTypes();
            int i3 = 0;
            while (true) {
                if (i3 >= nArgs) {
                    break;
                }
                Class<?> cls = objArr[i3].getClass();
                Class<?> cls2 = parameterTypes[i3];
                if (cls != cls2 && !cls.isAssignableFrom(cls2)) {
                    if (!parameterTypes[i3].isPrimitive()) {
                        z = false;
                        break;
                    }
                    objArr[i3] = isPrimitive(parameterTypes[i3], objArr[i3]);
                }
                i3++;
                z = true;
            }
            if (z) {
                return method;
            }
        }
        return null;
    }

    public static String invokeMethod(String str, String str2, Object[] objArr) {
        className = str;
        methodName = str2;
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        int i = 0;
        Object obj = objArr[0];
        clazz = null;
        try {
            Class findProviderClass = ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true);
            clazz = findProviderClass;
            if (findProviderClass == null) {
                throw new RuntimeException("Couldn't load the class");
            }
            int i2 = 1;
            while (i < length) {
                objArr2[i] = objArr[i2];
                i++;
                i2++;
            }
            nArgs = length;
            if (methodName != null) {
                Method findMethods = findMethods(objArr2);
                if (findMethods == null) {
                    throw new RuntimeException("Method not found");
                }
                try {
                    return findMethods.invoke(obj, objArr2).toString();
                } catch (IllegalAccessException unused) {
                    throw new RuntimeException("Error: Method is inaccessible");
                } catch (IllegalArgumentException unused2) {
                    throw new RuntimeException("Error: Number of actual and formal argument differ ");
                } catch (InvocationTargetException unused3) {
                    throw new RuntimeException("Error: underlying constructor throws an exception ");
                }
            }
            Constructor findConstructor = findConstructor(objArr2);
            if (findConstructor == null) {
                throw new RuntimeException("Constructor not found");
            }
            try {
                return findConstructor.newInstance(objArr2).toString();
            } catch (IllegalAccessException unused4) {
                throw new RuntimeException("Error: constructor is inaccessible");
            } catch (IllegalArgumentException unused5) {
                throw new RuntimeException("Error: Number of actual and formal argument differ ");
            } catch (InstantiationException unused6) {
                throw new RuntimeException("Error: Class that declares the underlying constructor represents an abstract class");
            } catch (InvocationTargetException unused7) {
                throw new RuntimeException("Error: constructor throws an exception ");
            }
        } catch (ClassNotFoundException unused8) {
            throw new RuntimeException("Couldn't load the class");
        }
    }

    public static Object isPrimitive(Class cls, Object obj) {
        if (obj.getClass() == Integer.class) {
            return typeCast(cls, (Integer) obj);
        }
        if (obj.getClass() == Float.class) {
            return typeCast(cls, (Float) obj);
        }
        if (obj.getClass() == Double.class) {
            return typeCast(cls, (Double) obj);
        }
        if (obj.getClass() == Long.class) {
            return typeCast(cls, (Long) obj);
        }
        if (obj.getClass() == Boolean.class) {
            return (Boolean) obj;
        }
        if (obj.getClass() == Byte.class) {
            return (Byte) obj;
        }
        return null;
    }

    public static Object typeCast(Class cls, Double d) {
        if (cls == Long.TYPE) {
            return new Long(d.longValue());
        }
        if (cls == Integer.TYPE) {
            return new Integer(d.intValue());
        }
        if (cls == Float.TYPE) {
            return new Float(d.floatValue());
        }
        if (cls == Short.TYPE) {
            return new Short(d.shortValue());
        }
        return cls == Byte.TYPE ? new Byte(d.byteValue()) : d;
    }

    public static Object typeCast(Class cls, Long l) {
        if (cls == Integer.TYPE) {
            return new Integer(l.intValue());
        }
        if (cls == Float.TYPE) {
            return new Float(l.floatValue());
        }
        if (cls == Short.TYPE) {
            return new Short(l.shortValue());
        }
        return cls == Byte.TYPE ? new Byte(l.byteValue()) : l;
    }

    public static Object typeCast(Class cls, Integer num) {
        if (cls == Double.TYPE) {
            return new Double(num.doubleValue());
        }
        if (cls == Float.TYPE) {
            return new Float(num.floatValue());
        }
        if (cls == Short.TYPE) {
            return new Short(num.shortValue());
        }
        return cls == Byte.TYPE ? new Byte(num.byteValue()) : num;
    }

    public static Object typeCast(Class cls, Float f) {
        if (cls == Double.TYPE) {
            return new Double(f.doubleValue());
        }
        if (cls == Integer.TYPE) {
            return new Float(f.intValue());
        }
        if (cls == Short.TYPE) {
            return new Short(f.shortValue());
        }
        return cls == Byte.TYPE ? new Byte(f.byteValue()) : f;
    }
}
