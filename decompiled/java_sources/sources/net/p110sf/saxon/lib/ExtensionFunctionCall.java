package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class ExtensionFunctionCall implements Callable {

    /* renamed from: e */
    public ExtensionFunctionDefinition f100498e;

    @Override // net.p110sf.saxon.expr.Callable
    public abstract Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException;

    public void copyLocalData(ExtensionFunctionCall extensionFunctionCall) {
    }

    public boolean effectiveBooleanValue(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return ExpressionTool.effectiveBooleanValue(call(xPathContext, sequenceArr).iterate());
    }

    public final ExtensionFunctionDefinition getDefinition() {
        return this.f100498e;
    }

    public Object getStreamingImplementation() {
        return null;
    }

    public Expression rewrite(StaticContext staticContext, Expression[] expressionArr) throws XPathException {
        return null;
    }

    public final void setDefinition(ExtensionFunctionDefinition extensionFunctionDefinition) {
        this.f100498e = extensionFunctionDefinition;
    }

    public void supplyStaticContext(StaticContext staticContext, int i, Expression[] expressionArr) throws XPathException {
    }
}
