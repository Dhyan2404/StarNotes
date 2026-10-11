package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.serialize.SerializerUtils;
import com.sun.org.apache.xalan.internal.templates.StylesheetRoot;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xalan.internal.transformer.TreeWalker2Result;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemCopyOf extends ElemTemplateElement {
    static final long serialVersionUID = -7433828829497411127L;
    public XPath m_selectExpression = null;

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
        StylesheetRoot.ComposeState composeState = stylesheetRoot.getComposeState();
        this.m_selectExpression.fixupVariables(composeState.getVariableNames(), composeState.getGlobalsSize());
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            try {
                XPathContext xPathContext = transformerImpl.getXPathContext();
                int currentNode = xPathContext.getCurrentNode();
                XObject execute = this.m_selectExpression.execute(xPathContext, currentNode, this);
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireSelectedEvent(currentNode, this, "select", this.m_selectExpression, execute);
                }
                SerializationHandler serializationHandler = transformerImpl.getSerializationHandler();
                if (execute != null) {
                    int type = execute.getType();
                    if (type == 1 || type == 2 || type == 3) {
                        String str = execute.str();
                        serializationHandler.characters(str.toCharArray(), 0, str.length());
                    } else if (type == 4) {
                        DTMIterator iter = execute.iter();
                        TreeWalker2Result treeWalker2Result = new TreeWalker2Result(transformerImpl, serializationHandler);
                        while (true) {
                            int nextNode = iter.nextNode();
                            if (-1 == nextNode) {
                                break;
                            }
                            DTM dtm = xPathContext.getDTMManager().getDTM(nextNode);
                            short nodeType = dtm.getNodeType(nextNode);
                            if (nodeType == 9) {
                                for (int firstChild = dtm.getFirstChild(nextNode); firstChild != -1; firstChild = dtm.getNextSibling(firstChild)) {
                                    treeWalker2Result.traverse(firstChild);
                                }
                            } else if (nodeType == 2) {
                                SerializerUtils.addAttribute(serializationHandler, nextNode);
                            } else {
                                treeWalker2Result.traverse(nextNode);
                            }
                        }
                    } else if (type != 5) {
                        String str2 = execute.str();
                        serializationHandler.characters(str2.toCharArray(), 0, str2.length());
                    } else {
                        SerializerUtils.outputResultTreeFragment(serializationHandler, execute, transformerImpl.getXPathContext());
                    }
                }
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
        return Constants.ELEMNAME_COPY_OF_STRING;
    }

    public XPath getSelect() {
        return this.m_selectExpression;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 74;
    }

    public void setSelect(XPath xPath) {
        this.m_selectExpression = xPath;
    }
}
