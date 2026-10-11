package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPath;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class KeyDeclaration extends ElemTemplateElement {
    static final long serialVersionUID = 7724030248631137918L;
    private XPath m_matchPattern = null;
    private QName m_name;
    private XPath m_use;

    public KeyDeclaration(Stylesheet stylesheet, int i) {
        this.m_parentNode = stylesheet;
        setUid(i);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        Vector variableNames = stylesheetRoot.getComposeState().getVariableNames();
        XPath xPath = this.m_matchPattern;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
        XPath xPath2 = this.m_use;
        if (xPath2 != null) {
            xPath2.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
    }

    public XPath getMatch() {
        return this.m_matchPattern;
    }

    public QName getName() {
        return this.m_name;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "key";
    }

    public XPath getUse() {
        return this.m_use;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 31;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeKeys(this);
    }

    public void setMatch(XPath xPath) {
        this.m_matchPattern = xPath;
    }

    public void setName(QName qName) {
        this.m_name = qName;
    }

    public void setUse(XPath xPath) {
        this.m_use = xPath;
    }
}
