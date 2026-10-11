package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemChoose extends ElemTemplateElement {
    static final long serialVersionUID = -3070117361903102033L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        int xSLToken = elemTemplateElement.getXSLToken();
        if (xSLToken != 38 && xSLToken != 39) {
            error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        }
        return super.appendChild(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean canAcceptVariables() {
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        boolean z = false;
        for (ElemTemplateElement firstChildElem = getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
            int xSLToken = firstChildElem.getXSLToken();
            if (38 == xSLToken) {
                ElemWhen elemWhen = (ElemWhen) firstChildElem;
                XPathContext xPathContext = transformerImpl.getXPathContext();
                int currentNode = xPathContext.getCurrentNode();
                if (transformerImpl.getDebug()) {
                    XObject execute = elemWhen.getTest().execute(xPathContext, currentNode, elemWhen);
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireSelectedEvent(currentNode, elemWhen, Constants.ATTRNAME_TEST, elemWhen.getTest(), execute);
                    }
                    if (execute.bool()) {
                        transformerImpl.getTraceManager().fireTraceEvent(elemWhen);
                        transformerImpl.executeChildTemplates((ElemTemplateElement) elemWhen, true);
                        transformerImpl.getTraceManager().fireTraceEndEvent(elemWhen);
                        return;
                    }
                } else if (elemWhen.getTest().bool(xPathContext, currentNode, elemWhen)) {
                    transformerImpl.executeChildTemplates((ElemTemplateElement) elemWhen, true);
                    return;
                }
                z = true;
            } else if (39 == xSLToken) {
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireTraceEvent(firstChildElem);
                }
                transformerImpl.executeChildTemplates(firstChildElem, true);
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireTraceEndEvent(firstChildElem);
                    return;
                }
                return;
            }
        }
        if (!z) {
            transformerImpl.getMsgMgr().error(this, "ER_CHOOSE_REQUIRES_WHEN");
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_CHOOSE_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 37;
    }
}
