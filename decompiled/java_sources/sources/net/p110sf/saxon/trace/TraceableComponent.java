package net.p110sf.saxon.trace;

import net.p110sf.saxon.expr.Expression;

/* loaded from: classes11.dex */
public interface TraceableComponent extends Traceable {
    Expression getBody();

    String getTracingTag();

    void setBody(Expression expression);
}
