package com.sun.org.apache.xpath.internal.operations;

import com.sun.org.apache.xpath.internal.objects.XBoolean;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* renamed from: com.sun.org.apache.xpath.internal.operations.Lt */
/* loaded from: classes10.dex */
public class C13458Lt extends Operation {
    static final long serialVersionUID = 3388420509289359422L;

    @Override // com.sun.org.apache.xpath.internal.operations.Operation
    public XObject operate(XObject xObject, XObject xObject2) throws TransformerException {
        return xObject.lessThan(xObject2) ? XBoolean.S_TRUE : XBoolean.S_FALSE;
    }
}
