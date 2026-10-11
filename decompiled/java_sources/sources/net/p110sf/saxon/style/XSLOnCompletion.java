package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class XSLOnCompletion extends StyleElement {

    /* renamed from: u */
    public Expression f102070u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression expression = this.f102070u;
        return expression == null ? compileSequenceConstructor(compilation, componentDeclaration, true) : expression;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.f102070u = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        StyleElement styleElement = (StyleElement) getParent();
        if (!(styleElement instanceof XSLIterate)) {
            compileError("xsl:on-completion is not allowed as a child of " + styleElement.getDisplayName(), "XTSE0010");
        }
        AxisIterator iterateAxis = iterateAxis(11, NodeKindTest.ELEMENT);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                break;
            } else if (!(next instanceof XSLFallback) && !(next instanceof XSLLocalParam)) {
                compileError("xsl:on-completion must be the first child of xsl:iterate after the xsl:param elements", "XTSE0010");
            }
        }
        if (this.f102070u != null && iterateAxis(3).next() != null) {
            compileError("An xsl:on-completion element with a select attribute must be empty", "XTSE3125");
        }
        this.f102070u = typeCheck("select", this.f102070u);
    }
}
