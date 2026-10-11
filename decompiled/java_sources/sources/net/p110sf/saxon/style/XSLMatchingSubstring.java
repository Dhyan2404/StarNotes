package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLMatchingSubstring extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        throw new UnsupportedOperationException("XSLMatchingSubstring#compile() should not be called");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        Iterator<AttributeInfo> it2 = attributes().iterator();
        while (it2.hasNext()) {
            NodeName nodeName = it2.next().getNodeName();
            nodeName.getDisplayName();
            checkUnknownAttribute(nodeName);
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (getParent() instanceof XSLAnalyzeString) {
            return;
        }
        compileError(getDisplayName() + " must be immediately within xsl:analyze-string", "XTSE0010");
    }
}
