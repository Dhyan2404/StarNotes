package io.opencensus.trace;

/* loaded from: classes10.dex */
public interface ContextHandle {
    ContextHandle attach();

    void detach(ContextHandle contextHandle);
}
