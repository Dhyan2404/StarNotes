package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.functions.registry.XPath40FunctionSet;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLArrayMember extends XSLSequence {
    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (getSelectExpression() == null) {
            setSelectExpression(compileSequenceConstructor(compilation, componentDeclaration, false));
        }
        return XPath40FunctionSet.getInstance().makeFunction("parcel", 1).makeFunctionCall(getSelectExpression());
    }
}
