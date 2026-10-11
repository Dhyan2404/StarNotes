package org.apache.xerces.impl.p117xs;

import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.PSVIDOMImplementationImpl;
import org.apache.xerces.impl.p117xs.util.LSInputListImpl;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.p118xs.LSInputList;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSException;
import org.apache.xerces.p118xs.XSImplementation;
import org.apache.xerces.p118xs.XSLoader;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public class XSImplementationImpl extends PSVIDOMImplementationImpl implements XSImplementation {

    /* renamed from: u */
    public static final XSImplementationImpl f112927u = new XSImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return f112927u;
    }

    @Override // org.apache.xerces.p118xs.XSImplementation
    public LSInputList createLSInputList(LSInput[] lSInputArr) {
        int length = lSInputArr != null ? lSInputArr.length : 0;
        return length != 0 ? new LSInputListImpl((LSInput[]) lSInputArr.clone(), length) : LSInputListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSImplementation
    public StringList createStringList(String[] strArr) {
        int length = strArr != null ? strArr.length : 0;
        return length != 0 ? new StringListImpl((String[]) strArr.clone(), length) : StringListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSImplementation
    public XSLoader createXSLoader(StringList stringList) throws XSException {
        XSLoaderImpl xSLoaderImpl = new XSLoaderImpl();
        if (stringList == null) {
            return xSLoaderImpl;
        }
        for (int i = 0; i < stringList.getLength(); i++) {
            if (!stringList.item(i).equals("1.0")) {
                throw new XSException((short) 1, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "FEATURE_NOT_SUPPORTED", new Object[]{stringList.item(i)}));
            }
        }
        return xSLoaderImpl;
    }

    @Override // org.apache.xerces.p118xs.XSImplementation
    public StringList getRecognizedVersions() {
        return new StringListImpl(new String[]{"1.0"}, 1);
    }

    @Override // org.apache.xerces.dom.PSVIDOMImplementationImpl, org.apache.xerces.dom.DOMImplementationImpl, org.apache.xerces.dom.CoreDOMImplementationImpl, org.w3c.dom.DOMImplementation
    public boolean hasFeature(String str, String str2) {
        return (str.equalsIgnoreCase("XS-Loader") && (str2 == null || str2.equals("1.0"))) || super.hasFeature(str, str2);
    }
}
