package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.w7l;
import java.lang.reflect.Method;
import java.util.Stack;
import java.util.function.Predicate;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes12.dex */
public final class StackLocator {

    /* renamed from: a */
    public static final int f111292a;

    /* renamed from: b */
    public static final Method f111293b;

    /* renamed from: c */
    public static final StackLocator f111294c;

    static {
        int i = -1;
        Method method = null;
        try {
            Class<?> loadClass = LoaderUtil.loadClass("sun.reflect.Reflection");
            Method declaredMethod = loadClass.getDeclaredMethod("getCallerClass", Integer.TYPE);
            Object invoke = declaredMethod.invoke(null, 0);
            declaredMethod.invoke(null, 0);
            if (invoke != null && invoke == loadClass) {
                if (declaredMethod.invoke(null, 1) == loadClass) {
                    System.out.println("WARNING: Java 1.7.0_25 is in use which has a broken implementation of Reflection.getCallerClass().  Please consider upgrading to Java 1.7.0_40 or later.");
                    method = declaredMethod;
                    i = 1;
                } else {
                    method = declaredMethod;
                    i = 0;
                }
            }
        } catch (Exception | LinkageError unused) {
            System.out.println("WARNING: sun.reflect.Reflection.getCallerClass is not supported. This will impact performance.");
        }
        f111293b = method;
        f111292a = i;
        f111294c = new StackLocator();
    }

    public static StackLocator getInstance() {
        return f111294c;
    }

    /* renamed from: a */
    public final boolean m68669a(final StackTraceElement element) {
        if (element.isNativeMethod()) {
            return false;
        }
        String className = element.getClassName();
        if (className.startsWith("sun.reflect.")) {
            return false;
        }
        String methodName = element.getMethodName();
        if ((className.startsWith("java.lang.reflect.") && (methodName.equals("invoke") || methodName.equals(Dfp.f108018r))) || className.startsWith("jdk.internal.reflect.")) {
            return false;
        }
        if (className.equals("java.lang.Class") && methodName.equals(Dfp.f108018r)) {
            return false;
        }
        return (className.equals("java.lang.invoke.MethodHandle") && methodName.startsWith("invoke")) ? false : true;
    }

    public StackTraceElement calcLocation(final String fqcnOfLogger) {
        if (fqcnOfLogger == null) {
            return null;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        boolean z = false;
        for (int i = 0; i < stackTrace.length; i++) {
            String className = stackTrace[i].getClassName();
            if (fqcnOfLogger.equals(className)) {
                z = true;
            } else if (z && !fqcnOfLogger.equals(className)) {
                return stackTrace[i];
            }
        }
        return null;
    }

    @PerformanceSensitive
    public Class<?> getCallerClass(final Class<?> sentinelClass, final Predicate<Class<?>> callerPredicate) {
        if (sentinelClass == null) {
            throw new IllegalArgumentException("sentinelClass cannot be null");
        }
        if (callerPredicate == null) {
            throw new IllegalArgumentException("callerPredicate cannot be null");
        }
        boolean z = false;
        int i = 2;
        while (true) {
            Class<?> callerClass = getCallerClass(i);
            if (callerClass == null) {
                return null;
            }
            if (sentinelClass.equals(callerClass)) {
                z = true;
            } else if (z && callerPredicate.test(callerClass)) {
                return callerClass;
            }
            i++;
        }
    }

    @PerformanceSensitive
    public Stack<Class<?>> getCurrentStackTrace() {
        if (w7l.m57945b()) {
            return w7l.m57944a();
        }
        Stack<Class<?>> stack = new Stack<>();
        int i = 1;
        while (true) {
            Class<?> callerClass = getCallerClass(i);
            if (callerClass == null) {
                return stack;
            }
            stack.push(callerClass);
            i++;
        }
    }

    public StackTraceElement getStackTraceElement(final int depth) {
        int i = 0;
        for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
            if (m68669a(stackTraceElement)) {
                if (i == depth) {
                    return stackTraceElement;
                }
                i++;
            }
        }
        throw new IndexOutOfBoundsException(Integer.toString(depth));
    }

    @PerformanceSensitive
    public Class<?> getCallerClass(final int depth) {
        if (depth >= 0) {
            Method method = f111293b;
            if (method == null) {
                return null;
            }
            try {
                return (Class) method.invoke(null, Integer.valueOf(depth + 1 + f111292a));
            } catch (Exception unused) {
                return null;
            }
        }
        throw new IndexOutOfBoundsException(Integer.toString(depth));
    }

    @PerformanceSensitive
    public Class<?> getCallerClass(final String fqcn, final String pkg) {
        boolean z = false;
        int i = 2;
        while (true) {
            Class<?> callerClass = getCallerClass(i);
            if (callerClass == null) {
                return null;
            }
            if (fqcn.equals(callerClass.getName())) {
                z = true;
            } else if (z && callerClass.getName().startsWith(pkg)) {
                return callerClass;
            }
            i++;
        }
    }

    @PerformanceSensitive
    public Class<?> getCallerClass(final Class<?> anchor) {
        boolean z = false;
        int i = 2;
        while (true) {
            Class<?> callerClass = getCallerClass(i);
            if (callerClass != null) {
                if (anchor.equals(callerClass)) {
                    z = true;
                } else if (z) {
                    return callerClass;
                }
                i++;
            } else {
                return Object.class;
            }
        }
    }
}
