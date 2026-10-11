package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemFallback extends ElemTemplateElement {
    static final long serialVersionUID = 1782962139867340703L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
    }

    public void executeFallback(TransformerImpl transformerImpl) throws TransformerException {
        int xSLToken = this.m_parentNode.getXSLToken();
        if (79 != xSLToken && -1 != xSLToken) {
            System.out.println("Error!  parent of xsl:fallback must be an extension or unknown element!");
            return;
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_FALLBACK_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 57;
    }
}
