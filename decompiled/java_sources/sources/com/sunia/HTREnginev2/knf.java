package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.lnf;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.XNIException;

/* loaded from: classes13.dex */
public class knf extends lnf.C14053a {

    /* renamed from: m */
    public final /* synthetic */ lnf f75625m;

    public knf(lnf lnfVar, SymbolTable symbolTable) {
        super(lnfVar, symbolTable, null);
        this.f75625m = lnfVar;
    }

    @Override // com.sunia.HTREnginev2.lnf.C14053a
    /* renamed from: b */
    public void mo55245b(lnf.C14054b c14054b, int i) throws XNIException {
        if (i == 1 || i == 0) {
            super.mo55245b(c14054b, i);
        } else {
            this.f75625m.m55463e("InvalidElementSchemeToken", new Object[]{c14054b.m55477k(i)});
        }
    }
}
