package java.beans;

import java.lang.reflect.Method;

/* loaded from: classes5.dex */
public class Introspector {
    private int defaultEventIndex = -1;
    private int defaultPropertyIndex = -1;

    public static String decapitalize(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (str.length() > 1 && Character.isUpperCase(str.charAt(1)) && Character.isUpperCase(str.charAt(0))) {
            return str;
        }
        char[] charArray = str.toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }

    private int getTargetDefaultEventIndex() {
        return this.defaultEventIndex;
    }

    private int getTargetDefaultPropertyIndex() {
        return this.defaultPropertyIndex;
    }

    private static boolean isAssignable(Class<?> cls, Class<?> cls2) {
        return (cls == null || cls2 == null) ? cls == cls2 : cls.isAssignableFrom(cls2);
    }

    public static boolean isSubclass(Class<?> cls, Class<?> cls2) {
        if (cls == cls2) {
            return true;
        }
        if (cls != null && cls2 != null) {
            while (cls != null) {
                if (cls == cls2) {
                    return true;
                }
                if (cls2.isInterface()) {
                    for (Class<?> cls3 : cls.getInterfaces()) {
                        if (isSubclass(cls3, cls2)) {
                            return true;
                        }
                    }
                }
                cls = cls.getSuperclass();
            }
        }
        return false;
    }

    private static String makeQualifiedMethodName(String str, String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append('=');
        for (String str2 : strArr) {
            stringBuffer.append(':');
            stringBuffer.append(str2);
        }
        return stringBuffer.toString();
    }

    private boolean throwsException(Method method, Class<?> cls) {
        for (Class<?> cls2 : method.getExceptionTypes()) {
            if (cls2 == cls) {
                return true;
            }
        }
        return false;
    }
}
