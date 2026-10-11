package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import com.google.gson.internal.TroubleshootingGuide;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes6.dex */
public class ReflectionHelper {

    /* renamed from: a */
    public static final AbstractC6601b f36294a;

    /* renamed from: com.google.gson.internal.reflect.ReflectionHelper$b */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6601b {
        public AbstractC6601b() {
        }

        /* renamed from: a */
        public abstract Method mo28365a(Class<?> cls, Field field);

        /* renamed from: b */
        public abstract <T> Constructor<T> mo28366b(Class<T> cls);

        /* renamed from: c */
        public abstract String[] mo28367c(Class<?> cls);

        /* renamed from: d */
        public abstract boolean mo28368d(Class<?> cls);
    }

    /* renamed from: com.google.gson.internal.reflect.ReflectionHelper$c */
    /* loaded from: classes6.dex */
    public static class C6602c extends AbstractC6601b {
        public C6602c() {
            super();
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: a */
        public Method mo28365a(Class<?> cls, Field field) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: b */
        public <T> Constructor<T> mo28366b(Class<T> cls) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: c */
        public String[] mo28367c(Class<?> cls) {
            throw new UnsupportedOperationException("Records are not supported on this JVM, this method should not be called");
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: d */
        public boolean mo28368d(Class<?> cls) {
            return false;
        }
    }

    /* renamed from: com.google.gson.internal.reflect.ReflectionHelper$d */
    /* loaded from: classes6.dex */
    public static class C6603d extends AbstractC6601b {

        /* renamed from: a */
        public final Method f36295a;

        /* renamed from: b */
        public final Method f36296b;

        /* renamed from: c */
        public final Method f36297c;

        /* renamed from: d */
        public final Method f36298d;

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: a */
        public Method mo28365a(Class<?> cls, Field field) {
            try {
                return cls.getMethod(field.getName(), new Class[0]);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.m28363c(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: b */
        public <T> Constructor<T> mo28366b(Class<T> cls) {
            try {
                Object[] objArr = (Object[]) this.f36296b.invoke(cls, new Object[0]);
                Class<?>[] clsArr = new Class[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    clsArr[i] = (Class) this.f36298d.invoke(objArr[i], new Object[0]);
                }
                return cls.getDeclaredConstructor(clsArr);
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.m28363c(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: c */
        public String[] mo28367c(Class<?> cls) {
            try {
                Object[] objArr = (Object[]) this.f36296b.invoke(cls, new Object[0]);
                String[] strArr = new String[objArr.length];
                for (int i = 0; i < objArr.length; i++) {
                    strArr[i] = (String) this.f36297c.invoke(objArr[i], new Object[0]);
                }
                return strArr;
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.m28363c(e);
            }
        }

        @Override // com.google.gson.internal.reflect.ReflectionHelper.AbstractC6601b
        /* renamed from: d */
        public boolean mo28368d(Class<?> cls) {
            try {
                return ((Boolean) this.f36295a.invoke(cls, new Object[0])).booleanValue();
            } catch (ReflectiveOperationException e) {
                throw ReflectionHelper.m28363c(e);
            }
        }

        public C6603d() throws NoSuchMethodException, ClassNotFoundException {
            super();
            this.f36295a = Class.class.getMethod("isRecord", new Class[0]);
            this.f36296b = Class.class.getMethod("getRecordComponents", new Class[0]);
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            this.f36297c = cls.getMethod("getName", new Class[0]);
            this.f36298d = cls.getMethod("getType", new Class[0]);
        }
    }

    static {
        AbstractC6601b c6602c;
        try {
            c6602c = new C6603d();
        } catch (ReflectiveOperationException unused) {
            c6602c = new C6602c();
        }
        f36294a = c6602c;
    }

    /* renamed from: b */
    public static void m28362b(AccessibleObject accessibleObject, StringBuilder sb) {
        sb.append('(');
        Class<?>[] parameterTypes = accessibleObject instanceof Method ? ((Method) accessibleObject).getParameterTypes() : ((Constructor) accessibleObject).getParameterTypes();
        for (int i = 0; i < parameterTypes.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(parameterTypes[i].getSimpleName());
        }
        sb.append(')');
    }

    /* renamed from: c */
    public static RuntimeException m28363c(ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unexpected ReflectiveOperationException occurred (Gson 2.11.0). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior.", reflectiveOperationException);
    }

    public static String constructorToString(Constructor<?> constructor) {
        StringBuilder sb = new StringBuilder(constructor.getDeclaringClass().getName());
        m28362b(constructor, sb);
        return sb.toString();
    }

    public static RuntimeException createExceptionForUnexpectedIllegalAccess(IllegalAccessException illegalAccessException) {
        throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", illegalAccessException);
    }

    /* renamed from: d */
    public static String m28364d(Exception exc) {
        if (!exc.getClass().getName().equals("java.lang.reflect.InaccessibleObjectException")) {
            return "";
        }
        String message = exc.getMessage();
        return "\nSee " + TroubleshootingGuide.createUrl((message == null || !message.contains("to module com.google.gson")) ? "reflection-inaccessible" : "reflection-inaccessible-to-module-gson");
    }

    public static String fieldToString(Field field) {
        return field.getDeclaringClass().getName() + "#" + field.getName();
    }

    public static String getAccessibleObjectDescription(AccessibleObject accessibleObject, boolean z) {
        String str;
        if (accessibleObject instanceof Field) {
            str = "field '" + fieldToString((Field) accessibleObject) + CloudStorageConstants.SINGLE_QUOTES;
        } else if (accessibleObject instanceof Method) {
            Method method = (Method) accessibleObject;
            StringBuilder sb = new StringBuilder(method.getName());
            m28362b(method, sb);
            str = "method '" + method.getDeclaringClass().getName() + "#" + sb.toString() + CloudStorageConstants.SINGLE_QUOTES;
        } else if (accessibleObject instanceof Constructor) {
            str = "constructor '" + constructorToString((Constructor) accessibleObject) + CloudStorageConstants.SINGLE_QUOTES;
        } else {
            str = "<unknown AccessibleObject> " + accessibleObject.toString();
        }
        if (!z || !Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    public static Method getAccessor(Class<?> cls, Field field) {
        return f36294a.mo28365a(cls, field);
    }

    public static <T> Constructor<T> getCanonicalRecordConstructor(Class<T> cls) {
        return f36294a.mo28366b(cls);
    }

    public static String[] getRecordComponentNames(Class<?> cls) {
        return f36294a.mo28367c(cls);
    }

    public static boolean isAnonymousOrNonStaticLocal(Class<?> cls) {
        return !isStatic(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public static boolean isRecord(Class<?> cls) {
        return f36294a.mo28368d(cls);
    }

    public static boolean isStatic(Class<?> cls) {
        return Modifier.isStatic(cls.getModifiers());
    }

    public static void makeAccessible(AccessibleObject accessibleObject) throws JsonIOException {
        try {
            accessibleObject.setAccessible(true);
        } catch (Exception e) {
            throw new JsonIOException("Failed making " + getAccessibleObjectDescription(accessibleObject, false) + " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type." + m28364d(e), e);
        }
    }

    public static String tryMakeAccessible(Constructor<?> constructor) {
        try {
            constructor.setAccessible(true);
            return null;
        } catch (Exception e) {
            return "Failed making constructor '" + constructorToString(constructor) + "' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: " + e.getMessage() + m28364d(e);
        }
    }
}
