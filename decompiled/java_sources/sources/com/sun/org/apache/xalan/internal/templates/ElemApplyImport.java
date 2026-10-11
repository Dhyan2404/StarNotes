package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemApplyImport extends ElemTemplateElement {
    static final long serialVersionUID = 3764728663373024038L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.currentTemplateRuleIsNull()) {
            transformerImpl.getMsgMgr().error(this, "ER_NO_APPLY_IMPORT_IN_FOR_EACH");
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        int currentNode = transformerImpl.getXPathContext().getCurrentNode();
        if (-1 != currentNode) {
            transformerImpl.applyTemplateToNode(this, transformerImpl.getMatchedTemplate(), currentNode);
        } else {
            transformerImpl.getMsgMgr().error(this, "ER_NULL_SOURCENODE_APPLYIMPORTS");
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_APPLY_IMPORTS_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 72;
    }
}
