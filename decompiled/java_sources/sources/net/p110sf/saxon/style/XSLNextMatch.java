package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.NextMatch;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLNextMatch extends StyleElement {

    /* renamed from: u */
    public boolean f102056u = false;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        NextMatch nextMatch = new NextMatch(this.f102056u);
        nextMatch.setLocation(allocateLocation());
        nextMatch.setActualParams(getWithParamInstructions(nextMatch, compilation, componentDeclaration, false));
        nextMatch.setTunnelParams(getWithParamInstructions(nextMatch, compilation, componentDeclaration, true));
        return nextMatch;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean markTailCalls() {
        this.f102056u = true;
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainFallback() {
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
        for (NodeInfo nodeInfo : children()) {
            if (!(nodeInfo instanceof XSLWithParam) && !(nodeInfo instanceof XSLFallback)) {
                if (nodeInfo.getNodeKind() != 3) {
                    compileError("Child element " + nodeInfo.getDisplayName() + " is not allowed as a child of xsl:next-match", "XTSE0010");
                } else if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:next-match", "XTSE0010");
                }
            }
        }
    }
}
