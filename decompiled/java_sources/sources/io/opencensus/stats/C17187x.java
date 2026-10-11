package io.opencensus.stats;

import io.opencensus.common.Functions;
import io.opencensus.common.Timestamp;
import io.opencensus.internal.Utils;
import io.opencensus.stats.Measure;
import io.opencensus.stats.View;
import io.opencensus.stats.ViewData;
import io.opencensus.tags.TagContext;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

/* renamed from: io.opencensus.stats.x */
/* loaded from: classes10.dex */
public final class C17187x {

    /* renamed from: io.opencensus.stats.x$b */
    /* loaded from: classes10.dex */
    public static final class b extends MeasureMap {

        /* renamed from: b */
        public static final Logger f94831b = Logger.getLogger(b.class.getName());

        /* renamed from: a */
        public boolean f94832a;

        public b() {
        }

        @Override // io.opencensus.stats.MeasureMap
        public MeasureMap put(Measure.MeasureDouble measureDouble, double d) {
            if (d < 0.0d) {
                this.f94832a = true;
            }
            return this;
        }

        @Override // io.opencensus.stats.MeasureMap
        public void record() {
        }

        @Override // io.opencensus.stats.MeasureMap
        public MeasureMap put(Measure.MeasureLong measureLong, long j) {
            if (j < 0) {
                this.f94832a = true;
            }
            return this;
        }

        @Override // io.opencensus.stats.MeasureMap
        public void record(TagContext tagContext) {
            Utils.checkNotNull(tagContext, "tags");
            if (this.f94832a) {
                f94831b.log(Level.WARNING, "Dropping values, value to record must be non-negative.");
            }
        }
    }

    @ThreadSafe
    /* renamed from: io.opencensus.stats.x$c */
    /* loaded from: classes10.dex */
    public static final class c extends StatsComponent {

        /* renamed from: a */
        public final ViewManager f94833a;

        /* renamed from: b */
        public volatile boolean f94834b;

        public c() {
            this.f94833a = C17187x.m61044d();
        }

        @Override // io.opencensus.stats.StatsComponent
        public StatsCollectionState getState() {
            this.f94834b = true;
            return StatsCollectionState.DISABLED;
        }

        @Override // io.opencensus.stats.StatsComponent
        public StatsRecorder getStatsRecorder() {
            return C17187x.m61041a();
        }

        @Override // io.opencensus.stats.StatsComponent
        public ViewManager getViewManager() {
            return this.f94833a;
        }

        @Override // io.opencensus.stats.StatsComponent
        @Deprecated
        public void setState(StatsCollectionState statsCollectionState) {
            Utils.checkNotNull(statsCollectionState, "state");
            Utils.checkState(!this.f94834b, "State was already read, cannot set state.");
        }
    }

    @Immutable
    /* renamed from: io.opencensus.stats.x$d */
    /* loaded from: classes10.dex */
    public static final class d extends StatsRecorder {

        /* renamed from: a */
        public static final StatsRecorder f94835a = new d();

        @Override // io.opencensus.stats.StatsRecorder
        public MeasureMap newMeasureMap() {
            return C17187x.m61042b();
        }
    }

    @ThreadSafe
    /* renamed from: io.opencensus.stats.x$e */
    /* loaded from: classes10.dex */
    public static final class e extends ViewManager {

        /* renamed from: c */
        public static final Timestamp f94836c = Timestamp.create(0, 0);

        /* renamed from: a */
        @GuardedBy("registeredViews")
        public final Map<View.Name, View> f94837a;

        /* renamed from: b */
        @Nullable
        public volatile Set<View> f94838b;

        public e() {
            this.f94837a = new HashMap();
        }

        /* renamed from: a */
        public static Set<View> m61045a(Collection<View> collection) {
            HashSet hashSet = new HashSet();
            for (View view : collection) {
                if (!(view.getWindow() instanceof View.AggregationWindow.Interval)) {
                    hashSet.add(view);
                }
            }
            return Collections.unmodifiableSet(hashSet);
        }

        @Override // io.opencensus.stats.ViewManager
        public Set<View> getAllExportedViews() {
            Set<View> set = this.f94838b;
            if (set == null) {
                synchronized (this.f94837a) {
                    set = m61045a(this.f94837a.values());
                    this.f94838b = set;
                }
            }
            return set;
        }

        @Override // io.opencensus.stats.ViewManager
        @Nullable
        public ViewData getView(View.Name name) {
            Utils.checkNotNull(name, "name");
            synchronized (this.f94837a) {
                View view = this.f94837a.get(name);
                if (view == null) {
                    return null;
                }
                Map emptyMap = Collections.emptyMap();
                View.AggregationWindow window = view.getWindow();
                Timestamp timestamp = f94836c;
                return ViewData.create(view, emptyMap, (ViewData.AggregationWindowData) window.match(Functions.returnConstant(ViewData.AggregationWindowData.CumulativeData.create(timestamp, timestamp)), Functions.returnConstant(ViewData.AggregationWindowData.IntervalData.create(timestamp)), Functions.throwAssertionError()));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002a A[Catch: all -> 0x0035, TryCatch #0 {, blocks: (B:5:0x0009, B:7:0x0019, B:11:0x0023, B:13:0x002a, B:14:0x0033), top: B:4:0x0009 }] */
        @Override // io.opencensus.stats.ViewManager
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void registerView(io.opencensus.stats.View r5) {
            /*
                r4 = this;
                java.lang.String r0 = "newView"
                io.opencensus.internal.Utils.checkNotNull(r5, r0)
                java.util.Map<io.opencensus.stats.View$Name, io.opencensus.stats.View> r0 = r4.f94837a
                monitor-enter(r0)
                r1 = 0
                r4.f94838b = r1     // Catch: java.lang.Throwable -> L35
                java.util.Map<io.opencensus.stats.View$Name, io.opencensus.stats.View> r1 = r4.f94837a     // Catch: java.lang.Throwable -> L35
                io.opencensus.stats.View$Name r2 = r5.getName()     // Catch: java.lang.Throwable -> L35
                java.lang.Object r1 = r1.get(r2)     // Catch: java.lang.Throwable -> L35
                io.opencensus.stats.View r1 = (io.opencensus.stats.View) r1     // Catch: java.lang.Throwable -> L35
                if (r1 == 0) goto L22
                boolean r2 = r5.equals(r1)     // Catch: java.lang.Throwable -> L35
                if (r2 == 0) goto L20
                goto L22
            L20:
                r2 = 0
                goto L23
            L22:
                r2 = 1
            L23:
                java.lang.String r3 = "A different view with the same name already exists."
                io.opencensus.internal.Utils.checkArgument(r2, r3)     // Catch: java.lang.Throwable -> L35
                if (r1 != 0) goto L33
                java.util.Map<io.opencensus.stats.View$Name, io.opencensus.stats.View> r4 = r4.f94837a     // Catch: java.lang.Throwable -> L35
                io.opencensus.stats.View$Name r1 = r5.getName()     // Catch: java.lang.Throwable -> L35
                r4.put(r1, r5)     // Catch: java.lang.Throwable -> L35
            L33:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L35
                return
            L35:
                r4 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L35
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.opencensus.stats.C17187x.e.registerView(io.opencensus.stats.View):void");
        }
    }

    /* renamed from: a */
    public static StatsRecorder m61041a() {
        return d.f94835a;
    }

    /* renamed from: b */
    public static MeasureMap m61042b() {
        return new b();
    }

    /* renamed from: c */
    public static StatsComponent m61043c() {
        return new c();
    }

    /* renamed from: d */
    public static ViewManager m61044d() {
        return new e();
    }
}
