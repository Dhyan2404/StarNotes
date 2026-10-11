package com.sunia.HTREnginev2;

import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public final class cdl implements XMLGrammarPool {

    /* renamed from: a */
    public final XMLGrammarPool f66731a;

    public cdl(XMLGrammarPool xMLGrammarPool) {
        this.f66731a = xMLGrammarPool;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void cacheGrammars(String str, Grammar[] grammarArr) {
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void clear() {
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void lockPool() {
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
        return this.f66731a.retrieveGrammar(xMLGrammarDescription);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar[] retrieveInitialGrammarSet(String str) {
        return this.f66731a.retrieveInitialGrammarSet(str);
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void unlockPool() {
    }
}
