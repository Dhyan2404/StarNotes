package net.p110sf.saxon.expr.instruct;

import net.p110sf.saxon.expr.ContextOriginator;

/* loaded from: classes11.dex */
public interface ITemplateCall extends ContextOriginator {
    WithParam[] getActualParams();

    WithParam[] getTunnelParams();
}
