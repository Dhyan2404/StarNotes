package com.sun.org.apache.xpath.internal.domapi;

import com.sun.org.apache.xml.internal.utils.PrefixResolverDefault;
import org.w3c.dom.Node;
import org.w3c.dom.xpath.XPathNSResolver;

/* loaded from: classes10.dex */
class XPathNSResolverImpl extends PrefixResolverDefault implements XPathNSResolver {
    public XPathNSResolverImpl(Node node) {
        super(node);
    }

    @Override // org.w3c.dom.xpath.XPathNSResolver
    public String lookupNamespaceURI(String str) {
        return super.getNamespaceForPrefix(str);
    }
}
