package net.p110sf.saxon.expr.parser;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ExpressionAction {
    boolean process(Expression expression, Object obj) throws XPathException;
}
