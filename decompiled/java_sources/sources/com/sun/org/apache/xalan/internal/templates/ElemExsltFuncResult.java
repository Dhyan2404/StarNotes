package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemExsltFuncResult extends ElemVariable {
    static final long serialVersionUID = -3478311949388304563L;
    private boolean m_isResultSet = false;
    private XObject m_result = null;
    private int m_callerFrameSize = 0;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        XPathContext xPathContext = transformerImpl.getXPathContext();
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        if (transformerImpl.currentFuncResultSeen()) {
            throw new TransformerException("An EXSLT function cannot set more than one result!");
        }
        XObject value = getValue(transformerImpl, xPathContext.getCurrentNode());
        transformerImpl.popCurrentFuncResult();
        transformerImpl.pushCurrentFuncResult(value);
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 89;
    }
}
