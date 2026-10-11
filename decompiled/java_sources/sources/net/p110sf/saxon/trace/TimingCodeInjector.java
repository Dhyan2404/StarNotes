package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.instruct.ComponentTracer;

/* loaded from: classes11.dex */
public class TimingCodeInjector extends TraceCodeInjector {
    @Override // net.p110sf.saxon.trace.TraceCodeInjector, net.p110sf.saxon.expr.parser.CodeInjector
    public void process(TraceableComponent traceableComponent) {
        traceableComponent.setBody(new ComponentTracer(traceableComponent));
    }
}
