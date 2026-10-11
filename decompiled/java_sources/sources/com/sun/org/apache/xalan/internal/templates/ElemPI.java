package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.XML11Char;
import com.sun.org.apache.xpath.internal.XPathContext;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemPI extends ElemTemplateElement {
    static final long serialVersionUID = 5621976448020889825L;
    private AVT m_name_atv = null;

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
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        Vector variableNames = stylesheetRoot.getComposeState().getVariableNames();
        AVT avt = this.m_name_atv;
        if (avt != null) {
            avt.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        XPathContext xPathContext = transformerImpl.getXPathContext();
        int currentNode = xPathContext.getCurrentNode();
        AVT avt = this.m_name_atv;
        String evaluate = avt == null ? null : avt.evaluate(xPathContext, currentNode, this);
        if (evaluate == null) {
            return;
        }
        if (evaluate.equalsIgnoreCase("xml")) {
            transformerImpl.getMsgMgr().warn(this, "WG_PROCESSINGINSTRUCTION_NAME_CANT_BE_XML", new Object[]{"name", evaluate});
            return;
        }
        if (!this.m_name_atv.isSimple() && !XML11Char.isXML11ValidNCName(evaluate)) {
            transformerImpl.getMsgMgr().warn(this, "WG_PROCESSINGINSTRUCTION_NOTVALID_NCNAME", new Object[]{"name", evaluate});
            return;
        }
        try {
            transformerImpl.getResultTreeHandler().processingInstruction(evaluate, transformerImpl.transformToString(this));
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEndEvent(this);
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }

    public AVT getName() {
        return this.m_name_atv;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_PI_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 58;
    }

    public void setName(AVT avt) {
        this.m_name_atv = avt;
    }
}
