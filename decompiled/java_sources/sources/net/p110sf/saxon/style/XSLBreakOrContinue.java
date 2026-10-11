package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public abstract class XSLBreakOrContinue extends StyleElement {
    protected XSLIterate xslIterate = null;

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

    public void validatePosition() {
        boolean z = true;
        NodeInfo nodeInfo = this;
        while (true) {
            if (!(nodeInfo instanceof XSLWhen)) {
                AxisIterator iterateAxis = nodeInfo.iterateAxis(7);
                while (true) {
                    NodeInfo next = iterateAxis.next();
                    if (next == null) {
                        break;
                    } else if (!(next instanceof XSLFallback) && !(next instanceof XSLCatch)) {
                        z = false;
                    }
                }
            }
            nodeInfo = nodeInfo.getParent();
            if (nodeInfo instanceof XSLIterate) {
                this.xslIterate = (XSLIterate) nodeInfo;
                if (z) {
                    return;
                }
                compileError(getDisplayName() + " must be the last instruction in the xsl:iterate loop", "XTSE3120");
                return;
            }
            if (!(nodeInfo instanceof XSLTry) && !(nodeInfo instanceof XSLCatch) && !(nodeInfo instanceof XSLWhen) && !(nodeInfo instanceof XSLOtherwise) && !(nodeInfo instanceof XSLIf) && !(nodeInfo instanceof XSLChoose)) {
                if (nodeInfo == null) {
                    compileError(getDisplayName() + " is not allowed at outermost level", "XTSE3120");
                    return;
                }
                compileError(getDisplayName() + " is not allowed within " + nodeInfo.getDisplayName(), "XTSE3120");
                return;
            }
        }
    }
}
