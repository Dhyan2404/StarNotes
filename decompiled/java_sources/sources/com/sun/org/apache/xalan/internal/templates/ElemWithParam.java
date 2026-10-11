package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XRTreeFrag;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemWithParam extends ElemTemplateElement {
    static final long serialVersionUID = -1070355175864326257L;
    int m_index;
    int m_qnameID;
    private XPath m_selectPattern = null;
    private QName m_qname = null;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        if (this.m_selectPattern == null) {
            return super.appendChild(elemTemplateElement);
        }
        error(XSLTErrorResources.ER_CANT_HAVE_CONTENT_AND_SELECT, new Object[]{"xsl:" + getNodeName()});
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        XPath xPath;
        if (z && (xPath = this.m_selectPattern) != null) {
            xPath.getExpression().callVisitors(this.m_selectPattern, xSLTVisitor);
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        XPath rewriteChildToExpression;
        if (this.m_selectPattern == null && stylesheetRoot.getOptimizer() && (rewriteChildToExpression = ElemVariable.rewriteChildToExpression(this)) != null) {
            this.m_selectPattern = rewriteChildToExpression;
        }
        this.m_qnameID = stylesheetRoot.getComposeState().getQNameID(this.m_qname);
        super.compose(stylesheetRoot);
        Vector variableNames = stylesheetRoot.getComposeState().getVariableNames();
        XPath xPath = this.m_selectPattern;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
    }

    public QName getName() {
        return this.m_qname;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_WITHPARAM_STRING;
    }

    public XPath getSelect() {
        return this.m_selectPattern;
    }

    public XObject getValue(TransformerImpl transformerImpl, int i) throws TransformerException {
        XObject xRTreeFrag;
        XPathContext xPathContext = transformerImpl.getXPathContext();
        xPathContext.pushCurrentNode(i);
        try {
            XPath xPath = this.m_selectPattern;
            if (xPath != null) {
                xRTreeFrag = xPath.execute(xPathContext, i, this);
                xRTreeFrag.allowDetachToRelease(false);
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireSelectedEvent(i, this, "select", this.m_selectPattern, xRTreeFrag);
                }
            } else {
                xRTreeFrag = getFirstChildElem() == null ? XString.EMPTYSTRING : new XRTreeFrag(transformerImpl.transformToRTF(this), xPathContext, this);
            }
            return xRTreeFrag;
        } finally {
            xPathContext.popCurrentNode();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 2;
    }

    public void setName(QName qName) {
        this.m_qname = qName;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void setParentElem(ElemTemplateElement elemTemplateElement) {
        super.setParentElem(elemTemplateElement);
        elemTemplateElement.m_hasVariableDecl = true;
    }

    public void setSelect(XPath xPath) {
        this.m_selectPattern = xPath;
    }
}
