package org.apache.xerces.impl.xpath;

import org.apache.xerces.impl.xpath.XPath;
import org.apache.xerces.util.SymbolTable;

/* renamed from: org.apache.xerces.impl.xpath.a */
/* loaded from: classes13.dex */
public class C20032a extends XPath.C20030a {

    /* renamed from: X */
    public final /* synthetic */ XPath f112559X;

    public C20032a(XPath xPath, SymbolTable symbolTable) {
        super(symbolTable);
        this.f112559X = xPath;
    }

    @Override // org.apache.xerces.impl.xpath.XPath.C20030a
    /* renamed from: a */
    public void mo69988a(XPath.C20031b c20031b, int i) throws XPathException {
        if (i != 6 && i != 11 && i != 21 && i != 4 && i != 9 && i != 10 && i != 22 && i != 23 && i != 36 && i != 35 && i != 8) {
            throw new XPathException("c-general-xpath");
        }
        super.mo69988a(c20031b, i);
    }
}
