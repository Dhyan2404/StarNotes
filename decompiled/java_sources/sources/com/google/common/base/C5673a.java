package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.b0l;
import com.sunia.HTREnginev2.n5e;
import java.lang.ref.WeakReference;
import java.util.Locale;
import java.util.ServiceConfigurationError;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@aof
/* renamed from: com.google.common.base.a */
/* loaded from: classes6.dex */
public final class C5673a {

    /* renamed from: a */
    public static final Logger f33651a = Logger.getLogger(C5673a.class.getName());

    /* renamed from: b */
    public static final b0l f33652b = m25863f();

    /* renamed from: com.google.common.base.a$b */
    /* loaded from: classes6.dex */
    public static final class b implements b0l {
        public b() {
        }

        @Override // com.sunia.HTREnginev2.b0l
        /* renamed from: a */
        public boolean mo25870a() {
            return true;
        }

        @Override // com.sunia.HTREnginev2.b0l
        public n5e compile(String str) {
            return new JdkPattern(Pattern.compile(str));
        }
    }

    /* renamed from: a */
    public static void m25858a() {
        if (!Boolean.parseBoolean(System.getProperty("guava.gwt.emergency_reenable_rpc", "false"))) {
            throw new UnsupportedOperationException(Strings.lenientFormat("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", "guava.gwt.emergency_reenable_rpc", "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
        f33651a.log(Level.WARNING, "Later in 2020, we will remove GWT-RPC support for Guava types. You are seeing this warning because you are sending a Guava type over GWT-RPC, which will break. You can identify which type by looking at the class name in the attached stack trace.", new Throwable());
    }

    /* renamed from: b */
    public static n5e m25859b(String str) {
        Preconditions.checkNotNull(str);
        return f33652b.compile(str);
    }

    @CheckForNull
    /* renamed from: c */
    public static String m25860c(@CheckForNull String str) {
        if (m25868k(str)) {
            return null;
        }
        return str;
    }

    /* renamed from: d */
    public static String m25861d(double d) {
        return String.format(Locale.ROOT, "%.4g", Double.valueOf(d));
    }

    /* renamed from: e */
    public static <T extends Enum<T>> Optional<T> m25862e(Class<T> cls, String str) {
        WeakReference<? extends Enum<?>> weakReference = Enums.m25781a(cls).get(str);
        return weakReference == null ? Optional.absent() : Optional.m25808of(cls.cast(weakReference.get()));
    }

    /* renamed from: f */
    public static b0l m25863f() {
        return new b();
    }

    /* renamed from: g */
    public static void m25864g(ServiceConfigurationError serviceConfigurationError) {
        f33651a.log(Level.WARNING, "Error loading regex compiler, falling back to next option", (Throwable) serviceConfigurationError);
    }

    /* renamed from: h */
    public static String m25865h(@CheckForNull String str) {
        return str == null ? "" : str;
    }

    /* renamed from: i */
    public static boolean m25866i() {
        return f33652b.mo25870a();
    }

    /* renamed from: j */
    public static CharMatcher m25867j(CharMatcher charMatcher) {
        return charMatcher.m25774e();
    }

    /* renamed from: k */
    public static boolean m25868k(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }

    /* renamed from: l */
    public static long m25869l() {
        return System.nanoTime();
    }
}
