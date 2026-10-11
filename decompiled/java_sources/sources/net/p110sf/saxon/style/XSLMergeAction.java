package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLMergeAction extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return compileSequenceConstructor(compilation, componentDeclaration, true);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
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
        if (getParent() instanceof XSLMerge) {
            return;
        }
        compileError("xsl:merge-action may appear only as a child of xsl:merge", "XTSE0010");
    }
}
