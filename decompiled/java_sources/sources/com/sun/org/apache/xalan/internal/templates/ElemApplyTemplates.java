package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemApplyTemplates extends ElemCallTemplate {
    static final long serialVersionUID = 2903125371542621004L;
    private QName m_mode = null;
    private boolean m_isDefaultTemplate = false;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemCallTemplate, com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemCallTemplate, com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        boolean z = false;
        transformerImpl.pushCurrentTemplateRuleIsNull(false);
        try {
            QName mode = transformerImpl.getMode();
            if (!this.m_isDefaultTemplate && ((mode == null && this.m_mode != null) || (mode != null && !mode.equals(this.m_mode)))) {
                z = true;
                transformerImpl.pushMode(this.m_mode);
            }
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEvent(this);
            }
            transformSelectedNodes(transformerImpl);
        } finally {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEndEvent(this);
            }
            if (z) {
                transformerImpl.popMode();
            }
            transformerImpl.popCurrentTemplateRuleIsNull();
        }
    }

    public QName getMode() {
        return this.m_mode;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemCallTemplate, com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_APPLY_TEMPLATES_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemCallTemplate, com.sun.org.apache.xalan.internal.templates.ElemForEach, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 50;
    }

    public void setIsDefaultTemplate(boolean z) {
        this.m_isDefaultTemplate = z;
    }

    public void setMode(QName qName) {
        this.m_mode = qName;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // com.sun.org.apache.xalan.internal.templates.ElemForEach
    public void transformSelectedNodes(com.sun.org.apache.xalan.internal.transformer.TransformerImpl r33) throws javax.xml.transform.TransformerException {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.templates.ElemApplyTemplates.transformSelectedNodes(com.sun.org.apache.xalan.internal.transformer.TransformerImpl):void");
    }
}
