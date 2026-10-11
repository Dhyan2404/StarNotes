package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemAttributeSet extends ElemUse {
    static final long serialVersionUID = -426740318278164496L;
    public QName m_qname = null;

    public ElemTemplateElement appendChildElem(ElemTemplateElement elemTemplateElement) {
        if (elemTemplateElement.getXSLToken() != 48) {
            error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        }
        return super.appendChild(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        if (transformerImpl.isRecursiveAttrSet(this)) {
            throw new TransformerException(XSLMessages.createMessage("ER_XSLATTRSET_USED_ITSELF", new Object[]{this.m_qname.getLocalPart()}));
        }
        transformerImpl.pushElemAttributeSet(this);
        super.execute(transformerImpl);
        for (ElemAttribute elemAttribute = (ElemAttribute) getFirstChildElem(); elemAttribute != null; elemAttribute = (ElemAttribute) elemAttribute.getNextSiblingElem()) {
            elemAttribute.execute(transformerImpl);
        }
        transformerImpl.popElemAttributeSet();
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    public QName getName() {
        return this.m_qname;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "attribute-set";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 40;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeAttributeSets(this);
    }

    public void setName(QName qName) {
        this.m_qname = qName;
    }
}
