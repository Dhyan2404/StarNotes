package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemUnknown extends ElemLiteralResult {
    static final long serialVersionUID = -4573981712648730168L;

    private void executeFallbacks(TransformerImpl transformerImpl) throws TransformerException {
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            if (elemTemplateElement.getXSLToken() == 57) {
                try {
                    transformerImpl.pushElemTemplateElement(elemTemplateElement);
                    ((ElemFallback) elemTemplateElement).executeFallback(transformerImpl);
                } finally {
                    transformerImpl.popElemTemplateElement();
                }
            }
        }
    }

    private boolean hasFallbackChildren() {
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            if (elemTemplateElement.getXSLToken() == 57) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            if (hasFallbackChildren()) {
                executeFallbacks(transformerImpl);
            }
        } catch (TransformerException e) {
            transformerImpl.getErrorListener().fatalError(e);
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return -1;
    }
}
