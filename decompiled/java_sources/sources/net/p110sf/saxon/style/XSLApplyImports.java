package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.ApplyImports;
import net.p110sf.saxon.expr.instruct.WithParam;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.linked.NodeImpl;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLApplyImports extends StyleElement {
    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        ApplyImports applyImports = new ApplyImports();
        WithParam[] withParamInstructions = getWithParamInstructions(applyImports, compilation, componentDeclaration, false);
        WithParam[] withParamInstructions2 = getWithParamInstructions(applyImports, compilation, componentDeclaration, true);
        applyImports.setActualParams(withParamInstructions);
        applyImports.setTunnelParams(withParamInstructions2);
        return applyImports;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
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
            if (!(nodeInfo instanceof XSLWithParam)) {
                if (nodeInfo.getNodeKind() != 3) {
                    compileError("Child element " + nodeInfo.getDisplayName() + " is not allowed as a child of xsl:apply-imports", "XTSE0010");
                } else if (!Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
                    compileError("No character data is allowed within xsl:apply-imports", "XTSE0010");
                }
            }
        }
        for (NodeImpl parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof XSLOverride) {
                compileError("xsl:apply-imports cannot be used in a template rule declared within xsl:override", "XTSE3460");
            }
        }
    }
}
