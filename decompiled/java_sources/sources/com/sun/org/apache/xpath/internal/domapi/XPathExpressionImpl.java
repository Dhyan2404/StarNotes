package com.sun.org.apache.xpath.internal.domapi;

import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.xpath.XPathException;
import org.w3c.dom.xpath.XPathExpression;

/* loaded from: classes10.dex */
class XPathExpressionImpl implements XPathExpression {
    private final Document m_doc;
    private final XPath m_xpath;

    public XPathExpressionImpl(XPath xPath, Document document) {
        this.m_xpath = xPath;
        this.m_doc = document;
    }

    @Override // org.w3c.dom.xpath.XPathExpression
    public Object evaluate(Node node, short s, Object obj) throws XPathException, DOMException {
        Document document = this.m_doc;
        if (document != null) {
            if (node != document && !node.getOwnerDocument().equals(this.m_doc)) {
                throw new DOMException((short) 4, XPATHMessages.createXPATHMessage("ER_WRONG_DOCUMENT", null));
            }
            short nodeType = node.getNodeType();
            if (nodeType != 9 && nodeType != 1 && nodeType != 2 && nodeType != 3 && nodeType != 4 && nodeType != 8 && nodeType != 7 && nodeType != 13) {
                throw new DOMException((short) 9, XPATHMessages.createXPATHMessage("ER_WRONG_NODETYPE", null));
            }
        }
        if (!XPathResultImpl.isValidType(s)) {
            throw new XPathException((short) 2, XPATHMessages.createXPATHMessage("ER_INVALID_XPATH_TYPE", new Object[]{new Integer(s)}));
        }
        XPathContext xPathContext = new XPathContext();
        Document document2 = this.m_doc;
        if (document2 != null) {
            xPathContext.getDTMHandleFromNode(document2);
        }
        try {
            return new XPathResultImpl(s, this.m_xpath.execute(xPathContext, node, (PrefixResolver) null), node, this.m_xpath);
        } catch (TransformerException e) {
            throw new XPathException((short) 1, e.getMessageAndLocation());
        }
    }
}
