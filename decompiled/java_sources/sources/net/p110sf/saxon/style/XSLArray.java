package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.ma.arrays.ArrayFunctionSet;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLArray extends XSLSequence {

    /* renamed from: v */
    public boolean f101888v;

    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (getURI().equals("http://www.w3.org/1999/XSL/Transform")) {
            requireXslt40(null);
        } else if (!getConfiguration().isLicensedFeature(8)) {
            compileError("saxon:array requires a Saxon-PE or -EE license");
        }
        if (getSelectExpression() == null) {
            setSelectExpression(compileSequenceConstructor(compilation, componentDeclaration, false));
        }
        Expression makeFunctionCall = this.f101888v ? ArrayFunctionSet.getInstance().makeFunction("of", 1).makeFunctionCall(getSelectExpression()) : ArrayFunctionSet.getInstance().makeFunction("_from-sequence", 1).makeFunctionCall(getSelectExpression());
        ExpressionTool.copyLocationInfo(getSelectExpression(), makeFunctionCall);
        return makeFunctionCall;
    }

    @Override // net.p110sf.saxon.style.XSLSequence, net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("select")) {
                setSelectExpression(makeExpression(value, attributeInfo));
            } else if (displayName.equals("composite")) {
                this.f101888v = processBooleanAttribute("composite", value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }
}
