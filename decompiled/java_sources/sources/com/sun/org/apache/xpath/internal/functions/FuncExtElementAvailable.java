package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xpath.internal.ExtensionsProvider;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncExtElementAvailable extends FunctionOneArg {
    static final long serialVersionUID = -472533699257968546L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        String namespaceForPrefix;
        String str = this.m_arg0.execute(xPathContext).str();
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            namespaceForPrefix = "http://www.w3.org/1999/XSL/Transform";
        } else {
            namespaceForPrefix = xPathContext.getNamespaceContext().getNamespaceForPrefix(str.substring(0, indexOf));
            if (namespaceForPrefix == null) {
                return XBoolean.S_FALSE;
            }
            str = str.substring(indexOf + 1);
        }
        return (namespaceForPrefix.equals("http://www.w3.org/1999/XSL/Transform") || namespaceForPrefix.equals("http://xml.apache.org/xalan")) ? XBoolean.S_FALSE : ((ExtensionsProvider) xPathContext.getOwnerObject()).elementAvailable(namespaceForPrefix, str) ? XBoolean.S_TRUE : XBoolean.S_FALSE;
    }
}
