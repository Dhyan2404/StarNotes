package com.sun.org.apache.xerces.internal.impl.dtd;

import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class DTDGrammarBucket {
    protected DTDGrammar fActiveGrammar;
    protected Hashtable fGrammars = new Hashtable();
    protected boolean fIsStandalone;

    public void clear() {
        this.fGrammars.clear();
        this.fActiveGrammar = null;
        this.fIsStandalone = false;
    }

    public DTDGrammar getActiveGrammar() {
        return this.fActiveGrammar;
    }

    public DTDGrammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
        return (DTDGrammar) this.fGrammars.get((XMLDTDDescription) xMLGrammarDescription);
    }

    public boolean getStandalone() {
        return this.fIsStandalone;
    }

    public void putGrammar(DTDGrammar dTDGrammar) {
        this.fGrammars.put((XMLDTDDescription) dTDGrammar.getGrammarDescription(), dTDGrammar);
    }

    public void setActiveGrammar(DTDGrammar dTDGrammar) {
        this.fActiveGrammar = dTDGrammar;
    }

    public void setStandalone(boolean z) {
        this.fIsStandalone = z;
    }
}
