package com.sun.org.apache.xpath.internal.functions;

import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import com.sun.org.apache.xpath.internal.objects.XString;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class FuncSubstringAfter extends Function2Args {
    static final long serialVersionUID = -8119731889862512194L;

    @Override // com.sun.org.apache.xpath.internal.functions.Function, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        XMLString xstr = this.m_arg0.execute(xPathContext).xstr();
        XMLString xstr2 = this.m_arg1.execute(xPathContext).xstr();
        int indexOf = xstr.indexOf(xstr2);
        return -1 == indexOf ? XString.EMPTYSTRING : (XString) xstr.substring(indexOf + xstr2.length());
    }
}
