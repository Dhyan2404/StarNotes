package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPath;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemVariablePsuedo extends ElemVariable {
    static final long serialVersionUID = 692295692732588486L;
    XUnresolvedVariableSimple m_lazyVar;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        transformerImpl.getXPathContext().getVarStack().setLocalVariable(this.m_index, this.m_lazyVar);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemVariable
    public void setSelect(XPath xPath) {
        super.setSelect(xPath);
        this.m_lazyVar = new XUnresolvedVariableSimple(this);
    }
}
