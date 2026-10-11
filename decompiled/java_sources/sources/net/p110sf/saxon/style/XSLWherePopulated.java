package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.WherePopulated;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class XSLWherePopulated extends StyleElement {

    /* renamed from: u */
    public Expression f102142u;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f102142u == null) {
            this.f102142u = compileSequenceConstructor(compilation, componentDeclaration, false);
        }
        return new WherePopulated(this.f102142u);
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainFallback() {
        return true;
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
    }
}
