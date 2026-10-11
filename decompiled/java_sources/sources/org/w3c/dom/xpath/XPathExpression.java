package org.w3c.dom.xpath;

import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes16.dex */
public interface XPathExpression {
    Object evaluate(Node node, short s, Object obj) throws XPathException, DOMException;
}
