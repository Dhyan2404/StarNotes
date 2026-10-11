package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XRTreeFrag;
import com.sun.org.apache.xpath.internal.objects.XRTreeFragSelectWrapper;
import com.sun.org.apache.xpath.internal.objects.XString;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemVariable extends ElemTemplateElement {
    static final long serialVersionUID = 9111131075322790061L;
    int m_frameSize;
    protected int m_index;
    private boolean m_isTopLevel;
    protected QName m_qname;
    private XPath m_selectPattern;

    public ElemVariable() {
        this.m_frameSize = -1;
        this.m_isTopLevel = false;
    }

    public static XPath rewriteChildToExpression(ElemTemplateElement elemTemplateElement) throws TransformerException {
        ElemTemplateElement firstChildElem = elemTemplateElement.getFirstChildElem();
        if (firstChildElem != null && firstChildElem.getNextSiblingElem() == null) {
            int xSLToken = firstChildElem.getXSLToken();
            if (30 == xSLToken) {
                ElemValueOf elemValueOf = (ElemValueOf) firstChildElem;
                if (!elemValueOf.getDisableOutputEscaping() && elemValueOf.getDOMBackPointer() == null) {
                    elemTemplateElement.m_firstChild = null;
                    return new XPath(new XRTreeFragSelectWrapper(elemValueOf.getSelect().getExpression()));
                }
            } else if (78 == xSLToken) {
                ElemTextLiteral elemTextLiteral = (ElemTextLiteral) firstChildElem;
                if (!elemTextLiteral.getDisableOutputEscaping() && elemTextLiteral.getDOMBackPointer() == null) {
                    XString xString = new XString(elemTextLiteral.getNodeValue());
                    elemTemplateElement.m_firstChild = null;
                    return new XPath(new XRTreeFragSelectWrapper(xString));
                }
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean accept(XSLTVisitor xSLTVisitor) {
        return xSLTVisitor.visitVariableOrParamDecl(this);
    }

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
        XPath xPath = this.m_selectPattern;
        if (xPath != null) {
            xPath.getExpression().callVisitors(this.m_selectPattern, xSLTVisitor);
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        QName qName;
        XPath rewriteChildToExpression;
        if (this.m_selectPattern == null && stylesheetRoot.getOptimizer() && (rewriteChildToExpression = rewriteChildToExpression(this)) != null) {
            this.m_selectPattern = rewriteChildToExpression;
        }
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        Vector variableNames = composeState.getVariableNames();
        XPath xPath = this.m_selectPattern;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, composeState.getGlobalsSize());
        }
        ElemTemplateElement elemTemplateElement = this.m_parentNode;
        if (!(elemTemplateElement instanceof Stylesheet) && (qName = this.m_qname) != null) {
            this.m_index = composeState.addVariableName(qName) - composeState.getGlobalsSize();
        } else if (elemTemplateElement instanceof Stylesheet) {
            composeState.resetStackFrameSize();
        }
        super.compose(stylesheetRoot);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void endCompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.endCompose(stylesheetRoot);
        if (this.m_parentNode instanceof Stylesheet) {
            StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
            this.m_frameSize = composeState.getFrameSize();
            composeState.resetStackFrameSize();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        transformerImpl.getXPathContext().getVarStack().setLocalVariable(this.m_index, getValue(transformerImpl, transformerImpl.getXPathContext().getCurrentNode()));
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    public int getIndex() {
        return this.m_index;
    }

    public boolean getIsTopLevel() {
        return this.m_isTopLevel;
    }

    public QName getName() {
        return this.m_qname;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_VARIABLE_STRING;
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
            } else if (getFirstChildElem() == null) {
                xRTreeFrag = XString.EMPTYSTRING;
            } else {
                xRTreeFrag = new XRTreeFrag(this.m_parentNode instanceof Stylesheet ? transformerImpl.transformToGlobalRTF(this) : transformerImpl.transformToRTF(this), xPathContext, this);
            }
            return xRTreeFrag;
        } finally {
            xPathContext.popCurrentNode();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 73;
    }

    public boolean isPsuedoVar() {
        String namespaceURI = this.m_qname.getNamespaceURI();
        return namespaceURI != null && namespaceURI.equals("http://xml.apache.org/xalan/psuedovar") && this.m_qname.getLocalName().startsWith("#");
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void recompose(StylesheetRoot stylesheetRoot) {
        stylesheetRoot.recomposeVariables(this);
    }

    public void setIndex(int i) {
        this.m_index = i;
    }

    public void setIsTopLevel(boolean z) {
        this.m_isTopLevel = z;
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

    public ElemVariable(ElemVariable elemVariable) throws TransformerException {
        this.m_frameSize = -1;
        this.m_isTopLevel = false;
        this.m_selectPattern = elemVariable.m_selectPattern;
        this.m_qname = elemVariable.m_qname;
        this.m_isTopLevel = elemVariable.m_isTopLevel;
    }
}
