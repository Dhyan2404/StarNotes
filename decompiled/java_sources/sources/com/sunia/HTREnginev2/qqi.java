package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.sqi;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.ErrorHandlerProxy;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.xni.parser.XMLErrorHandler;

/* loaded from: classes13.dex */
public class qqi extends ErrorHandlerProxy {

    /* renamed from: e */
    public final /* synthetic */ sqi f82335e;

    public qqi(sqi sqiVar) {
        this.f82335e = sqiVar;
    }

    @Override // org.apache.xerces.util.ErrorHandlerProxy
    public XMLErrorHandler getErrorHandler() {
        XMLErrorReporter xMLErrorReporter;
        xMLErrorReporter = this.f82335e.f84474o;
        XMLErrorHandler errorHandler = xMLErrorReporter.getErrorHandler();
        return errorHandler != null ? errorHandler : new ErrorHandlerWrapper(sqi.C14414a.m57240a());
    }
}
