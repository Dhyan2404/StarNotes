package com.sunia.HTREnginev2;

import io.grpc.Context;
import io.opencensus.trace.ContextHandle;

/* loaded from: classes10.dex */
public class sbe implements ContextHandle {

    /* renamed from: a */
    public final Context f83984a;

    public sbe(Context context) {
        this.f83984a = context;
    }

    /* renamed from: a */
    public Context m57146a() {
        return this.f83984a;
    }

    @Override // io.opencensus.trace.ContextHandle
    public ContextHandle attach() {
        return new sbe(this.f83984a.attach());
    }

    @Override // io.opencensus.trace.ContextHandle
    public void detach(ContextHandle contextHandle) {
        this.f83984a.detach(((sbe) contextHandle).f83984a);
    }
}
