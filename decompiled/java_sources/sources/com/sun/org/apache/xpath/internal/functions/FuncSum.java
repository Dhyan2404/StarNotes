package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XNumber;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncSum extends FunctionOneArg {
    static final long serialVersionUID = -2719049259574677519L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        DTMIterator asIterator = this.m_arg0.asIterator(xPathContext, xPathContext.getCurrentNode());
        double d = 0.0d;
        while (true) {
            int nextNode = asIterator.nextNode();
            if (-1 == nextNode) {
                asIterator.detach();
                return new XNumber(d);
            }
            XMLString stringValue = asIterator.getDTM(nextNode).getStringValue(nextNode);
            if (stringValue != null) {
                d += stringValue.toDouble();
            }
        }
    }
}
