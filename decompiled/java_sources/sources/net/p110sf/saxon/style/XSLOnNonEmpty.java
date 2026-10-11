package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.OnNonEmptyExpr;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class XSLOnNonEmpty extends XSLSequence {
    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return new OnNonEmptyExpr(super.compile(compilation, componentDeclaration));
    }
}
