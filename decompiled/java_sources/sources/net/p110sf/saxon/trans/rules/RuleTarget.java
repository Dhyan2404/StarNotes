package net.p110sf.saxon.trans.rules;

import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface RuleTarget {
    void export(ExpressionPresenter expressionPresenter) throws XPathException;

    void registerRule(Rule rule);
}
