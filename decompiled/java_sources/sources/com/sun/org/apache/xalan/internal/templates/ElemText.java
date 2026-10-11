package com.sun.org.apache.xalan.internal.templates;

/* loaded from: classes10.dex */
public class ElemText extends ElemTemplateElement {
    static final long serialVersionUID = 1383140876182316711L;
    private boolean m_disableOutputEscaping = false;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement.getXSLToken() != 78) {
            error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        }
        return super.appendChild(elemTemplateElement);
    }

    public boolean getDisableOutputEscaping() {
        return this.m_disableOutputEscaping;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "text";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 42;
    }

    public void setDisableOutputEscaping(boolean z) {
        this.m_disableOutputEscaping = z;
    }
}
