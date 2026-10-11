package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLOtherwise extends StyleElement {

    /* renamed from: u */
    public Expression f102072u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        throw new UnsupportedOperationException("XSLOtherwise#compile() should not be called");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compileSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        Expression expression = this.f102072u;
        return expression == null ? super.compileSequenceConstructor(compilation, componentDeclaration, z) : expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        StyleElement m63951B = m63951B();
        return m63951B != null && m63951B.markTailCalls();
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            if (nodeName.getDisplayName().equals("select")) {
                requireXslt40("select");
                this.f102072u = makeExpression(attributeInfo.getValue(), attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (!(getParent() instanceof XSLChooseOrSwitch)) {
            compileError("xsl:otherwise must be immediately within xsl:choose or xsl:switch", "XTSE0010");
        }
        if (this.f102072u == null || !hasChildNodes()) {
            return;
        }
        compileError("xsl:otherwise element must be empty if @select is present", "XTSE0010");
    }
}
