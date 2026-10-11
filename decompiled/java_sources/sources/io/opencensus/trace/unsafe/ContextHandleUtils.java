package io.opencensus.trace.unsafe;

import com.sunia.HTREnginev2.sbe;
import io.grpc.Context;
import io.opencensus.internal.Provider;
import io.opencensus.trace.ContextHandle;
import io.opencensus.trace.ContextManager;
import io.opencensus.trace.Span;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public class ContextHandleUtils {

    /* renamed from: a */
    public static final Logger f94981a = Logger.getLogger(ContextHandleUtils.class.getName());

    /* renamed from: b */
    public static final ContextManager f94982b = m61083a(ContextManager.class.getClassLoader());

    /* renamed from: a */
    public static ContextManager m61083a(@Nullable ClassLoader classLoader) {
        try {
            return (ContextManager) Provider.createInstance(Class.forName("io.opentelemetry.opencensusshim.OpenTelemetryContextManager", true, classLoader), ContextManager.class);
        } catch (ClassNotFoundException e) {
            f94981a.log(Level.FINE, "Couldn't load full implementation for OpenTelemetry context manager, now loading original implementation.", (Throwable) e);
            return new ContextManagerImpl();
        }
    }

    public static ContextHandle currentContext() {
        return f94982b.currentContext();
    }

    public static Span getValue(ContextHandle contextHandle) {
        return f94982b.getValue(contextHandle);
    }

    @Nullable
    public static Context tryExtractGrpcContext(ContextHandle contextHandle) {
        if (contextHandle instanceof sbe) {
            return ((sbe) contextHandle).m57146a();
        }
        return null;
    }

    public static ContextHandle withValue(ContextHandle contextHandle, @Nullable Span span) {
        return f94982b.withValue(contextHandle, span);
    }
}
