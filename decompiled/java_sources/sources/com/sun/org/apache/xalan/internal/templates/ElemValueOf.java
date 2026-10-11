package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.Vector;
import javax.xml.transform.Result;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemValueOf extends ElemTemplateElement {
    static final long serialVersionUID = 3490728458007586786L;
    private XPath m_selectExpression = null;
    private boolean m_isDot = false;
    private boolean m_disableOutputEscaping = false;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        error("ER_CANNOT_ADD", new Object[]{elemTemplateElement.getNodeName(), getNodeName()});
        return null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        if (z) {
            this.m_selectExpression.getExpression().callVisitors(this.m_selectExpression, xSLTVisitor);
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        Vector variableNames = stylesheetRoot.getComposeState().getVariableNames();
        XPath xPath = this.m_selectExpression;
        if (xPath != null) {
            xPath.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        XPathContext xPathContext = transformerImpl.getXPathContext();
        SerializationHandler resultTreeHandler = transformerImpl.getResultTreeHandler();
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            try {
                xPathContext.pushNamespaceContext(this);
                int currentNode = xPathContext.getCurrentNode();
                xPathContext.pushCurrentNodeAndExpression(currentNode, currentNode);
                if (this.m_disableOutputEscaping) {
                    resultTreeHandler.processingInstruction(Result.PI_DISABLE_OUTPUT_ESCAPING, "");
                }
                try {
                    Expression expression = this.m_selectExpression.getExpression();
                    if (transformerImpl.getDebug()) {
                        XObject execute = expression.execute(xPathContext);
                        transformerImpl.getTraceManager().fireSelectedEvent(currentNode, this, "select", this.m_selectExpression, execute);
                        execute.dispatchCharactersEvents(resultTreeHandler);
                    } else {
                        expression.executeCharsToContentHandler(xPathContext, resultTreeHandler);
                    }
                } finally {
                    if (this.m_disableOutputEscaping) {
                        resultTreeHandler.processingInstruction(Result.PI_ENABLE_OUTPUT_ESCAPING, "");
                    }
                    xPathContext.popNamespaceContext();
                    xPathContext.popCurrentNodeAndExpression();
                }
            } finally {
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireTraceEndEvent(this);
                }
            }
        } catch (RuntimeException e) {
            TransformerException transformerException = new TransformerException(e);
            transformerException.setLocator(this);
            throw transformerException;
        } catch (SAXException e2) {
            throw new TransformerException(e2);
        }
    }

    public boolean getDisableOutputEscaping() {
        return this.m_disableOutputEscaping;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_VALUEOF_STRING;
    }

    public XPath getSelect() {
        return this.m_selectExpression;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 30;
    }

    public void setDisableOutputEscaping(boolean z) {
        this.m_disableOutputEscaping = z;
    }

    public void setSelect(XPath xPath) {
        if (xPath != null) {
            String patternString = xPath.getPatternString();
            this.m_isDot = patternString != null && patternString.equals(".");
        }
        this.m_selectExpression = xPath;
    }
}
