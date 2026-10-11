package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemComment extends ElemTemplateElement {
    static final long serialVersionUID = -8813199122875770142L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        int xSLToken = elemTemplateElement.getXSLToken();
        if (xSLToken != 9 && xSLToken != 17 && xSLToken != 28 && xSLToken != 30 && xSLToken != 42 && xSLToken != 50 && xSLToken != 78) {
            switch (xSLToken) {
                case 35:
                case 36:
                case 37:
                    break;
                default:
                    switch (xSLToken) {
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            break;
                        default:
                            error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
                            break;
                    }
            }
        }
        return super.appendChild(elemTemplateElement);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            try {
                transformerImpl.getResultTreeHandler().comment(transformerImpl.transformToString(this));
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEndEvent(this);
            }
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "comment";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 59;
    }
}
