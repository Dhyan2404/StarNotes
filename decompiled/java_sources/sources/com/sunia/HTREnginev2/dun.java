package com.sunia.HTREnginev2;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes6.dex */
public final class dun {

    /* renamed from: a */
    public static final Unsafe f68252a = m53729T();

    /* renamed from: b */
    public static final Class<?> f68253b = C13917ja.m54902b();

    /* renamed from: c */
    public static final boolean f68254c = m53772s(Long.TYPE);

    /* renamed from: d */
    public static final boolean f68255d = m53772s(Integer.TYPE);

    /* renamed from: e */
    public static final AbstractC13641e f68256e = m53725P();

    /* renamed from: f */
    public static final boolean f68257f = m53781w0();

    /* renamed from: g */
    public static final boolean f68258g = m53779v0();

    /* renamed from: h */
    public static final long f68259h;

    /* renamed from: i */
    public static final long f68260i;

    /* renamed from: j */
    public static final long f68261j;

    /* renamed from: k */
    public static final long f68262k;

    /* renamed from: l */
    public static final long f68263l;

    /* renamed from: m */
    public static final long f68264m;

    /* renamed from: n */
    public static final long f68265n;

    /* renamed from: o */
    public static final long f68266o;

    /* renamed from: p */
    public static final long f68267p;

    /* renamed from: q */
    public static final long f68268q;

    /* renamed from: r */
    public static final long f68269r;

    /* renamed from: s */
    public static final long f68270s;

    /* renamed from: t */
    public static final long f68271t;

    /* renamed from: u */
    public static final long f68272u;

    /* renamed from: v */
    public static final int f68273v = 8;

    /* renamed from: w */
    public static final int f68274w = 7;

    /* renamed from: x */
    public static final int f68275x;

    /* renamed from: y */
    public static final boolean f68276y;

    /* renamed from: com.sunia.HTREnginev2.dun$a */
    /* loaded from: classes6.dex */
    public class C13637a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Unsafe run() throws Exception {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dun$b */
    /* loaded from: classes6.dex */
    public static final class C13638b extends AbstractC13641e {

        /* renamed from: b */
        public static final long f68277b = -1;

        public C13638b(Unsafe unsafe) {
            super(unsafe);
        }

        /* renamed from: C */
        public static int m53786C(long address) {
            return (int) (address & (-1));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: B */
        public boolean mo53787B() {
            return false;
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: c */
        public void mo53788c(long srcOffset, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: d */
        public void mo53789d(byte[] src, long srcIndex, long targetOffset, long length) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: e */
        public boolean mo53790e(Object target, long offset) {
            return dun.f68276y ? dun.m53783y(target, offset) : dun.m53784z(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: f */
        public byte mo53791f(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: g */
        public byte mo53792g(Object target, long offset) {
            return dun.f68276y ? dun.m53713D(target, offset) : dun.m53714E(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: h */
        public double mo53793h(Object target, long offset) {
            return Double.longBitsToDouble(m53809m(target, offset));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: i */
        public float mo53794i(Object target, long offset) {
            return Float.intBitsToFloat(m53808k(target, offset));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: j */
        public int mo53795j(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: l */
        public long mo53796l(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: o */
        public Object mo53797o(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: q */
        public void mo53798q(Object target, long offset, boolean value) {
            if (dun.f68276y) {
                dun.m53741c0(target, offset, value);
            } else {
                dun.m53743d0(target, offset, value);
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: r */
        public void mo53799r(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: s */
        public void mo53800s(Object target, long offset, byte value) {
            if (dun.f68276y) {
                dun.m53751h0(target, offset, value);
            } else {
                dun.m53753i0(target, offset, value);
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: t */
        public void mo53801t(Object target, long offset, double value) {
            m53813y(target, offset, Double.doubleToLongBits(value));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: u */
        public void mo53802u(Object target, long offset, float value) {
            m53812w(target, offset, Float.floatToIntBits(value));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: v */
        public void mo53803v(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: x */
        public void mo53804x(long address, long value) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dun$c */
    /* loaded from: classes6.dex */
    public static final class C13639c extends AbstractC13641e {
        public C13639c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: B */
        public boolean mo53787B() {
            return false;
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: c */
        public void mo53788c(long srcOffset, byte[] target, long targetIndex, long length) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: d */
        public void mo53789d(byte[] src, long srcIndex, long targetOffset, long length) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: e */
        public boolean mo53790e(Object target, long offset) {
            return dun.f68276y ? dun.m53783y(target, offset) : dun.m53784z(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: f */
        public byte mo53791f(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: g */
        public byte mo53792g(Object target, long offset) {
            return dun.f68276y ? dun.m53713D(target, offset) : dun.m53714E(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: h */
        public double mo53793h(Object target, long offset) {
            return Double.longBitsToDouble(m53809m(target, offset));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: i */
        public float mo53794i(Object target, long offset) {
            return Float.intBitsToFloat(m53808k(target, offset));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: j */
        public int mo53795j(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: l */
        public long mo53796l(long address) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: o */
        public Object mo53797o(Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: q */
        public void mo53798q(Object target, long offset, boolean value) {
            if (dun.f68276y) {
                dun.m53741c0(target, offset, value);
            } else {
                dun.m53743d0(target, offset, value);
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: r */
        public void mo53799r(long address, byte value) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: s */
        public void mo53800s(Object target, long offset, byte value) {
            if (dun.f68276y) {
                dun.m53751h0(target, offset, value);
            } else {
                dun.m53753i0(target, offset, value);
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: t */
        public void mo53801t(Object target, long offset, double value) {
            m53813y(target, offset, Double.doubleToLongBits(value));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: u */
        public void mo53802u(Object target, long offset, float value) {
            m53812w(target, offset, Float.floatToIntBits(value));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: v */
        public void mo53803v(long address, int value) {
            throw new UnsupportedOperationException();
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: x */
        public void mo53804x(long address, long value) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dun$d */
    /* loaded from: classes6.dex */
    public static final class C13640d extends AbstractC13641e {
        public C13640d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: A */
        public boolean mo53805A() {
            if (!super.mo53805A()) {
                return false;
            }
            try {
                Class<?> cls = this.f68278a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                dun.m53733X(th);
                return false;
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: B */
        public boolean mo53787B() {
            if (!super.mo53787B()) {
                return false;
            }
            try {
                Class<?> cls = this.f68278a.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th) {
                dun.m53733X(th);
                return false;
            }
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: c */
        public void mo53788c(long srcOffset, byte[] target, long targetIndex, long length) {
            this.f68278a.copyMemory((Object) null, srcOffset, target, dun.f68259h + targetIndex, length);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: d */
        public void mo53789d(byte[] src, long srcIndex, long targetOffset, long length) {
            this.f68278a.copyMemory(src, dun.f68259h + srcIndex, (Object) null, targetOffset, length);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: e */
        public boolean mo53790e(Object target, long offset) {
            return this.f68278a.getBoolean(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: f */
        public byte mo53791f(long address) {
            return this.f68278a.getByte(address);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: g */
        public byte mo53792g(Object target, long offset) {
            return this.f68278a.getByte(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: h */
        public double mo53793h(Object target, long offset) {
            return this.f68278a.getDouble(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: i */
        public float mo53794i(Object target, long offset) {
            return this.f68278a.getFloat(target, offset);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: j */
        public int mo53795j(long address) {
            return this.f68278a.getInt(address);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: l */
        public long mo53796l(long address) {
            return this.f68278a.getLong(address);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: o */
        public Object mo53797o(Field field) {
            return m53810n(this.f68278a.staticFieldBase(field), this.f68278a.staticFieldOffset(field));
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: q */
        public void mo53798q(Object target, long offset, boolean value) {
            this.f68278a.putBoolean(target, offset, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: r */
        public void mo53799r(long address, byte value) {
            this.f68278a.putByte(address, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: s */
        public void mo53800s(Object target, long offset, byte value) {
            this.f68278a.putByte(target, offset, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: t */
        public void mo53801t(Object target, long offset, double value) {
            this.f68278a.putDouble(target, offset, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: u */
        public void mo53802u(Object target, long offset, float value) {
            this.f68278a.putFloat(target, offset, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: v */
        public void mo53803v(long address, int value) {
            this.f68278a.putInt(address, value);
        }

        @Override // com.sunia.HTREnginev2.dun.AbstractC13641e
        /* renamed from: x */
        public void mo53804x(long address, long value) {
            this.f68278a.putLong(address, value);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.dun$e */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC13641e {

        /* renamed from: a */
        public Unsafe f68278a;

        public AbstractC13641e(Unsafe unsafe) {
            this.f68278a = unsafe;
        }

        /* renamed from: A */
        public boolean mo53805A() {
            Unsafe unsafe = this.f68278a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                dun.m53733X(th);
                return false;
            }
        }

        /* renamed from: B */
        public boolean mo53787B() {
            Unsafe unsafe = this.f68278a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return dun.m53738b() != null;
            } catch (Throwable th) {
                dun.m53733X(th);
                return false;
            }
        }

        /* renamed from: a */
        public final int m53806a(Class<?> clazz) {
            return this.f68278a.arrayBaseOffset(clazz);
        }

        /* renamed from: b */
        public final int m53807b(Class<?> clazz) {
            return this.f68278a.arrayIndexScale(clazz);
        }

        /* renamed from: c */
        public abstract void mo53788c(long srcOffset, byte[] target, long targetIndex, long length);

        /* renamed from: d */
        public abstract void mo53789d(byte[] src, long srcIndex, long targetOffset, long length);

        /* renamed from: e */
        public abstract boolean mo53790e(Object target, long offset);

        /* renamed from: f */
        public abstract byte mo53791f(long address);

        /* renamed from: g */
        public abstract byte mo53792g(Object target, long offset);

        /* renamed from: h */
        public abstract double mo53793h(Object target, long offset);

        /* renamed from: i */
        public abstract float mo53794i(Object target, long offset);

        /* renamed from: j */
        public abstract int mo53795j(long address);

        /* renamed from: k */
        public final int m53808k(Object target, long offset) {
            return this.f68278a.getInt(target, offset);
        }

        /* renamed from: l */
        public abstract long mo53796l(long address);

        /* renamed from: m */
        public final long m53809m(Object target, long offset) {
            return this.f68278a.getLong(target, offset);
        }

        /* renamed from: n */
        public final Object m53810n(Object target, long offset) {
            return this.f68278a.getObject(target, offset);
        }

        /* renamed from: o */
        public abstract Object mo53797o(Field field);

        /* renamed from: p */
        public final long m53811p(Field field) {
            return this.f68278a.objectFieldOffset(field);
        }

        /* renamed from: q */
        public abstract void mo53798q(Object target, long offset, boolean value);

        /* renamed from: r */
        public abstract void mo53799r(long address, byte value);

        /* renamed from: s */
        public abstract void mo53800s(Object target, long offset, byte value);

        /* renamed from: t */
        public abstract void mo53801t(Object target, long offset, double value);

        /* renamed from: u */
        public abstract void mo53802u(Object target, long offset, float value);

        /* renamed from: v */
        public abstract void mo53803v(long address, int value);

        /* renamed from: w */
        public final void m53812w(Object target, long offset, int value) {
            this.f68278a.putInt(target, offset, value);
        }

        /* renamed from: x */
        public abstract void mo53804x(long address, long value);

        /* renamed from: y */
        public final void m53813y(Object target, long offset, long value) {
            this.f68278a.putLong(target, offset, value);
        }

        /* renamed from: z */
        public final void m53814z(Object target, long offset, Object value) {
            this.f68278a.putObject(target, offset, value);
        }
    }

    static {
        long m53760m = m53760m(byte[].class);
        f68259h = m53760m;
        f68260i = m53760m(boolean[].class);
        f68261j = m53762n(boolean[].class);
        f68262k = m53760m(int[].class);
        f68263l = m53762n(int[].class);
        f68264m = m53760m(long[].class);
        f68265n = m53762n(long[].class);
        f68266o = m53760m(float[].class);
        f68267p = m53762n(float[].class);
        f68268q = m53760m(double[].class);
        f68269r = m53762n(double[].class);
        f68270s = m53760m(Object[].class);
        f68271t = m53762n(Object[].class);
        f68272u = m53776u(m53764o());
        f68275x = (int) (m53760m & 7);
        f68276y = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: A */
    public static byte m53710A(long address) {
        return f68256e.mo53791f(address);
    }

    /* renamed from: B */
    public static byte m53711B(Object target, long offset) {
        return f68256e.mo53792g(target, offset);
    }

    /* renamed from: C */
    public static byte m53712C(byte[] target, long index) {
        return f68256e.mo53792g(target, f68259h + index);
    }

    /* renamed from: D */
    public static byte m53713D(Object target, long offset) {
        return (byte) ((m53720K(target, (-4) & offset) >>> ((int) (((~offset) & 3) << 3))) & 255);
    }

    /* renamed from: E */
    public static byte m53714E(Object target, long offset) {
        return (byte) ((m53720K(target, (-4) & offset) >>> ((int) ((offset & 3) << 3))) & 255);
    }

    /* renamed from: F */
    public static double m53715F(Object target, long offset) {
        return f68256e.mo53793h(target, offset);
    }

    /* renamed from: G */
    public static double m53716G(double[] target, long index) {
        return f68256e.mo53793h(target, f68268q + (index * f68269r));
    }

    /* renamed from: H */
    public static float m53717H(Object target, long offset) {
        return f68256e.mo53794i(target, offset);
    }

    /* renamed from: I */
    public static float m53718I(float[] target, long index) {
        return f68256e.mo53794i(target, f68266o + (index * f68267p));
    }

    /* renamed from: J */
    public static int m53719J(long address) {
        return f68256e.mo53795j(address);
    }

    /* renamed from: K */
    public static int m53720K(Object target, long offset) {
        return f68256e.m53808k(target, offset);
    }

    /* renamed from: L */
    public static int m53721L(int[] target, long index) {
        return f68256e.m53808k(target, f68262k + (index * f68263l));
    }

    /* renamed from: M */
    public static long m53722M(long address) {
        return f68256e.mo53796l(address);
    }

    /* renamed from: N */
    public static long m53723N(Object target, long offset) {
        return f68256e.m53809m(target, offset);
    }

    /* renamed from: O */
    public static long m53724O(long[] target, long index) {
        return f68256e.m53809m(target, f68264m + (index * f68265n));
    }

    /* renamed from: P */
    public static AbstractC13641e m53725P() {
        Unsafe unsafe = f68252a;
        if (unsafe == null) {
            return null;
        }
        if (!C13917ja.m54903c()) {
            return new C13640d(unsafe);
        }
        if (f68254c) {
            return new C13639c(unsafe);
        }
        if (f68255d) {
            return new C13638b(unsafe);
        }
        return null;
    }

    /* renamed from: Q */
    public static Object m53726Q(Object target, long offset) {
        return f68256e.m53810n(target, offset);
    }

    /* renamed from: R */
    public static Object m53727R(Object[] target, long index) {
        return f68256e.m53810n(target, f68270s + (index * f68271t));
    }

    /* renamed from: S */
    public static Object m53728S(Field field) {
        return f68256e.mo53797o(field);
    }

    /* renamed from: T */
    public static Unsafe m53729T() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C13637a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: U */
    public static boolean m53730U() {
        return f68258g;
    }

    /* renamed from: V */
    public static boolean m53731V() {
        return f68257f;
    }

    /* renamed from: W */
    public static boolean m53732W() {
        return f68254c;
    }

    /* renamed from: X */
    public static void m53733X(Throwable e) {
        Logger.getLogger(dun.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + e);
    }

    /* renamed from: Y */
    public static int m53734Y(byte[] left, int leftOff, byte[] right, int rightOff, int length) {
        if (leftOff < 0 || rightOff < 0 || length < 0 || leftOff + length > left.length || rightOff + length > right.length) {
            throw new IndexOutOfBoundsException();
        }
        int i = 0;
        if (f68258g) {
            for (int i2 = (f68275x + leftOff) & 7; i < length && (i2 & 7) != 0; i2++) {
                if (left[leftOff + i] != right[rightOff + i]) {
                    return i;
                }
                i++;
            }
            int i3 = ((length - i) & (-8)) + i;
            while (i < i3) {
                long j = f68259h;
                long j2 = i;
                long m53723N = m53723N(left, leftOff + j + j2);
                long m53723N2 = m53723N(right, j + rightOff + j2);
                if (m53723N != m53723N2) {
                    return i + m53778v(m53723N, m53723N2);
                }
                i += 8;
            }
        }
        while (i < length) {
            if (left[leftOff + i] != right[rightOff + i]) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: Z */
    public static long m53735Z(Field field) {
        return f68256e.m53811p(field);
    }

    /* renamed from: a0 */
    public static void m53737a0(Object target, long offset, boolean value) {
        f68256e.mo53798q(target, offset, value);
    }

    /* renamed from: b */
    public static /* synthetic */ Field m53738b() {
        return m53764o();
    }

    /* renamed from: b0 */
    public static void m53739b0(boolean[] target, long index, boolean value) {
        f68256e.mo53798q(target, f68260i + (index * f68261j), value);
    }

    /* renamed from: c0 */
    public static void m53741c0(Object obj, long j, boolean z) {
        m53751h0(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: d0 */
    public static void m53743d0(Object obj, long j, boolean z) {
        m53753i0(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: e0 */
    public static void m53745e0(long address, byte value) {
        f68256e.mo53799r(address, value);
    }

    /* renamed from: f0 */
    public static void m53747f0(Object target, long offset, byte value) {
        f68256e.mo53800s(target, offset, value);
    }

    /* renamed from: g0 */
    public static void m53749g0(byte[] target, long index, byte value) {
        f68256e.mo53800s(target, f68259h + index, value);
    }

    /* renamed from: h0 */
    public static void m53751h0(Object target, long offset, byte value) {
        long j = (-4) & offset;
        int m53720K = m53720K(target, j);
        int i = ((~((int) offset)) & 3) << 3;
        m53765o0(target, j, ((255 & value) << i) | (m53720K & (~(255 << i))));
    }

    /* renamed from: i0 */
    public static void m53753i0(Object target, long offset, byte value) {
        long j = (-4) & offset;
        int i = (((int) offset) & 3) << 3;
        m53765o0(target, j, ((255 & value) << i) | (m53720K(target, j) & (~(255 << i))));
    }

    /* renamed from: j0 */
    public static void m53755j0(Object target, long offset, double value) {
        f68256e.mo53801t(target, offset, value);
    }

    /* renamed from: k */
    public static long m53756k(ByteBuffer buffer) {
        return f68256e.m53809m(buffer, f68272u);
    }

    /* renamed from: k0 */
    public static void m53757k0(double[] target, long index, double value) {
        f68256e.mo53801t(target, f68268q + (index * f68269r), value);
    }

    /* renamed from: l */
    public static <T> T m53758l(Class<T> cls) {
        try {
            return (T) f68252a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: l0 */
    public static void m53759l0(Object target, long offset, float value) {
        f68256e.mo53802u(target, offset, value);
    }

    /* renamed from: m */
    public static int m53760m(Class<?> clazz) {
        if (f68258g) {
            return f68256e.m53806a(clazz);
        }
        return -1;
    }

    /* renamed from: m0 */
    public static void m53761m0(float[] target, long index, float value) {
        f68256e.mo53802u(target, f68266o + (index * f68267p), value);
    }

    /* renamed from: n */
    public static int m53762n(Class<?> clazz) {
        if (f68258g) {
            return f68256e.m53807b(clazz);
        }
        return -1;
    }

    /* renamed from: n0 */
    public static void m53763n0(long address, int value) {
        f68256e.mo53803v(address, value);
    }

    /* renamed from: o */
    public static Field m53764o() {
        Field m53774t;
        if (C13917ja.m54903c() && (m53774t = m53774t(Buffer.class, "effectiveDirectAddress")) != null) {
            return m53774t;
        }
        Field m53774t2 = m53774t(Buffer.class, "address");
        if (m53774t2 == null || m53774t2.getType() != Long.TYPE) {
            return null;
        }
        return m53774t2;
    }

    /* renamed from: o0 */
    public static void m53765o0(Object target, long offset, int value) {
        f68256e.m53812w(target, offset, value);
    }

    /* renamed from: p */
    public static void m53766p(long srcOffset, byte[] target, long targetIndex, long length) {
        f68256e.mo53788c(srcOffset, target, targetIndex, length);
    }

    /* renamed from: p0 */
    public static void m53767p0(int[] target, long index, int value) {
        f68256e.m53812w(target, f68262k + (index * f68263l), value);
    }

    /* renamed from: q */
    public static void m53768q(byte[] src, long srcIndex, long targetOffset, long length) {
        f68256e.mo53789d(src, srcIndex, targetOffset, length);
    }

    /* renamed from: q0 */
    public static void m53769q0(long address, long value) {
        f68256e.mo53804x(address, value);
    }

    /* renamed from: r */
    public static void m53770r(byte[] src, long srcIndex, byte[] target, long targetIndex, long length) {
        System.arraycopy(src, (int) srcIndex, target, (int) targetIndex, (int) length);
    }

    /* renamed from: r0 */
    public static void m53771r0(Object target, long offset, long value) {
        f68256e.m53813y(target, offset, value);
    }

    /* renamed from: s */
    public static boolean m53772s(Class<?> addressClass) {
        if (!C13917ja.m54903c()) {
            return false;
        }
        try {
            Class<?> cls = f68253b;
            Class<?> cls2 = Boolean.TYPE;
            cls.getMethod("peekLong", addressClass, cls2);
            cls.getMethod("pokeLong", addressClass, Long.TYPE, cls2);
            Class<?> cls3 = Integer.TYPE;
            cls.getMethod("pokeInt", addressClass, cls3, cls2);
            cls.getMethod("peekInt", addressClass, cls2);
            cls.getMethod("pokeByte", addressClass, Byte.TYPE);
            cls.getMethod("peekByte", addressClass);
            cls.getMethod("pokeByteArray", addressClass, byte[].class, cls3, cls3);
            cls.getMethod("peekByteArray", addressClass, byte[].class, cls3, cls3);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: s0 */
    public static void m53773s0(long[] target, long index, long value) {
        f68256e.m53813y(target, f68264m + (index * f68265n), value);
    }

    /* renamed from: t */
    public static Field m53774t(Class<?> clazz, String fieldName) {
        try {
            return clazz.getDeclaredField(fieldName);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: t0 */
    public static void m53775t0(Object target, long offset, Object value) {
        f68256e.m53814z(target, offset, value);
    }

    /* renamed from: u */
    public static long m53776u(Field field) {
        AbstractC13641e abstractC13641e;
        if (field == null || (abstractC13641e = f68256e) == null) {
            return -1L;
        }
        return abstractC13641e.m53811p(field);
    }

    /* renamed from: u0 */
    public static void m53777u0(Object[] target, long index, Object value) {
        f68256e.m53814z(target, f68270s + (index * f68271t), value);
    }

    /* renamed from: v */
    public static int m53778v(long left, long right) {
        return (f68276y ? Long.numberOfLeadingZeros(left ^ right) : Long.numberOfTrailingZeros(left ^ right)) >> 3;
    }

    /* renamed from: v0 */
    public static boolean m53779v0() {
        AbstractC13641e abstractC13641e = f68256e;
        if (abstractC13641e == null) {
            return false;
        }
        return abstractC13641e.mo53805A();
    }

    /* renamed from: w */
    public static boolean m53780w(Object target, long offset) {
        return f68256e.mo53790e(target, offset);
    }

    /* renamed from: w0 */
    public static boolean m53781w0() {
        AbstractC13641e abstractC13641e = f68256e;
        if (abstractC13641e == null) {
            return false;
        }
        return abstractC13641e.mo53787B();
    }

    /* renamed from: x */
    public static boolean m53782x(boolean[] target, long index) {
        return f68256e.mo53790e(target, f68260i + (index * f68261j));
    }

    /* renamed from: y */
    public static boolean m53783y(Object target, long offset) {
        return m53713D(target, offset) != 0;
    }

    /* renamed from: z */
    public static boolean m53784z(Object target, long offset) {
        return m53714E(target, offset) != 0;
    }
}
