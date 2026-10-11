package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.serialize.SerializerUtils;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.dtm.ref.DTMTreeWalker;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.XPathContext;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class TreeWalker2Result extends DTMTreeWalker {
    SerializationHandler m_handler;
    int m_startNode;
    TransformerImpl m_transformer;

    public TreeWalker2Result(TransformerImpl transformerImpl, SerializationHandler serializationHandler) {
        super(serializationHandler, null);
        this.m_transformer = transformerImpl;
        this.m_handler = serializationHandler;
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMTreeWalker
    public void endNode(int i) throws SAXException {
        super.endNode(i);
        if (1 == this.m_dtm.getNodeType(i)) {
            this.m_transformer.getXPathContext().popCurrentNode();
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMTreeWalker
    public void startNode(int i) throws SAXException {
        XPathContext xPathContext = this.m_transformer.getXPathContext();
        try {
            if (1 != this.m_dtm.getNodeType(i)) {
                xPathContext.pushCurrentNode(i);
                super.startNode(i);
                xPathContext.popCurrentNode();
                return;
            }
            xPathContext.pushCurrentNode(i);
            if (this.m_startNode != i) {
                super.startNode(i);
                return;
            }
            String nodeName = this.m_dtm.getNodeName(i);
            String localName = this.m_dtm.getLocalName(i);
            this.m_handler.startElement(this.m_dtm.getNamespaceURI(i), localName, nodeName);
            DTM dtm = this.m_dtm;
            int firstNamespaceNode = dtm.getFirstNamespaceNode(i, true);
            while (-1 != firstNamespaceNode) {
                SerializerUtils.ensureNamespaceDeclDeclared(this.m_handler, dtm, firstNamespaceNode);
                firstNamespaceNode = dtm.getNextNamespaceNode(i, firstNamespaceNode, true);
            }
            for (int firstAttribute = dtm.getFirstAttribute(i); -1 != firstAttribute; firstAttribute = dtm.getNextAttribute(firstAttribute)) {
                SerializerUtils.addAttribute(this.m_handler, firstAttribute);
            }
        } catch (TransformerException e) {
            throw new SAXException(e);
        }
    }

    @Override // com.sun.org.apache.xml.internal.dtm.ref.DTMTreeWalker
    public void traverse(int i) throws SAXException {
        this.m_dtm = this.m_transformer.getXPathContext().getDTM(i);
        this.m_startNode = i;
        super.traverse(i);
    }
}
