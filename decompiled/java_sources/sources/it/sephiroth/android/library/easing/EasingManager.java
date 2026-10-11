package it.sephiroth.android.library.easing;

import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes4.dex */
public final class EasingManager {

    /* renamed from: m */
    public static final int f97664m = 60;

    /* renamed from: n */
    public static final int f97665n = 16;

    /* renamed from: o */
    public static final Handler f97666o = new Handler();

    /* renamed from: a */
    public Easing f97667a;

    /* renamed from: b */
    public Method f97668b;

    /* renamed from: c */
    public boolean f97669c;

    /* renamed from: d */
    public long f97670d;

    /* renamed from: e */
    public int f97671e;

    /* renamed from: f */
    public double f97672f;

    /* renamed from: g */
    public double f97673g;

    /* renamed from: h */
    public double f97674h;

    /* renamed from: i */
    public boolean f97675i;

    /* renamed from: j */
    public EasingCallback f97676j;

    /* renamed from: k */
    public String f97677k = String.valueOf(System.currentTimeMillis());

    /* renamed from: l */
    public RunnableC17649b f97678l;

    /* loaded from: classes4.dex */
    public enum EaseType {
        EaseIn,
        EaseOut,
        EaseInOut,
        EaseNone
    }

    /* loaded from: classes4.dex */
    public interface EasingCallback {
        void onEasingFinished(double d);

        void onEasingStarted(double d);

        void onEasingValueChanged(double d, double d2);
    }

    /* renamed from: it.sephiroth.android.library.easing.EasingManager$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C17648a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f97679a;

        static {
            int[] iArr = new int[EaseType.values().length];
            f97679a = iArr;
            try {
                iArr[EaseType.EaseIn.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f97679a[EaseType.EaseInOut.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f97679a[EaseType.EaseNone.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f97679a[EaseType.EaseOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.easing.EasingManager$b */
    /* loaded from: classes4.dex */
    public class RunnableC17649b implements Runnable {
        public RunnableC17649b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long j = EasingManager.this.f97670d;
            long uptimeMillis = SystemClock.uptimeMillis() - j;
            EasingManager easingManager = EasingManager.this;
            double d = easingManager.f97674h;
            try {
                double doubleValue = ((Double) easingManager.f97668b.invoke(easingManager.f97667a, Long.valueOf(uptimeMillis), Double.valueOf(EasingManager.this.f97672f), Double.valueOf(EasingManager.this.f97673g), Integer.valueOf(EasingManager.this.f97671e))).doubleValue();
                EasingManager easingManager2 = EasingManager.this;
                easingManager2.f97674h = doubleValue;
                long j2 = j + ((((int) (uptimeMillis / 16)) + 1) * 16);
                if (uptimeMillis >= easingManager2.f97671e) {
                    easingManager2.f97676j.onEasingFinished(easingManager2.f97675i ? easingManager2.f97673g : easingManager2.f97672f);
                    EasingManager.this.f97669c = false;
                    return;
                }
                EasingCallback easingCallback = easingManager2.f97676j;
                if (easingManager2.f97675i) {
                    doubleValue = easingManager2.f97673g - doubleValue;
                }
                easingCallback.onEasingValueChanged(doubleValue, d);
                EasingManager.f97666o.postAtTime(this, EasingManager.this.f97677k, j2);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: it.sephiroth.android.library.easing.EasingManager$c */
    /* loaded from: classes4.dex */
    public class RunnableC17650c implements Runnable {

        /* renamed from: e */
        public double f97681e;

        public RunnableC17650c(double d) {
            this.f97681e = d;
        }

        @Override // java.lang.Runnable
        public void run() {
            EasingManager.this.f97676j.onEasingStarted(this.f97681e);
        }
    }

    public EasingManager(EasingCallback easingCallback) {
        this.f97676j = easingCallback;
    }

    /* renamed from: a */
    public Easing m61393a(Class<? extends Easing> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public Method m61394b(Easing easing, EaseType easeType) {
        String m61395c = m61395c(easeType);
        if (m61395c != null) {
            try {
                Class<?> cls = easing.getClass();
                Class<?> cls2 = Double.TYPE;
                return cls.getMethod(m61395c, cls2, cls2, cls2, cls2);
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
                return null;
            } catch (SecurityException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    /* renamed from: c */
    public String m61395c(EaseType easeType) {
        int i = C17648a.f97679a[easeType.ordinal()];
        if (i == 1) {
            return "easeIn";
        }
        if (i == 2) {
            return "easeInOut";
        }
        if (i == 3) {
            return "easeNone";
        }
        if (i != 4) {
            return null;
        }
        return "easeOut";
    }

    public void start(Class<? extends Easing> cls, EaseType easeType, double d, double d2, int i) {
        start(cls, easeType, d, d2, i, 0L);
    }

    public void stop() {
        this.f97669c = false;
        f97666o.removeCallbacks(this.f97678l, this.f97677k);
    }

    public void start(Class<? extends Easing> cls, EaseType easeType, double d, double d2, int i, long j) {
        if (this.f97669c) {
            return;
        }
        Easing m61393a = m61393a(cls);
        this.f97667a = m61393a;
        if (m61393a == null) {
            return;
        }
        Method m61394b = m61394b(m61393a, easeType);
        this.f97668b = m61394b;
        if (m61394b == null) {
            return;
        }
        boolean z = d > d2;
        this.f97675i = z;
        if (z) {
            this.f97672f = d2;
            this.f97673g = d;
        } else {
            this.f97672f = d;
            this.f97673g = d2;
        }
        this.f97674h = this.f97672f;
        this.f97671e = i;
        this.f97670d = SystemClock.uptimeMillis() + j;
        this.f97669c = true;
        this.f97678l = new RunnableC17649b();
        long uptimeMillis = SystemClock.uptimeMillis() + 16 + j;
        if (j == 0) {
            this.f97676j.onEasingStarted(d);
        } else {
            f97666o.postAtTime(new RunnableC17650c(d), this.f97677k, uptimeMillis - 16);
        }
        f97666o.postAtTime(this.f97678l, this.f97677k, uptimeMillis);
    }
}
