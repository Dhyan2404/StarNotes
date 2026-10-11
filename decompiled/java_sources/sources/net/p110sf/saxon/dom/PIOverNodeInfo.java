package net.p110sf.saxon.dom;

import org.w3c.dom.DOMException;
import org.w3c.dom.ProcessingInstruction;

/* loaded from: classes11.dex */
public class PIOverNodeInfo extends NodeOverNodeInfo implements ProcessingInstruction {
    @Override // org.w3c.dom.ProcessingInstruction
    public String getData() {
        return this.node.getStringValue();
    }

    @Override // org.w3c.dom.ProcessingInstruction
    public String getTarget() {
        return this.node.getLocalPart();
    }

    @Override // org.w3c.dom.ProcessingInstruction
    public void setData(String str) throws DOMException {
        NodeOverNodeInfo.disallowUpdate();
    }
}
