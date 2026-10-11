package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import javax.annotation.CheckForNull;

@GwtCompatible
@aof
/* loaded from: classes6.dex */
public final class MoreObjects {

    /* loaded from: classes6.dex */
    public static final class ToStringHelper {

        /* renamed from: a */
        public final String f33601a;

        /* renamed from: b */
        public final C5653b f33602b;

        /* renamed from: c */
        public C5653b f33603c;

        /* renamed from: d */
        public boolean f33604d;

        /* renamed from: e */
        public boolean f33605e;

        /* renamed from: com.google.common.base.MoreObjects$ToStringHelper$a */
        /* loaded from: classes6.dex */
        public static final class C5652a extends C5653b {
            public C5652a() {
                super();
            }
        }

        /* renamed from: com.google.common.base.MoreObjects$ToStringHelper$b */
        /* loaded from: classes6.dex */
        public static class C5653b {

            /* renamed from: a */
            @CheckForNull
            public String f33606a;

            /* renamed from: b */
            @CheckForNull
            public Object f33607b;

            /* renamed from: c */
            @CheckForNull
            public C5653b f33608c;

            public C5653b() {
            }
        }

        /* renamed from: g */
        public static boolean m25801g(Object obj) {
            return obj instanceof CharSequence ? ((CharSequence) obj).length() == 0 : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof java.util.Optional ? !((java.util.Optional) obj).isPresent() : obj instanceof OptionalInt ? !((OptionalInt) obj).isPresent() : obj instanceof OptionalLong ? !((OptionalLong) obj).isPresent() : obj instanceof OptionalDouble ? !((OptionalDouble) obj).isPresent() : obj instanceof Optional ? !((Optional) obj).isPresent() : obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        /* renamed from: a */
        public final C5653b m25802a() {
            C5653b c5653b = new C5653b();
            this.f33603c.f33608c = c5653b;
            this.f33603c = c5653b;
            return c5653b;
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, @CheckForNull Object obj) {
            return m25804c(str, obj);
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(@CheckForNull Object obj) {
            return m25803b(obj);
        }

        /* renamed from: b */
        public final ToStringHelper m25803b(@CheckForNull Object obj) {
            m25802a().f33607b = obj;
            return this;
        }

        /* renamed from: c */
        public final ToStringHelper m25804c(String str, @CheckForNull Object obj) {
            C5653b m25802a = m25802a();
            m25802a.f33607b = obj;
            m25802a.f33606a = (String) Preconditions.checkNotNull(str);
            return this;
        }

        /* renamed from: d */
        public final C5652a m25805d() {
            C5652a c5652a = new C5652a();
            this.f33603c.f33608c = c5652a;
            this.f33603c = c5652a;
            return c5652a;
        }

        /* renamed from: e */
        public final ToStringHelper m25806e(Object obj) {
            m25805d().f33607b = obj;
            return this;
        }

        /* renamed from: f */
        public final ToStringHelper m25807f(String str, Object obj) {
            C5652a m25805d = m25805d();
            m25805d.f33607b = obj;
            m25805d.f33606a = (String) Preconditions.checkNotNull(str);
            return this;
        }

        @CanIgnoreReturnValue
        public ToStringHelper omitNullValues() {
            this.f33604d = true;
            return this;
        }

        public String toString() {
            boolean z = this.f33604d;
            boolean z2 = this.f33605e;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f33601a);
            sb.append('{');
            String str = "";
            for (C5653b c5653b = this.f33602b.f33608c; c5653b != null; c5653b = c5653b.f33608c) {
                Object obj = c5653b.f33607b;
                if (!(c5653b instanceof C5652a)) {
                    if (obj == null) {
                        if (z) {
                        }
                    } else if (z2 && m25801g(obj)) {
                    }
                }
                sb.append(str);
                String str2 = c5653b.f33606a;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }

        public ToStringHelper(String str) {
            C5653b c5653b = new C5653b();
            this.f33602b = c5653b;
            this.f33603c = c5653b;
            this.f33604d = false;
            this.f33605e = false;
            this.f33601a = (String) Preconditions.checkNotNull(str);
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, boolean z) {
            return m25807f(str, String.valueOf(z));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(boolean z) {
            return m25806e(String.valueOf(z));
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, char c) {
            return m25807f(str, String.valueOf(c));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(char c) {
            return m25806e(String.valueOf(c));
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, double d) {
            return m25807f(str, String.valueOf(d));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(double d) {
            return m25806e(String.valueOf(d));
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, float f) {
            return m25807f(str, String.valueOf(f));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(float f) {
            return m25806e(String.valueOf(f));
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, int i) {
            return m25807f(str, String.valueOf(i));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(int i) {
            return m25806e(String.valueOf(i));
        }

        @CanIgnoreReturnValue
        public ToStringHelper add(String str, long j) {
            return m25807f(str, String.valueOf(j));
        }

        @CanIgnoreReturnValue
        public ToStringHelper addValue(long j) {
            return m25806e(String.valueOf(j));
        }
    }

    public static <T> T firstNonNull(@CheckForNull T t, T t2) {
        if (t != null) {
            return t;
        }
        if (t2 != null) {
            return t2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj.getClass().getSimpleName());
    }

    public static ToStringHelper toStringHelper(Class<?> cls) {
        return new ToStringHelper(cls.getSimpleName());
    }

    public static ToStringHelper toStringHelper(String str) {
        return new ToStringHelper(str);
    }
}
