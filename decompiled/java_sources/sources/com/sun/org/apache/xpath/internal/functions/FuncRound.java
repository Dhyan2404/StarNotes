package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncRound extends FunctionOneArg {
    static final long serialVersionUID = -7970583902573826611L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        double num = this.m_arg0.execute(xPathContext).num();
        return (num < -0.5d || num >= 0.0d) ? num == 0.0d ? new XNumber(num) : new XNumber(Math.floor(num + 0.5d)) : new XNumber(-0.0d);
    }
}
