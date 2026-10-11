package com.sunia.HTREnginev2;

import java.lang.ref.WeakReference;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public final class t5o extends AbstractC13980k5 {

    /* renamed from: b */
    public WeakReference f84910b = new WeakReference(null);

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public synchronized XMLGrammarPool getGrammarPool() {
        XMLGrammarPool xMLGrammarPool;
        xMLGrammarPool = (XMLGrammarPool) this.f84910b.get();
        if (xMLGrammarPool == null) {
            xMLGrammarPool = new gvm();
            this.f84910b = new WeakReference(xMLGrammarPool);
        }
        return xMLGrammarPool;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public boolean isFullyComposed() {
        return false;
    }
}
