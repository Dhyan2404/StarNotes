package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xpath.internal.XPath;
import java.util.Vector;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class ElemSort extends ElemTemplateElement {
    static final long serialVersionUID = -4991510257335851938L;
    private XPath m_selectExpression = null;
    private AVT m_lang_avt = null;
    private AVT m_dataType_avt = null;
    private AVT m_order_avt = null;
    private AVT m_caseorder_avt = null;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        error("ER_CANNOT_ADD", new Object[]{node.getNodeName(), getNodeName()});
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        AVT avt = this.m_caseorder_avt;
        if (avt != null) {
            avt.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt2 = this.m_dataType_avt;
        if (avt2 != null) {
            avt2.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt3 = this.m_lang_avt;
        if (avt3 != null) {
            avt3.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        AVT avt4 = this.m_order_avt;
        if (avt4 != null) {
            avt4.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        XPath xPath = this.m_selectExpression;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
    }

    public AVT getCaseOrder() {
        return this.m_caseorder_avt;
    }

    public AVT getDataType() {
        return this.m_dataType_avt;
    }

    public AVT getLang() {
        return this.m_lang_avt;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_SORT_STRING;
    }

    public AVT getOrder() {
        return this.m_order_avt;
    }

    public XPath getSelect() {
        return this.m_selectExpression;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 64;
    }

    public void setCaseOrder(AVT avt) {
        this.m_caseorder_avt = avt;
    }

    public void setDataType(AVT avt) {
        this.m_dataType_avt = avt;
    }

    public void setLang(AVT avt) {
        this.m_lang_avt = avt;
    }

    public void setOrder(AVT avt) {
        this.m_order_avt = avt;
    }

    public void setSelect(XPath xPath) {
        if (xPath.getPatternString().indexOf("{") < 0) {
            this.m_selectExpression = xPath;
        } else {
            error("ER_NO_CURLYBRACE", null);
        }
    }
}
