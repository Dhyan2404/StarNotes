package com.sun.org.apache.xpath.internal;

import javax.xml.transform.TransformerException;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public interface WhitespaceStrippingElementMatcher {
    boolean canStripWhiteSpace();

    boolean shouldStripWhiteSpace(XPathContext xPathContext, Element element) throws TransformerException;
}
