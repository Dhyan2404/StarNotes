package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.Block;
import net.p110sf.saxon.expr.instruct.Fork;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLFork extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, true);
        return compileSequenceConstructor instanceof Block ? new Fork(((Block) compileSequenceConstructor).getOperanda()) : compileSequenceConstructor;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            checkUnknownAttribute(it2.next().getNodeName());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        int i = 0;
        int i2 = 0;
        for (NodeInfo nodeInfo : children()) {
            if (nodeInfo instanceof XSLSequence) {
                i2++;
            } else if (nodeInfo instanceof XSLForEachGroup) {
                i++;
            } else if (!(nodeInfo instanceof XSLFallback)) {
                compileError(nodeInfo.getDisplayName() + " cannot appear as a child of xsl:fork");
            }
        }
        if (i > 1) {
            compileError("xsl:fork contains more than one xsl:for-each-group instruction");
        }
        if (i <= 0 || i2 <= 0) {
            return;
        }
        compileError("Cannot mix xsl:sequence and xsl:for-each-group within xsl:fork");
    }
}
