package org.apache.xerces.impl;

import org.apache.xerces.util.ErrorHandlerProxy;
import org.apache.xerces.xni.parser.XMLErrorHandler;

/* renamed from: org.apache.xerces.impl.b */
/* loaded from: classes13.dex */
public class C20008b extends ErrorHandlerProxy {

    /* renamed from: e */
    public final /* synthetic */ XMLErrorReporter f112095e;

    public C20008b(XMLErrorReporter xMLErrorReporter) {
        this.f112095e = xMLErrorReporter;
    }

    @Override // org.apache.xerces.util.ErrorHandlerProxy
    public XMLErrorHandler getErrorHandler() {
        return this.f112095e.fErrorHandler;
    }
}
