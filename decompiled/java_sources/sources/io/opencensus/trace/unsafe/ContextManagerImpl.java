package io.opencensus.trace.unsafe;

import com.sunia.HTREnginev2.sbe;
import io.grpc.Context;
import io.opencensus.trace.ContextHandle;
import io.opencensus.trace.ContextManager;
import io.opencensus.trace.Span;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public class ContextManagerImpl implements ContextManager {
    /* renamed from: a */
    public static Context m61084a(ContextHandle contextHandle) {
        return ((sbe) contextHandle).m57146a();
    }

    /* renamed from: b */
    public static ContextHandle m61085b(Context context) {
        return new sbe(context);
    }

    @Override // io.opencensus.trace.ContextManager
    public ContextHandle currentContext() {
        return m61085b(Context.current());
    }

    @Override // io.opencensus.trace.ContextManager
    public Span getValue(ContextHandle contextHandle) {
        return ContextUtils.getValue(m61084a(contextHandle));
    }

    @Override // io.opencensus.trace.ContextManager
    public ContextHandle withValue(ContextHandle contextHandle, @Nullable Span span) {
        return m61085b(ContextUtils.withValue(m61084a(contextHandle), span));
    }
}
