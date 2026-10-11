package io.opencensus.stats;

import io.opencensus.internal.Provider;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class Stats {

    /* renamed from: a */
    public static final Logger f94764a = Logger.getLogger(Stats.class.getName());

    /* renamed from: b */
    public static final StatsComponent f94765b = m61016a(StatsComponent.class.getClassLoader());

    /* renamed from: a */
    public static StatsComponent m61016a(@Nullable ClassLoader classLoader) {
        try {
            return (StatsComponent) Provider.createInstance(Class.forName("io.opencensus.impl.stats.StatsComponentImpl", true, classLoader), StatsComponent.class);
        } catch (ClassNotFoundException e) {
            f94764a.log(Level.FINE, "Couldn't load full implementation for StatsComponent, now trying to load lite implementation.", (Throwable) e);
            try {
                return (StatsComponent) Provider.createInstance(Class.forName("io.opencensus.impllite.stats.StatsComponentImplLite", true, classLoader), StatsComponent.class);
            } catch (ClassNotFoundException e2) {
                f94764a.log(Level.FINE, "Couldn't load lite implementation for StatsComponent, now using default implementation for StatsComponent.", (Throwable) e2);
                return C17187x.m61043c();
            }
        }
    }

    public static StatsCollectionState getState() {
        return f94765b.getState();
    }

    public static StatsRecorder getStatsRecorder() {
        return f94765b.getStatsRecorder();
    }

    public static ViewManager getViewManager() {
        return f94765b.getViewManager();
    }

    @Deprecated
    public static void setState(StatsCollectionState statsCollectionState) {
        f94765b.setState(statsCollectionState);
    }
}
