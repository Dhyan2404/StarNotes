package com.sun.org.apache.xpath.internal.domapi;

import com.sun.org.apache.xml.internal.utils.PrefixResolver;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.transform.TransformerException;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.xpath.XPathEvaluator;
import org.w3c.dom.xpath.XPathException;
import org.w3c.dom.xpath.XPathExpression;
import org.w3c.dom.xpath.XPathNSResolver;

/* loaded from: classes10.dex */
public final class XPathEvaluatorImpl implements XPathEvaluator {
    private final Document m_doc;

    public XPathEvaluatorImpl(Document document) {
        this.m_doc = document;
    }

    @Override // org.w3c.dom.xpath.XPathEvaluator
    public XPathExpression createExpression(String str, XPathNSResolver xPathNSResolver) throws XPathException, DOMException {
        try {
            return new XPathExpressionImpl(new XPath(str, null, xPathNSResolver == null ? new DummyPrefixResolver() : (PrefixResolver) xPathNSResolver, 0), this.m_doc);
        } catch (TransformerException e) {
            if (e instanceof XPathStylesheetDOM3Exception) {
                throw new DOMException((short) 14, e.getMessageAndLocation());
            }
            throw new XPathException((short) 1, e.getMessageAndLocation());
        }
    }

    @Override // org.w3c.dom.xpath.XPathEvaluator
    public XPathNSResolver createNSResolver(Node node) {
        if (node.getNodeType() == 9) {
            node = ((Document) node).getDocumentElement();
        }
        return new XPathNSResolverImpl(node);
    }

    @Override // org.w3c.dom.xpath.XPathEvaluator
    public Object evaluate(String str, Node node, XPathNSResolver xPathNSResolver, short s, Object obj) throws XPathException, DOMException {
        return createExpression(str, xPathNSResolver).evaluate(node, s, obj);
    }

    /* loaded from: classes10.dex */
    public class DummyPrefixResolver implements PrefixResolver {
        public DummyPrefixResolver() {
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getBaseIdentifier() {
            return null;
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getNamespaceForPrefix(String str, Node node) {
            throw new DOMException((short) 14, XPATHMessages.createXPATHMessage("ER_NULL_RESOLVER", null));
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public boolean handlesNullPrefixes() {
            return false;
        }

        @Override // com.sun.org.apache.xml.internal.utils.PrefixResolver
        public String getNamespaceForPrefix(String str) {
            return getNamespaceForPrefix(str, null);
        }
    }

    public XPathEvaluatorImpl() {
        this.m_doc = null;
    }
}
