package com.sun.org.apache.xpath.internal.jaxp;

import com.sun.org.apache.xml.internal.utils.QName;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import javax.xml.transform.TransformerException;
import javax.xml.xpath.XPathVariableResolver;

/* loaded from: classes10.dex */
public class JAXPVariableStack extends VariableStack {
    private final XPathVariableResolver resolver;

    public JAXPVariableStack(XPathVariableResolver xPathVariableResolver) {
        this.resolver = xPathVariableResolver;
    }

    @Override // com.sun.org.apache.xpath.internal.VariableStack
    public XObject getVariableOrParam(XPathContext xPathContext, QName qName) throws TransformerException, IllegalArgumentException {
        if (qName == null) {
            throw new IllegalArgumentException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_ARG_CANNOT_BE_NULL, new Object[]{"Variable qname"}));
        }
        javax.xml.namespace.QName qName2 = new javax.xml.namespace.QName(qName.getNamespace(), qName.getLocalPart());
        Object resolveVariable = this.resolver.resolveVariable(qName2);
        if (resolveVariable != null) {
            return XObject.create(resolveVariable, xPathContext);
        }
        throw new TransformerException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_RESOLVE_VARIABLE_RETURNS_NULL, new Object[]{qName2.toString()}));
    }
}
