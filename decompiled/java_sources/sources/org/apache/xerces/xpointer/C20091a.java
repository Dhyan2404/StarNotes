package org.apache.xerces.xpointer;

import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xpointer.XPointerHandler;

/* renamed from: org.apache.xerces.xpointer.a */
/* loaded from: classes13.dex */
public class C20091a extends XPointerHandler.C20089a {

    /* renamed from: s */
    public final /* synthetic */ XPointerHandler f113618s;

    public C20091a(XPointerHandler xPointerHandler, SymbolTable symbolTable) {
        super(xPointerHandler, symbolTable, null);
        this.f113618s = xPointerHandler;
    }

    @Override // org.apache.xerces.xpointer.XPointerHandler.C20089a
    /* renamed from: b */
    public void mo70639b(XPointerHandler.C20090b c20090b, int i) throws XNIException {
        if (i == 0 || i == 1 || i == 3 || i == 4 || i == 2) {
            super.mo70639b(c20090b, i);
        } else {
            this.f113618s.m70636H("InvalidXPointerToken", new Object[]{c20090b.m70651i(i)});
        }
    }
}
