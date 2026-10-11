package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.serialize.SerializerUtils;
import com.sun.org.apache.xalan.internal.transformer.ClonerToResultTree;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.XPathContext;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemCopy extends ElemUse {
    static final long serialVersionUID = 5478580783896941384L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        XPathContext xPathContext = transformerImpl.getXPathContext();
        try {
            try {
                int currentNode = xPathContext.getCurrentNode();
                xPathContext.pushCurrentNode(currentNode);
                DTM dtm = xPathContext.getDTM(currentNode);
                short nodeType = dtm.getNodeType(currentNode);
                if (9 == nodeType || 11 == nodeType) {
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireTraceEvent(this);
                    }
                    super.execute(transformerImpl);
                    transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireTraceEndEvent(this);
                    }
                } else {
                    SerializationHandler serializationHandler = transformerImpl.getSerializationHandler();
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireTraceEvent(this);
                    }
                    ClonerToResultTree.cloneToResultTree(currentNode, nodeType, dtm, serializationHandler, false);
                    if (1 == nodeType) {
                        super.execute(transformerImpl);
                        SerializerUtils.processNSDecls(serializationHandler, currentNode, nodeType, dtm);
                        transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
                        transformerImpl.getResultTreeHandler().endElement(dtm.getNamespaceURI(currentNode), dtm.getLocalName(currentNode), dtm.getNodeName(currentNode));
                    }
                    if (transformerImpl.getDebug()) {
                        transformerImpl.getTraceManager().fireTraceEndEvent(this);
                    }
                }
            } catch (SAXException e) {
                throw new TransformerException(e);
            }
        } finally {
            xPathContext.popCurrentNode();
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return "copy";
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 9;
    }
}
