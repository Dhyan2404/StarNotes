package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.instruct.NamespaceConstructor;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class XSLNamespace extends XSLLeafNodeConstructor {

    /* renamed from: u */
    public Expression f102053u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        NamespaceConstructor namespaceConstructor = new NamespaceConstructor(this.f102053u);
        compileContent(compilation, componentDeclaration, namespaceConstructor, new StringLiteral(StringValue.SINGLE_SPACE));
        return namespaceConstructor;
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor
    public String getErrorCodeForSelectPlusContent() {
        return "XTSE0910";
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        this.f102053u = prepareAttributesNameAndSelect();
    }

    @Override // net.p110sf.saxon.style.XSLLeafNodeConstructor, net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102053u = typeCheck("name", this.f102053u);
        this.select = typeCheck("select", this.select);
        int i = 0;
        NodeInfo nodeInfo = null;
        for (NodeInfo nodeInfo2 : children()) {
            if (!(nodeInfo2 instanceof XSLFallback)) {
                if (this.select != null) {
                    compileError("An " + getDisplayName() + " element with a select attribute must be empty", getErrorCodeForSelectPlusContent());
                }
                i++;
                if (nodeInfo != null) {
                    break;
                } else {
                    nodeInfo = nodeInfo2;
                }
            }
        }
        if (this.select == null) {
            if (i == 0) {
                StringLiteral stringLiteral = new StringLiteral(StringValue.EMPTY_STRING);
                this.select = stringLiteral;
                stringLiteral.setRetainedStaticContext(makeRetainedStaticContext());
            } else if (i == 1 && nodeInfo.getNodeKind() == 3) {
                StringLiteral stringLiteral2 = new StringLiteral(nodeInfo.getUnicodeStringValue());
                this.select = stringLiteral2;
                stringLiteral2.setRetainedStaticContext(makeRetainedStaticContext());
            }
        }
    }
}
