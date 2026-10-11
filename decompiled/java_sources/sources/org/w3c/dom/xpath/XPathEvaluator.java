package org.w3c.dom.xpath;

import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes16.dex */
public interface XPathEvaluator {
    XPathExpression createExpression(String str, XPathNSResolver xPathNSResolver) throws XPathException, DOMException;

    XPathNSResolver createNSResolver(Node node);

    Object evaluate(String str, Node node, XPathNSResolver xPathNSResolver, short s, Object obj) throws XPathException, DOMException;
}
