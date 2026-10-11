package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemMessage extends ElemTemplateElement {
    static final long serialVersionUID = 1530472462155060023L;
    private boolean m_terminate = false;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        transformerImpl.getMsgMgr().message(this, transformerImpl.transformToString(this), this.m_terminate);
        if (this.m_terminate) {
            transformerImpl.getErrorListener().fatalError(new TransformerException(XSLMessages.createMessage("ER_STYLESHEET_DIRECTED_TERMINATION", null)));
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "message";
    }

    public boolean getTerminate() {
        return this.m_terminate;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 75;
    }

    public void setTerminate(boolean z) {
        this.m_terminate = z;
    }
}
