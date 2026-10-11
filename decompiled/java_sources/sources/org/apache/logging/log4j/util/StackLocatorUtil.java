package org.apache.logging.log4j.util;

import java.util.NoSuchElementException;
import java.util.Stack;
import java.util.function.Predicate;
import org.apache.logging.log4j.status.StatusLogger;

/* loaded from: classes12.dex */
public final class StackLocatorUtil {

    /* renamed from: a */
    public static StackLocator f111295a = StackLocator.getInstance();

    /* renamed from: b */
    public static volatile boolean f111296b;

    public static StackTraceElement calcLocation(final String fqcnOfLogger) {
        try {
            return f111295a.calcLocation(fqcnOfLogger);
        } catch (NoSuchElementException e) {
            if (f111296b) {
                return null;
            }
            f111296b = true;
            StatusLogger.getLogger().warn("Unable to locate stack trace element for {}", fqcnOfLogger, e);
            return null;
        }
    }

    @PerformanceSensitive
    public static Class<?> getCallerClass(final int depth) {
        return f111295a.getCallerClass(depth + 1);
    }

    @PerformanceSensitive
    public static Stack<Class<?>> getCurrentStackTrace() {
        return f111295a.getCurrentStackTrace();
    }

    public static StackTraceElement getStackTraceElement(final int depth) {
        return f111295a.getStackTraceElement(depth + 1);
    }

    @PerformanceSensitive
    public static Class<?> getCallerClass(final String fqcn) {
        return getCallerClass(fqcn, "");
    }

    @PerformanceSensitive
    public static Class<?> getCallerClass(final String fqcn, final String pkg) {
        return f111295a.getCallerClass(fqcn, pkg);
    }

    @PerformanceSensitive
    public static Class<?> getCallerClass(final Class<?> sentinelClass, final Predicate<Class<?>> callerPredicate) {
        return f111295a.getCallerClass(sentinelClass, callerPredicate);
    }

    @PerformanceSensitive
    public static Class<?> getCallerClass(final Class<?> anchor) {
        return f111295a.getCallerClass(anchor);
    }
}
