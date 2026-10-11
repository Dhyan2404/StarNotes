package io.opencensus.trace;

import io.opencensus.common.Clock;
import io.opencensus.internal.Provider;
import io.opencensus.trace.config.TraceConfig;
import io.opencensus.trace.export.ExportComponent;
import io.opencensus.trace.propagation.PropagationComponent;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class Tracing {

    /* renamed from: a */
    public static final Logger f94883a = Logger.getLogger(Tracing.class.getName());

    /* renamed from: b */
    public static final TraceComponent f94884b = m61076a(TraceComponent.class.getClassLoader());

    /* renamed from: a */
    public static TraceComponent m61076a(@Nullable ClassLoader classLoader) {
        try {
            return (TraceComponent) Provider.createInstance(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryTraceComponentImpl", true, classLoader), TraceComponent.class);
        } catch (ClassNotFoundException e) {
            f94883a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry TraceComponent, now trying to load original implementation.", (Throwable) e);
            try {
                return (TraceComponent) Provider.createInstance(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), TraceComponent.class);
            } catch (ClassNotFoundException e2) {
                f94883a.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e2);
                try {
                    return (TraceComponent) Provider.createInstance(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), TraceComponent.class);
                } catch (ClassNotFoundException e3) {
                    f94883a.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e3);
                    return TraceComponent.m61065a();
                }
            }
        }
    }

    public static Clock getClock() {
        return f94884b.getClock();
    }

    public static ExportComponent getExportComponent() {
        return f94884b.getExportComponent();
    }

    public static PropagationComponent getPropagationComponent() {
        return f94884b.getPropagationComponent();
    }

    public static TraceConfig getTraceConfig() {
        return f94884b.getTraceConfig();
    }

    public static Tracer getTracer() {
        return f94884b.getTracer();
    }
}
