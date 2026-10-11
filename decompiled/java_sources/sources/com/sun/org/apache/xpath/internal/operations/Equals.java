package com.sun.org.apache.xpath.internal.operations;

import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class Equals extends Operation {
    static final long serialVersionUID = -2658315633903426134L;

    @Override // com.sun.org.apache.xpath.internal.Expression
    public boolean bool(XPathContext xPathContext) throws TransformerException {
        XObject execute = this.m_left.execute(xPathContext, true);
        XObject execute2 = this.m_right.execute(xPathContext, true);
        boolean equals = execute.equals(execute2);
        execute.detach();
        execute2.detach();
        return equals;
    }

    @Override // com.sun.org.apache.xpath.internal.operations.Operation
    public XObject operate(XObject xObject, XObject xObject2) throws TransformerException {
        return xObject.equals(xObject2) ? XBoolean.S_TRUE : XBoolean.S_FALSE;
    }
}
