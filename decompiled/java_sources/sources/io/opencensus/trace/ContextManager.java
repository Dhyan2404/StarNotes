package io.opencensus.trace;

import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public interface ContextManager {
    ContextHandle currentContext();

    Span getValue(ContextHandle contextHandle);

    ContextHandle withValue(ContextHandle contextHandle, @Nullable Span span);
}
