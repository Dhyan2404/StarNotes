package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.impl.p055xs.XSImplementationImpl;
import java.util.Vector;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

/* loaded from: classes10.dex */
public class DOMXSImplementationSourceImpl extends DOMImplementationSourceImpl {
    @Override // com.sun.org.apache.xerces.internal.dom.DOMImplementationSourceImpl, org.w3c.dom.DOMImplementationSource
    public DOMImplementation getDOMImplementation(String str) {
        DOMImplementation dOMImplementation = super.getDOMImplementation(str);
        if (dOMImplementation != null) {
            return dOMImplementation;
        }
        DOMImplementation dOMImplementation2 = PSVIDOMImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation2, str)) {
            return dOMImplementation2;
        }
        DOMImplementation dOMImplementation3 = XSImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation3, str)) {
            return dOMImplementation3;
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.DOMImplementationSourceImpl, org.w3c.dom.DOMImplementationSource
    public DOMImplementationList getDOMImplementationList(String str) {
        Vector vector = new Vector();
        DOMImplementationList dOMImplementationList = super.getDOMImplementationList(str);
        for (int i = 0; i < dOMImplementationList.getLength(); i++) {
            vector.addElement(dOMImplementationList.item(i));
        }
        DOMImplementation dOMImplementation = PSVIDOMImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation, str)) {
            vector.addElement(dOMImplementation);
        }
        DOMImplementation dOMImplementation2 = XSImplementationImpl.getDOMImplementation();
        if (testImpl(dOMImplementation2, str)) {
            vector.addElement(dOMImplementation2);
        }
        return new DOMImplementationListImpl(vector);
    }
}
