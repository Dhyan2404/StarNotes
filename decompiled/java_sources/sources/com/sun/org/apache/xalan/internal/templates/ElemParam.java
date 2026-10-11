package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemParam extends ElemVariable {
    static final long serialVersionUID = -1131781475589006431L;
    int m_qnameID;

    public ElemParam() {
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        this.m_qnameID = stylesheetRoot.getComposeState().getQNameID(this.m_qname);
        int xSLToken = this.m_parentNode.getXSLToken();
        if (xSLToken == 19 || xSLToken == 88) {
            ((ElemTemplate) this.m_parentNode).m_inArgsSize++;
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        if (!transformerImpl.getXPathContext().getVarStack().isLocalSet(this.m_index)) {
            transformerImpl.getXPathContext().getVarStack().setLocalVariable(this.m_index, getValue(transformerImpl, transformerImpl.getXPathContext().getCurrentNode()));
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_PARAMVARIABLE_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 41;
    }

    public ElemParam(ElemParam elemParam) throws TransformerException {
        super(elemParam);
    }
}
