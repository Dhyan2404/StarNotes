package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemCallTemplate extends ElemForEach {
    static final long serialVersionUID = 5009634612916030591L;
    public QName m_templateName = null;
    private ElemTemplate m_template = null;
    protected ElemWithParam[] m_paramElems = null;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        if (2 == elemTemplateElement.getXSLToken()) {
            setParamElem((ElemWithParam) elemTemplateElement);
        }
        return super.appendChild(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        int paramElemCount = getParamElemCount();
        for (int i = 0; i < paramElemCount; i++) {
            getParamElem(i).compose(stylesheetRoot);
        }
        if (this.m_templateName == null || this.m_template != null) {
            return;
        }
        ElemTemplate templateComposed = getStylesheetRoot().getTemplateComposed(this.m_templateName);
        this.m_template = templateComposed;
        if (templateComposed == null) {
            throw new TransformerException(XSLMessages.createMessage("ER_ELEMTEMPLATEELEM_ERR", new Object[]{this.m_templateName}), this);
        }
        int paramElemCount2 = getParamElemCount();
        for (int i2 = 0; i2 < paramElemCount2; i2++) {
            ElemWithParam paramElem = getParamElem(i2);
            paramElem.m_index = -1;
            int i3 = 0;
            for (ElemTemplateElement firstChildElem = this.m_template.getFirstChildElem(); firstChildElem != null && firstChildElem.getXSLToken() == 41; firstChildElem = firstChildElem.getNextSiblingElem()) {
                if (((ElemParam) firstChildElem).getName().equals(paramElem.getName())) {
                    paramElem.m_index = i3;
                }
                i3++;
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void endCompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        int paramElemCount = getParamElemCount();
        for (int i = 0; i < paramElemCount; i++) {
            getParamElem(i).endCompose(stylesheetRoot);
        }
        super.endCompose(stylesheetRoot);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        if (this.m_template != null) {
            XPathContext xPathContext = transformerImpl.getXPathContext();
            VariableStack varStack = xPathContext.getVarStack();
            int stackFrame = varStack.getStackFrame();
            int link = varStack.link(this.m_template.m_frameSize);
            int i = this.m_template.m_inArgsSize;
            if (i > 0) {
                varStack.clearLocalSlots(0, i);
                if (this.m_paramElems != null) {
                    int currentNode = xPathContext.getCurrentNode();
                    varStack.setStackFrame(stackFrame);
                    int length = this.m_paramElems.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        ElemWithParam elemWithParam = this.m_paramElems[i2];
                        if (elemWithParam.m_index >= 0) {
                            if (transformerImpl.getDebug()) {
                                transformerImpl.getTraceManager().fireTraceEvent(elemWithParam);
                            }
                            XObject value = elemWithParam.getValue(transformerImpl, currentNode);
                            if (transformerImpl.getDebug()) {
                                transformerImpl.getTraceManager().fireTraceEndEvent(elemWithParam);
                            }
                            varStack.setLocalVariable(elemWithParam.m_index, value, link);
                        }
                    }
                    varStack.setStackFrame(link);
                }
            }
            SourceLocator sAXLocator = xPathContext.getSAXLocator();
            try {
                xPathContext.setSAXLocator(this.m_template);
                transformerImpl.pushElemTemplateElement(this.m_template);
                this.m_template.execute(transformerImpl);
            } finally {
                transformerImpl.popElemTemplateElement();
                xPathContext.setSAXLocator(sAXLocator);
                varStack.unlink(stackFrame);
            }
        } else {
            transformerImpl.getMsgMgr().error(this, "ER_TEMPLATE_NOT_FOUND", new Object[]{this.m_templateName});
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    public QName getName() {
        return this.m_templateName;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_CALLTEMPLATE_STRING;
    }

    public ElemWithParam getParamElem(int i) {
        return this.m_paramElems[i];
    }

    public int getParamElemCount() {
        ElemWithParam[] elemWithParamArr = this.m_paramElems;
        if (elemWithParamArr == null) {
            return 0;
        }
        return elemWithParamArr.length;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 17;
    }

    public void setName(QName qName) {
        this.m_templateName = qName;
    }

    public void setParamElem(ElemWithParam elemWithParam) {
        ElemWithParam[] elemWithParamArr = this.m_paramElems;
        if (elemWithParamArr == null) {
            this.m_paramElems = r0;
            ElemWithParam[] elemWithParamArr2 = {elemWithParam};
            return;
        }
        int length = elemWithParamArr.length;
        ElemWithParam[] elemWithParamArr3 = new ElemWithParam[length + 1];
        System.arraycopy(elemWithParamArr, 0, elemWithParamArr3, 0, length);
        this.m_paramElems = elemWithParamArr3;
        elemWithParamArr3[length] = elemWithParam;
    }
}
