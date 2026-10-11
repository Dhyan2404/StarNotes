package org.apache.logging.log4j.util;

import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.status.StatusLogger;

@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public class Unbox {

    /* renamed from: a */
    public static final Logger f111302a = StatusLogger.getLogger();

    /* renamed from: b */
    public static final int f111303b = 32;

    /* renamed from: c */
    public static final int f111304c = 32;

    /* renamed from: d */
    public static final int f111305d;

    /* renamed from: e */
    public static final int f111306e;

    /* renamed from: f */
    public static ThreadLocal<C19412b> f111307f;

    /* renamed from: g */
    public static C19413c f111308g;

    /* renamed from: org.apache.logging.log4j.util.Unbox$b */
    /* loaded from: classes12.dex */
    public static class C19412b {

        /* renamed from: a */
        public final StringBuilder[] f111309a = new StringBuilder[Unbox.f111305d];

        /* renamed from: b */
        public int f111310b;

        public C19412b() {
            int i = 0;
            while (true) {
                StringBuilder[] sbArr = this.f111309a;
                if (i >= sbArr.length) {
                    return;
                }
                sbArr[i] = new StringBuilder(21);
                i++;
            }
        }

        /* renamed from: a */
        public StringBuilder m68679a() {
            StringBuilder[] sbArr = this.f111309a;
            int i = Unbox.f111306e;
            int i2 = this.f111310b;
            this.f111310b = i2 + 1;
            StringBuilder sb = sbArr[i & i2];
            sb.setLength(0);
            return sb;
        }

        /* renamed from: b */
        public boolean m68680b(final StringBuilder text) {
            int i = 0;
            while (true) {
                StringBuilder[] sbArr = this.f111309a;
                if (i >= sbArr.length) {
                    return false;
                }
                if (text == sbArr[i]) {
                    return true;
                }
                i++;
            }
        }
    }

    /* renamed from: org.apache.logging.log4j.util.Unbox$c */
    /* loaded from: classes12.dex */
    public static class C19413c {

        /* renamed from: a */
        public final ThreadLocal<StringBuilder[]> f111311a;

        /* renamed from: b */
        public final ThreadLocal<int[]> f111312b;

        public C19413c() {
            this.f111311a = new ThreadLocal<>();
            this.f111312b = new ThreadLocal<>();
        }

        /* renamed from: a */
        public StringBuilder m68681a() {
            StringBuilder[] sbArr = this.f111311a.get();
            if (sbArr == null) {
                int i = Unbox.f111305d;
                StringBuilder[] sbArr2 = new StringBuilder[i];
                for (int i2 = 0; i2 < i; i2++) {
                    sbArr2[i2] = new StringBuilder(21);
                }
                this.f111311a.set(sbArr2);
                this.f111312b.set(new int[1]);
                sbArr = sbArr2;
            }
            int[] iArr = this.f111312b.get();
            int i3 = Unbox.f111306e;
            int i4 = iArr[0];
            iArr[0] = i4 + 1;
            StringBuilder sb = sbArr[i3 & i4];
            sb.setLength(0);
            return sb;
        }

        /* renamed from: b */
        public boolean m68682b(final StringBuilder text) {
            StringBuilder[] sbArr = this.f111311a.get();
            if (sbArr == null) {
                return false;
            }
            for (StringBuilder sb : sbArr) {
                if (text == sb) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        int m68674c = m68674c("log4j.unbox.ringbuffer.size");
        f111305d = m68674c;
        f111306e = m68674c - 1;
        f111307f = new ThreadLocal<>();
        f111308g = new C19413c();
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final float value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }

    /* renamed from: c */
    public static int m68674c(final String propertyName) {
        String stringProperty = PropertiesUtil.getProperties().getStringProperty(propertyName, String.valueOf(32));
        try {
            int parseInt = Integer.parseInt(stringProperty);
            if (parseInt < 32) {
                f111302a.warn("Invalid {} {}, using minimum size {}.", (Object) propertyName, (Object) stringProperty, (Object) 32);
                parseInt = 32;
            }
            return m68675d(parseInt);
        } catch (Exception unused) {
            f111302a.warn("Invalid {} {}, using default size {}.", (Object) propertyName, (Object) stringProperty, (Object) 32);
            return 32;
        }
    }

    /* renamed from: d */
    public static int m68675d(final int x) {
        return 1 << (32 - Integer.numberOfLeadingZeros(x - 1));
    }

    /* renamed from: e */
    public static int m68676e() {
        return f111305d;
    }

    /* renamed from: f */
    public static StringBuilder m68677f() {
        return Constants.ENABLE_THREADLOCALS ? m68678g().m68679a() : f111308g.m68681a();
    }

    /* renamed from: g */
    public static C19412b m68678g() {
        C19412b c19412b = f111307f.get();
        if (c19412b != null) {
            return c19412b;
        }
        C19412b c19412b2 = new C19412b();
        f111307f.set(c19412b2);
        return c19412b2;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final double value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final short value) {
        StringBuilder m68677f = m68677f();
        m68677f.append((int) value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final int value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final char value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final long value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final byte value) {
        StringBuilder m68677f = m68677f();
        m68677f.append((int) value);
        return m68677f;
    }

    @PerformanceSensitive({"allocation"})
    public static StringBuilder box(final boolean value) {
        StringBuilder m68677f = m68677f();
        m68677f.append(value);
        return m68677f;
    }
}
