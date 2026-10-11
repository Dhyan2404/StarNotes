package org.apache.xerces.dom;

import org.apache.xerces.dom3.as.ASModel;
import org.apache.xerces.dom3.as.DOMASBuilder;
import org.apache.xerces.dom3.as.DOMASWriter;
import org.apache.xerces.dom3.as.DOMImplementationAS;
import org.apache.xerces.parsers.DOMASBuilderImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;

/* loaded from: classes13.dex */
public class ASDOMImplementationImpl extends DOMImplementationImpl implements DOMImplementationAS {

    /* renamed from: t */
    public static final ASDOMImplementationImpl f111845t = new ASDOMImplementationImpl();

    public static DOMImplementation getDOMImplementation() {
        return f111845t;
    }

    @Override // org.apache.xerces.dom3.as.DOMImplementationAS
    public ASModel createAS(boolean z) {
        return new ASModelImpl(z);
    }

    @Override // org.apache.xerces.dom3.as.DOMImplementationAS
    public DOMASBuilder createDOMASBuilder() {
        return new DOMASBuilderImpl();
    }

    @Override // org.apache.xerces.dom3.as.DOMImplementationAS
    public DOMASWriter createDOMASWriter() {
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }
}
