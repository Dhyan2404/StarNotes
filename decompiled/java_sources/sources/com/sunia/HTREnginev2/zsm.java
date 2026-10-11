package com.sunia.HTREnginev2;

import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public final class zsm extends AbstractC13980k5 implements XMLGrammarPool {

    /* renamed from: e */
    public static final Grammar[] f92169e = new Grammar[0];

    /* renamed from: b */
    public final Grammar f92170b;

    /* renamed from: c */
    public final Grammar[] f92171c;

    /* renamed from: d */
    public final XMLGrammarDescription f92172d;

    public zsm(Grammar grammar) {
        this.f92170b = grammar;
        this.f92171c = new Grammar[]{grammar};
        this.f92172d = grammar.getGrammarDescription();
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void cacheGrammars(String str, Grammar[] grammarArr) {
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void clear() {
    }

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public XMLGrammarPool getGrammarPool() {
        return this;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13980k5, org.apache.xerces.jaxp.validation.XSGrammarPoolContainer
    public boolean isFullyComposed() {
        return true;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void lockPool() {
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
        if (this.f92172d.equals(xMLGrammarDescription)) {
            return this.f92170b;
        }
        return null;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public Grammar[] retrieveInitialGrammarSet(String str) {
        return "http://www.w3.org/2001/XMLSchema".equals(str) ? (Grammar[]) this.f92171c.clone() : f92169e;
    }

    @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
    public void unlockPool() {
    }
}
