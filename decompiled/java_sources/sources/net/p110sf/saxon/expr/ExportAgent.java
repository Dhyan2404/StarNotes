package net.p110sf.saxon.expr;

import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ExportAgent {
    void export(ExpressionPresenter expressionPresenter) throws XPathException;
}
