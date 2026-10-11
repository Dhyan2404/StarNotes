package com.sun.org.apache.xpath.internal.operations;

import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* renamed from: com.sun.org.apache.xpath.internal.operations.Gt */
/* loaded from: classes10.dex */
public class C13457Gt extends Operation {
    static final long serialVersionUID = 8927078751014375950L;

    @Override // com.sun.org.apache.xpath.internal.operations.Operation
    public XObject operate(XObject xObject, XObject xObject2) throws TransformerException {
        return xObject.greaterThan(xObject2) ? XBoolean.S_TRUE : XBoolean.S_FALSE;
    }
}
