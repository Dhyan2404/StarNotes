package org.apache.xerces.parsers;

import org.apache.xerces.util.ShadowedSymbolTable;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.SynchronizedSymbolTable;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

/* loaded from: classes13.dex */
public class CachingParserPool {
    public static final boolean DEFAULT_SHADOW_GRAMMAR_POOL = false;
    public static final boolean DEFAULT_SHADOW_SYMBOL_TABLE = false;
    protected boolean fShadowGrammarPool;
    protected boolean fShadowSymbolTable;
    protected XMLGrammarPool fSynchronizedGrammarPool;
    protected SymbolTable fSynchronizedSymbolTable;

    /* loaded from: classes13.dex */
    public static final class ShadowedGrammarPool extends XMLGrammarPoolImpl {

        /* renamed from: b */
        public XMLGrammarPool f113356b;

        public ShadowedGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.f113356b = xMLGrammarPool;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl, org.apache.xerces.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
            super.cacheGrammars(str, grammarArr);
            this.f113356b.cacheGrammars(str, grammarArr);
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl
        public boolean containsGrammar(XMLGrammarDescription xMLGrammarDescription) {
            return super.containsGrammar(xMLGrammarDescription);
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl
        public Grammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
            if (super.containsGrammar(xMLGrammarDescription)) {
                return super.getGrammar(xMLGrammarDescription);
            }
            return null;
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl, org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            Grammar retrieveGrammar = super.retrieveGrammar(xMLGrammarDescription);
            return retrieveGrammar != null ? retrieveGrammar : this.f113356b.retrieveGrammar(xMLGrammarDescription);
        }

        @Override // org.apache.xerces.util.XMLGrammarPoolImpl, org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            Grammar[] retrieveInitialGrammarSet = super.retrieveInitialGrammarSet(str);
            return retrieveInitialGrammarSet != null ? retrieveInitialGrammarSet : this.f113356b.retrieveInitialGrammarSet(str);
        }
    }

    /* loaded from: classes13.dex */
    public static final class SynchronizedGrammarPool implements XMLGrammarPool {

        /* renamed from: a */
        public XMLGrammarPool f113357a;

        public SynchronizedGrammarPool(XMLGrammarPool xMLGrammarPool) {
            this.f113357a = xMLGrammarPool;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void cacheGrammars(String str, Grammar[] grammarArr) {
            synchronized (this.f113357a) {
                this.f113357a.cacheGrammars(str, grammarArr);
            }
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void clear() {
            synchronized (this.f113357a) {
                this.f113357a.clear();
            }
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void lockPool() {
            synchronized (this.f113357a) {
                this.f113357a.lockPool();
            }
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
            Grammar retrieveGrammar;
            synchronized (this.f113357a) {
                retrieveGrammar = this.f113357a.retrieveGrammar(xMLGrammarDescription);
            }
            return retrieveGrammar;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public Grammar[] retrieveInitialGrammarSet(String str) {
            Grammar[] retrieveInitialGrammarSet;
            synchronized (this.f113357a) {
                retrieveInitialGrammarSet = this.f113357a.retrieveInitialGrammarSet(str);
            }
            return retrieveInitialGrammarSet;
        }

        @Override // org.apache.xerces.xni.grammars.XMLGrammarPool
        public void unlockPool() {
            synchronized (this.f113357a) {
                this.f113357a.unlockPool();
            }
        }
    }

    public CachingParserPool() {
        this(new SymbolTable(), new XMLGrammarPoolImpl());
    }

    public DOMParser createDOMParser() {
        return new DOMParser(this.fShadowSymbolTable ? new ShadowedSymbolTable(this.fSynchronizedSymbolTable) : this.fSynchronizedSymbolTable, this.fShadowGrammarPool ? new ShadowedGrammarPool(this.fSynchronizedGrammarPool) : this.fSynchronizedGrammarPool);
    }

    public SAXParser createSAXParser() {
        return new SAXParser(this.fShadowSymbolTable ? new ShadowedSymbolTable(this.fSynchronizedSymbolTable) : this.fSynchronizedSymbolTable, this.fShadowGrammarPool ? new ShadowedGrammarPool(this.fSynchronizedGrammarPool) : this.fSynchronizedGrammarPool);
    }

    public SymbolTable getSymbolTable() {
        return this.fSynchronizedSymbolTable;
    }

    public XMLGrammarPool getXMLGrammarPool() {
        return this.fSynchronizedGrammarPool;
    }

    public void setShadowSymbolTable(boolean z) {
        this.fShadowSymbolTable = z;
    }

    public CachingParserPool(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this.fShadowSymbolTable = false;
        this.fShadowGrammarPool = false;
        this.fSynchronizedSymbolTable = new SynchronizedSymbolTable(symbolTable);
        this.fSynchronizedGrammarPool = new SynchronizedGrammarPool(xMLGrammarPool);
    }
}
