package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.axes.PredicatedNodeTest;
import com.sun.org.apache.xpath.internal.axes.SubContextList;
import com.sun.org.apache.xpath.internal.objects.XNodeSet;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.patterns.StepPattern;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncCurrent extends Function {
    static final long serialVersionUID = 5715316804877715008L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        int contextNode;
        SubContextList currentNodeList = xPathContext.getCurrentNodeList();
        if (currentNodeList == null) {
            contextNode = xPathContext.getContextNode();
        } else if (currentNodeList instanceof PredicatedNodeTest) {
            contextNode = ((PredicatedNodeTest) currentNodeList).getLocPathIterator().getCurrentContextNode();
        } else {
            if (currentNodeList instanceof StepPattern) {
                throw new RuntimeException(XSLMessages.createMessage("ER_PROCESSOR_ERROR", null));
            }
            contextNode = -1;
        }
        return new XNodeSet(contextNode, xPathContext.getDTMManager());
    }

    @Override // com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
    }
}
