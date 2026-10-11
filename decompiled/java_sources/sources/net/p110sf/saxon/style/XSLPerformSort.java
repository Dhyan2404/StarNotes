package net.p110sf.saxon.style;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.sort.SortExpression;
import net.p110sf.saxon.expr.sort.SortKeyDefinitionList;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLPerformSort extends StyleElement {

    /* renamed from: u */
    public Expression f102086u = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        SortKeyDefinitionList m63961M = m63961M(compilation, componentDeclaration);
        if (this.f102086u != null) {
            return new SortExpression(this.f102086u, m63961M);
        }
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        if (compileSequenceConstructor == null) {
            compileSequenceConstructor = Literal.makeEmptySequence();
        }
        try {
            return new SortExpression(compileSequenceConstructor.simplify(), m63961M);
        } catch (XPathException e) {
            compileError(e);
            return null;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isPermittedChild(StyleElement styleElement) {
        return styleElement instanceof XSLSort;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            if (nodeName.getDisplayName().equals("select")) {
                this.f102086u = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        m63977p(true);
        if (this.f102086u != null) {
            for (NodeInfo nodeInfo : children()) {
                if (!(nodeInfo instanceof XSLSort) && !(nodeInfo instanceof XSLFallback)) {
                    if (nodeInfo.getNodeKind() != 3 || Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                        ((StyleElement) nodeInfo).compileError("Within xsl:perform-sort, child instructions are not allowed if there is a select attribute", "XTSE1040");
                    } else {
                        compileError("Within xsl:perform-sort, significant text must not appear if there is a select attribute", "XTSE1040");
                    }
                }
            }
        }
        this.f102086u = typeCheck("select", this.f102086u);
    }
}
