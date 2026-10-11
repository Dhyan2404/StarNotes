package androidx.core.app;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class FrameMetricsAggregator {
    public static final int ANIMATION_DURATION = 256;
    public static final int ANIMATION_INDEX = 8;
    public static final int COMMAND_DURATION = 32;
    public static final int COMMAND_INDEX = 5;
    public static final int DELAY_DURATION = 128;
    public static final int DELAY_INDEX = 7;
    public static final int DRAW_DURATION = 8;
    public static final int DRAW_INDEX = 3;
    public static final int EVERY_DURATION = 511;
    public static final int INPUT_DURATION = 2;
    public static final int INPUT_INDEX = 1;
    public static final int LAYOUT_MEASURE_DURATION = 4;
    public static final int LAYOUT_MEASURE_INDEX = 2;
    public static final int SWAP_DURATION = 64;
    public static final int SWAP_INDEX = 6;
    public static final int SYNC_DURATION = 16;
    public static final int SYNC_INDEX = 4;
    public static final int TOTAL_DURATION = 1;
    public static final int TOTAL_INDEX = 0;

    /* renamed from: b */
    public static final int f4777b = 8;

    /* renamed from: a */
    public final C0534b f4778a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface MetricType {
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.FrameMetricsAggregator$a */
    /* loaded from: classes3.dex */
    public static class C0533a extends C0534b {

        /* renamed from: e */
        public static final int f4779e = 1000000;

        /* renamed from: f */
        public static final int f4780f = 500000;

        /* renamed from: g */
        public static HandlerThread f4781g;

        /* renamed from: h */
        public static Handler f4782h;

        /* renamed from: a */
        public int f4783a;

        /* renamed from: b */
        public SparseIntArray[] f4784b = new SparseIntArray[9];

        /* renamed from: c */
        public final ArrayList<WeakReference<Activity>> f4785c = new ArrayList<>();

        /* renamed from: d */
        public Window.OnFrameMetricsAvailableListener f4786d = new a();

        /* renamed from: androidx.core.app.FrameMetricsAggregator$a$a */
        /* loaded from: classes3.dex */
        public class a implements Window.OnFrameMetricsAvailableListener {
            public a() {
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                C0533a c0533a = C0533a.this;
                if ((c0533a.f4783a & 1) != 0) {
                    c0533a.m2350f(c0533a.f4784b[0], frameMetrics.getMetric(8));
                }
                C0533a c0533a2 = C0533a.this;
                if ((c0533a2.f4783a & 2) != 0) {
                    c0533a2.m2350f(c0533a2.f4784b[1], frameMetrics.getMetric(1));
                }
                C0533a c0533a3 = C0533a.this;
                if ((c0533a3.f4783a & 4) != 0) {
                    c0533a3.m2350f(c0533a3.f4784b[2], frameMetrics.getMetric(3));
                }
                C0533a c0533a4 = C0533a.this;
                if ((c0533a4.f4783a & 8) != 0) {
                    c0533a4.m2350f(c0533a4.f4784b[3], frameMetrics.getMetric(4));
                }
                C0533a c0533a5 = C0533a.this;
                if ((c0533a5.f4783a & 16) != 0) {
                    c0533a5.m2350f(c0533a5.f4784b[4], frameMetrics.getMetric(5));
                }
                C0533a c0533a6 = C0533a.this;
                if ((c0533a6.f4783a & 64) != 0) {
                    c0533a6.m2350f(c0533a6.f4784b[6], frameMetrics.getMetric(7));
                }
                C0533a c0533a7 = C0533a.this;
                if ((c0533a7.f4783a & 32) != 0) {
                    c0533a7.m2350f(c0533a7.f4784b[5], frameMetrics.getMetric(6));
                }
                C0533a c0533a8 = C0533a.this;
                if ((c0533a8.f4783a & 128) != 0) {
                    c0533a8.m2350f(c0533a8.f4784b[7], frameMetrics.getMetric(0));
                }
                C0533a c0533a9 = C0533a.this;
                if ((c0533a9.f4783a & 256) != 0) {
                    c0533a9.m2350f(c0533a9.f4784b[8], frameMetrics.getMetric(2));
                }
            }
        }

        public C0533a(int i) {
            this.f4783a = i;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.C0534b
        /* renamed from: a */
        public void mo2345a(Activity activity) {
            if (f4781g == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f4781g = handlerThread;
                handlerThread.start();
                f4782h = new Handler(f4781g.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f4784b;
                if (sparseIntArrayArr[i] == null && (this.f4783a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f4786d, f4782h);
            this.f4785c.add(new WeakReference<>(activity));
        }

        @Override // androidx.core.app.FrameMetricsAggregator.C0534b
        /* renamed from: b */
        public SparseIntArray[] mo2346b() {
            return this.f4784b;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.C0534b
        /* renamed from: c */
        public SparseIntArray[] mo2347c(Activity activity) {
            Iterator<WeakReference<Activity>> it2 = this.f4785c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it2.next();
                if (next.get() == activity) {
                    this.f4785c.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f4786d);
            return this.f4784b;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.C0534b
        /* renamed from: d */
        public SparseIntArray[] mo2348d() {
            SparseIntArray[] sparseIntArrayArr = this.f4784b;
            this.f4784b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }

        @Override // androidx.core.app.FrameMetricsAggregator.C0534b
        /* renamed from: e */
        public SparseIntArray[] mo2349e() {
            for (int size = this.f4785c.size() - 1; size >= 0; size--) {
                WeakReference<Activity> weakReference = this.f4785c.get(size);
                Activity activity = weakReference.get();
                if (weakReference.get() != null) {
                    activity.getWindow().removeOnFrameMetricsAvailableListener(this.f4786d);
                    this.f4785c.remove(size);
                }
            }
            return this.f4784b;
        }

        /* renamed from: f */
        public void m2350f(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }
    }

    /* renamed from: androidx.core.app.FrameMetricsAggregator$b */
    /* loaded from: classes3.dex */
    public static class C0534b {
        /* renamed from: a */
        public void mo2345a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo2346b() {
            return null;
        }

        /* renamed from: c */
        public SparseIntArray[] mo2347c(Activity activity) {
            return null;
        }

        /* renamed from: d */
        public SparseIntArray[] mo2348d() {
            return null;
        }

        /* renamed from: e */
        public SparseIntArray[] mo2349e() {
            return null;
        }
    }

    public FrameMetricsAggregator() {
        this(1);
    }

    public void add(@NonNull Activity activity) {
        this.f4778a.mo2345a(activity);
    }

    @Nullable
    public SparseIntArray[] getMetrics() {
        return this.f4778a.mo2346b();
    }

    @Nullable
    public SparseIntArray[] remove(@NonNull Activity activity) {
        return this.f4778a.mo2347c(activity);
    }

    @Nullable
    public SparseIntArray[] reset() {
        return this.f4778a.mo2348d();
    }

    @Nullable
    public SparseIntArray[] stop() {
        return this.f4778a.mo2349e();
    }

    public FrameMetricsAggregator(int i) {
        this.f4778a = new C0533a(i);
    }
}
