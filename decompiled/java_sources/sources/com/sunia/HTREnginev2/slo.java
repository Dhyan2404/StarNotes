package com.sunia.HTREnginev2;

import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public final class slo extends AbstractC13980k5 {

    /* renamed from: b */
    public final XMLGrammarPool f84269b;

    /* renamed from: c */
    public final boolean f84270c;

    public slo(XMLGrammarPool xMLGrammarPool) {
        this(xMLGrammarPool, true);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public XMLGrammarPool getGrammarPool() {
        return this.f84269b;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public boolean isFullyComposed() {
        return this.f84270c;
    }

    public slo(XMLGrammarPool xMLGrammarPool, boolean z) {
        this.f84269b = xMLGrammarPool;
        this.f84270c = z;
    }
}
