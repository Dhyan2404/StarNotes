package net.p110sf.saxon.style;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLWhen extends StyleElement {

    /* renamed from: u */
    public Expression f102140u;

    /* renamed from: v */
    public Expression f102141v;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compileSequenceConstructor(Compilation compilation, ComponentDeclaration componentDeclaration, boolean z) throws XPathException {
        Expression expression = this.f102141v;
        return expression == null ? super.compileSequenceConstructor(compilation, componentDeclaration, z) : expression;
    }

    public Expression getCondition() {
        return this.f102140u;
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
            String displayName = nodeName.getDisplayName();
            if (displayName.equals(Constants.ATTRNAME_TEST)) {
                this.f102140u = makeExpression(attributeInfo.getValue(), attributeInfo);
            } else if (displayName.equals("select")) {
                requireXslt40("select");
                this.f102141v = makeExpression(attributeInfo.getValue(), attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f102140u == null) {
            reportAbsence(Constants.ATTRNAME_TEST);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (!(getParent() instanceof XSLChooseOrSwitch)) {
            compileError("xsl:when must be immediately within xsl:choose or xsl:switch", "XTSE0010");
        }
        this.f102140u = typeCheck(Constants.ATTRNAME_TEST, this.f102140u);
        if (this.f102141v == null || !hasChildNodes()) {
            return;
        }
        compileError("xsl:when element must be empty if @select is present", "XTSE0010");
    }
}
