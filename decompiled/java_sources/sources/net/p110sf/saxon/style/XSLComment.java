package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.Comment;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class XSLComment extends XSLLeafNodeConstructor {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Comment comment = new Comment();
        compileContent(compilation, componentDeclaration, comment, new StringLiteral(StringValue.SINGLE_SPACE));
        return comment;
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return "XTSE0940";
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("select")) {
                this.select = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.select = typeCheck("select", this.select);
        super.validate(componentDeclaration);
    }
}
