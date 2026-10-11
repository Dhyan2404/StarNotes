package org.apache.xerces.dom;

import java.util.ArrayList;
import org.apache.xerces.impl.p117xs.XSImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DOMImplementationList;

/* loaded from: classes13.dex */
public class DOMXSImplementationSourceImpl extends DOMImplementationSourceImpl {
    @Override // org.apache.xerces.dom.DOMImplementationSourceImpl, org.w3c.dom.DOMImplementationSource
    public DOMImplementation getDOMImplementation(String str) {
        DOMImplementation dOMImplementation = super.getDOMImplementation(str);
        if (dOMImplementation != null) {
            return dOMImplementation;
        }
        DOMImplementation dOMImplementation2 = PSVIDOMImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation2, str)) {
            return dOMImplementation2;
        }
        DOMImplementation dOMImplementation3 = XSImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation3, str)) {
            return dOMImplementation3;
        }
        return null;
    }

    @Override // org.apache.xerces.dom.DOMImplementationSourceImpl, org.w3c.dom.DOMImplementationSource
    public DOMImplementationList getDOMImplementationList(String str) {
        ArrayList arrayList = new ArrayList();
        DOMImplementationList dOMImplementationList = super.getDOMImplementationList(str);
        for (int i = 0; i < dOMImplementationList.getLength(); i++) {
            arrayList.add(dOMImplementationList.item(i));
        }
        DOMImplementation dOMImplementation = PSVIDOMImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation, str)) {
            arrayList.add(dOMImplementation);
        }
        DOMImplementation dOMImplementation2 = XSImplementationImpl.getDOMImplementation();
        if (m69743a(dOMImplementation2, str)) {
            arrayList.add(dOMImplementation2);
        }
        return new DOMImplementationListImpl(arrayList);
    }
}
