package com.sun.org.apache.xpath.internal.objects;

import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.utils.XMLString;
import com.sun.org.apache.xpath.internal.Expression;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.res.XPATHErrorResources;
import com.sun.org.apache.xpath.internal.res.XPATHMessages;
import java.util.Vector;
import javax.xml.transform.TransformerException;

/* loaded from: classes10.dex */
public class XRTreeFragSelectWrapper extends XRTreeFrag implements Cloneable {
    static final long serialVersionUID = -6526177905590461251L;

    public XRTreeFragSelectWrapper(Expression expression) {
        super(expression);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag
    public DTMIterator asNodeIterator() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER", null));
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xml.internal.dtm.DTMIterator
    public void detach() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_DETACH_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER, null));
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.Expression
    public XObject execute(XPathContext xPathContext) throws TransformerException {
        XObject execute = ((Expression) this.m_obj).execute(xPathContext);
        execute.allowDetachToRelease(this.m_allowRelease);
        return execute.getType() == 3 ? execute : new XString(execute.str());
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XObject, com.sun.org.apache.xpath.internal.Expression
    public void fixupVariables(Vector vector, int i) {
        ((Expression) this.m_obj).fixupVariables(vector, i);
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject
    public int getType() {
        return 3;
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject
    public double num() throws TransformerException {
        throw new RuntimeException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_NUM_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER, null));
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject
    public int rtf() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage("ER_RTF_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER", null));
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject
    public String str() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_STR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER, null));
    }

    @Override // com.sun.org.apache.xpath.internal.objects.XRTreeFrag, com.sun.org.apache.xpath.internal.objects.XObject
    public XMLString xstr() {
        throw new RuntimeException(XPATHMessages.createXPATHMessage(XPATHErrorResources.ER_XSTR_NOT_SUPPORTED_XRTREEFRAGSELECTWRAPPER, null));
    }
}
