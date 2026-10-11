package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.transformer.NodeSorter;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.IntStack;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.ExpressionOwner;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class ElemForEach extends ElemTemplateElement implements ExpressionOwner {
    static final boolean DEBUG = false;
    static final long serialVersionUID = 6018140636363583690L;
    public boolean m_doc_cache_off = false;
    protected Expression m_selectExpression = null;
    protected XPath m_xpath = null;
    protected Vector m_sortElems = null;

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.m_xpath = null;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public ElemTemplateElement appendChild(ElemTemplateElement elemTemplateElement) {
        if (64 != elemTemplateElement.getXSLToken()) {
            return super.appendChild(elemTemplateElement);
        }
        setSortElem((ElemSort) elemTemplateElement);
        return elemTemplateElement;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void callChildVisitors(XSLTVisitor xSLTVisitor, boolean z) {
        Expression expression;
        if (z && (expression = this.m_selectExpression) != null) {
            expression.callVisitors(this, xSLTVisitor);
        }
        int sortElemCount = getSortElemCount();
        for (int i = 0; i < sortElemCount; i++) {
            getSortElem(i).callVisitors(xSLTVisitor);
        }
        super.callChildVisitors(xSLTVisitor, z);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        int sortElemCount = getSortElemCount();
        for (int i = 0; i < sortElemCount; i++) {
            getSortElem(i).compose(stylesheetRoot);
        }
        Vector variableNames = stylesheetRoot.getComposeState().getVariableNames();
        Expression expression = this.m_selectExpression;
        if (expression != null) {
            expression.fixupVariables(variableNames, stylesheetRoot.getComposeState().getGlobalsSize());
        } else {
            this.m_selectExpression = getStylesheetRoot().m_selectDefault.getExpression();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void endCompose(StylesheetRoot stylesheetRoot) throws TransformerException {
        int sortElemCount = getSortElemCount();
        for (int i = 0; i < sortElemCount; i++) {
            getSortElem(i).endCompose(stylesheetRoot);
        }
        super.endCompose(stylesheetRoot);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        transformerImpl.pushCurrentTemplateRuleIsNull(true);
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            transformSelectedNodes(transformerImpl);
        } finally {
            if (transformerImpl.getDebug()) {
                transformerImpl.getTraceManager().fireTraceEndEvent(this);
            }
            transformerImpl.popCurrentTemplateRuleIsNull();
        }
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public Expression getExpression() {
        return this.m_selectExpression;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_FOREACH_STRING;
    }

    public Expression getSelect() {
        return this.m_selectExpression;
    }

    public ElemSort getSortElem(int i) {
        return (ElemSort) this.m_sortElems.elementAt(i);
    }

    public int getSortElemCount() {
        Vector vector = this.m_sortElems;
        if (vector == null) {
            return 0;
        }
        return vector.size();
    }

    public ElemTemplateElement getTemplateMatch() {
        return this;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 28;
    }

    @Override // com.sun.org.apache.xpath.internal.ExpressionOwner
    public void setExpression(Expression expression) {
        expression.exprSetParent(this);
        this.m_selectExpression = expression;
    }

    public void setSelect(XPath xPath) {
        this.m_selectExpression = xPath.getExpression();
        this.m_xpath = xPath;
    }

    public void setSortElem(ElemSort elemSort) {
        if (this.m_sortElems == null) {
            this.m_sortElems = new Vector();
        }
        this.m_sortElems.addElement(elemSort);
    }

    public DTMIterator sortNodes(XPathContext xPathContext, Vector vector, DTMIterator dTMIterator) throws TransformerException {
        NodeSorter nodeSorter = new NodeSorter(xPathContext);
        dTMIterator.setShouldCacheNodes(true);
        dTMIterator.runTo(-1);
        xPathContext.pushContextNodeList(dTMIterator);
        try {
            nodeSorter.sort(dTMIterator, vector, xPathContext);
            dTMIterator.setCurrentPos(0);
            return dTMIterator;
        } finally {
            xPathContext.popContextNodeList();
        }
    }

    public void transformSelectedNodes(TransformerImpl transformerImpl) throws TransformerException {
        DTMIterator dTMIterator;
        XPathContext xPathContext = transformerImpl.getXPathContext();
        int currentNode = xPathContext.getCurrentNode();
        DTMIterator asIterator = this.m_selectExpression.asIterator(xPathContext, currentNode);
        try {
            Vector processSortKeys = this.m_sortElems == null ? null : transformerImpl.processSortKeys(this, currentNode);
            if (processSortKeys != null) {
                asIterator = sortNodes(xPathContext, processSortKeys, asIterator);
            }
            dTMIterator = asIterator;
            try {
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireSelectedEvent(xPathContext.getCurrentNode(), this, "select", this.m_xpath, this.m_xpath.getExpression().execute(xPathContext));
                }
                xPathContext.pushCurrentNode(-1);
                IntStack currentNodeStack = xPathContext.getCurrentNodeStack();
                xPathContext.pushCurrentExpressionNode(-1);
                IntStack currentExpressionNodeStack = xPathContext.getCurrentExpressionNodeStack();
                xPathContext.pushSAXLocatorNull();
                xPathContext.pushContextNodeList(dTMIterator);
                transformerImpl.pushElemTemplateElement(null);
                DTM dtm = xPathContext.getDTM(currentNode);
                int i = currentNode & (-65536);
                while (true) {
                    int nextNode = dTMIterator.nextNode();
                    if (-1 == nextNode) {
                        break;
                    }
                    currentNodeStack.setTop(nextNode);
                    currentExpressionNodeStack.setTop(nextNode);
                    int i2 = nextNode & (-65536);
                    if (i2 != i) {
                        dtm = xPathContext.getDTM(nextNode);
                        i = i2;
                    }
                    dtm.getNodeType(nextNode);
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireTraceEvent(this);
                    }
                    for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
                        xPathContext.setSAXLocator(elemTemplateElement);
                        transformerImpl.setCurrentElement(elemTemplateElement);
                        elemTemplateElement.execute(transformerImpl);
                    }
                    if (transformerImpl.getDebug()) {
                        transformerImpl.setCurrentElement(null);
                        transformerImpl.getTraceManager().fireTraceEndEvent(this);
                    }
                    if (this.m_doc_cache_off) {
                        xPathContext.getSourceTreeManager().removeDocumentFromCache(dtm.getDocument());
                        xPathContext.release(dtm, false);
                    }
                }
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireSelectedEndEvent(currentNode, this, "select", new XPath(this.m_selectExpression), new XNodeSet(dTMIterator));
                }
                xPathContext.popSAXLocator();
                xPathContext.popContextNodeList();
                transformerImpl.popElemTemplateElement();
                xPathContext.popCurrentExpressionNode();
                xPathContext.popCurrentNode();
                dTMIterator.detach();
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (transformerImpl.getDebug()) {
                    transformerImpl.getTraceManager().fireSelectedEndEvent(currentNode, this, "select", new XPath(this.m_selectExpression), new XNodeSet(dTMIterator));
                }
                xPathContext.popSAXLocator();
                xPathContext.popContextNodeList();
                transformerImpl.popElemTemplateElement();
                xPathContext.popCurrentExpressionNode();
                xPathContext.popCurrentNode();
                dTMIterator.detach();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            dTMIterator = asIterator;
        }
    }
}
