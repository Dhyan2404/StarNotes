package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.miui.penengine.p015e.C6999h;
import com.sunia.HTREnginev2.gon;
import com.sunia.HTREnginev2.rnf;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import javax.annotation.CheckForNull;
import sun.misc.Unsafe;

@rnf
@GwtIncompatible
/* loaded from: classes6.dex */
abstract class Striped64 extends Number {
    private static final Unsafe UNSAFE;
    private static final long baseOffset;
    private static final long busyOffset;
    volatile transient long base;
    volatile transient int busy;

    @CheckForNull
    volatile transient C5746b[] cells;
    static final ThreadLocal<int[]> threadHashCode = new ThreadLocal<>();
    static final Random rng = new Random();
    static final int NCPU = Runtime.getRuntime().availableProcessors();

    /* renamed from: com.google.common.cache.Striped64$a */
    /* loaded from: classes6.dex */
    public class C5745a implements PrivilegedExceptionAction<Unsafe> {
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
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    /* renamed from: com.google.common.cache.Striped64$b */
    /* loaded from: classes6.dex */
    public static final class C5746b {

        /* renamed from: p */
        public static final Unsafe f33833p;

        /* renamed from: q */
        public static final long f33834q;

        /* renamed from: a */
        public volatile long f33835a;

        /* renamed from: b */
        public volatile long f33836b;

        /* renamed from: c */
        public volatile long f33837c;

        /* renamed from: d */
        public volatile long f33838d;

        /* renamed from: e */
        public volatile long f33839e;

        /* renamed from: f */
        public volatile long f33840f;

        /* renamed from: g */
        public volatile long f33841g;

        /* renamed from: h */
        public volatile long f33842h;

        /* renamed from: i */
        public volatile long f33843i;

        /* renamed from: j */
        public volatile long f33844j;

        /* renamed from: k */
        public volatile long f33845k;

        /* renamed from: l */
        public volatile long f33846l;

        /* renamed from: m */
        public volatile long f33847m;

        /* renamed from: n */
        public volatile long f33848n;

        /* renamed from: o */
        public volatile long f33849o;

        static {
            try {
                Unsafe access$000 = Striped64.access$000();
                f33833p = access$000;
                f33834q = access$000.objectFieldOffset(C5746b.class.getDeclaredField(C6999h.f39688c));
            } catch (Exception e) {
                throw new Error(e);
            }
        }

        public C5746b(long j) {
            this.f33842h = j;
        }

        /* renamed from: a */
        public final boolean m26005a(long j, long j2) {
            return f33833p.compareAndSwapLong(this, f33834q, j, j2);
        }
    }

    static {
        try {
            Unsafe unsafe = getUnsafe();
            UNSAFE = unsafe;
            baseOffset = unsafe.objectFieldOffset(Striped64.class.getDeclaredField(gon.f71271X));
            busyOffset = unsafe.objectFieldOffset(Striped64.class.getDeclaredField("busy"));
        } catch (Exception e) {
            throw new Error(e);
        }
    }

    static /* synthetic */ Unsafe access$000() {
        return getUnsafe();
    }

    private static Unsafe getUnsafe() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e) {
                throw new RuntimeException("Could not initialize intrinsics", e.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new C5745a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean casBase(long j, long j2) {
        return UNSAFE.compareAndSwapLong(this, baseOffset, j, j2);
    }

    final boolean casBusy() {
        return UNSAFE.compareAndSwapInt(this, busyOffset, 0, 1);
    }

    /* renamed from: fn */
    abstract long mo25999fn(long j, long j2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void internalReset(long j) {
        C5746b[] c5746bArr = this.cells;
        this.base = j;
        if (c5746bArr != null) {
            for (C5746b c5746b : c5746bArr) {
                if (c5746b != null) {
                    c5746b.f33842h = j;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0023 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void retryUpdate(long r17, @javax.annotation.CheckForNull int[] r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.Striped64.retryUpdate(long, int[], boolean):void");
    }
}
