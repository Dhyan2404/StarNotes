package org.apache.xerces.impl.dtd;

import java.util.Hashtable;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;

/* loaded from: classes13.dex */
public class DTDGrammarBucket {
    protected DTDGrammar fActiveGrammar;
    protected final Hashtable fGrammars = new Hashtable();
    protected boolean fIsStandalone;

    /* renamed from: a */
    public DTDGrammar m69889a() {
        return this.fActiveGrammar;
    }

    /* renamed from: b */
    public boolean m69890b() {
        return this.fIsStandalone;
    }

    /* renamed from: c */
    public void m69891c(DTDGrammar dTDGrammar) {
        this.fActiveGrammar = dTDGrammar;
    }

    public void clear() {
        this.fGrammars.clear();
        this.fActiveGrammar = null;
        this.fIsStandalone = false;
    }

    /* renamed from: d */
    public void m69892d(boolean z) {
        this.fIsStandalone = z;
    }

    public DTDGrammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
        return (DTDGrammar) this.fGrammars.get((XMLDTDDescription) xMLGrammarDescription);
    }

    public void putGrammar(DTDGrammar dTDGrammar) {
        this.fGrammars.put((XMLDTDDescription) dTDGrammar.getGrammarDescription(), dTDGrammar);
    }
}
