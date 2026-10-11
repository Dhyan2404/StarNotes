package com.sun.org.apache.xerces.internal.jaxp.validation;

import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import java.lang.ref.WeakReference;

/* loaded from: classes10.dex */
final class WeakReferenceXMLSchema extends AbstractXMLSchema {
    private WeakReference fGrammarPool = new WeakReference(null);

    @Override // com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer
    public synchronized XMLGrammarPool getGrammarPool() {
        XMLGrammarPool xMLGrammarPool;
        xMLGrammarPool = (XMLGrammarPool) this.fGrammarPool.get();
        if (xMLGrammarPool == null) {
            xMLGrammarPool = new SoftReferenceGrammarPool();
            this.fGrammarPool = new WeakReference(xMLGrammarPool);
        }
        return xMLGrammarPool;
    }

    @Override // com.sun.org.apache.xerces.internal.jaxp.validation.XSGrammarPoolContainer
    public boolean isFullyComposed() {
        return false;
    }
}
