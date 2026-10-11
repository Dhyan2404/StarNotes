package org.apache.xerces.parsers;

import java.util.Vector;
import org.apache.xerces.dom.ASModelImpl;
import org.apache.xerces.dom3.as.ASModel;
import org.apache.xerces.dom3.as.DOMASBuilder;
import org.apache.xerces.dom3.as.DOMASException;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.XSGrammarBucket;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLInputSource;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public class DOMASBuilderImpl extends DOMParserImpl implements DOMASBuilder {
    protected static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    protected ASModelImpl fAbstractSchema;
    protected XSGrammarBucket fGrammarBucket;

    public DOMASBuilderImpl() {
        super(new XMLGrammarCachingConfiguration());
    }

    @Override // org.apache.xerces.dom3.as.DOMASBuilder
    public ASModel getAbstractSchema() {
        return this.fAbstractSchema;
    }

    @Override // org.apache.xerces.dom3.as.DOMASBuilder
    public ASModel parseASInputSource(LSInput lSInput) throws DOMASException, Exception {
        try {
            return m70526y(m70531o(lSInput));
        } catch (XNIException e) {
            throw e.getException();
        }
    }

    @Override // org.apache.xerces.dom3.as.DOMASBuilder
    public ASModel parseASURI(String str) throws DOMASException, Exception {
        return m70526y(new XMLInputSource(null, str, null));
    }

    @Override // org.apache.xerces.dom3.as.DOMASBuilder
    public void setAbstractSchema(ASModel aSModel) {
        this.fAbstractSchema = (ASModelImpl) aSModel;
        XMLGrammarPool xMLGrammarPool = (XMLGrammarPool) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/grammar-pool");
        if (xMLGrammarPool == null) {
            xMLGrammarPool = new XMLGrammarPoolImpl();
            this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
        }
        ASModelImpl aSModelImpl = this.fAbstractSchema;
        if (aSModelImpl != null) {
            m70525x(aSModelImpl, xMLGrammarPool);
        }
    }

    /* renamed from: u */
    public final void m70522u(ASModelImpl aSModelImpl, XSGrammarBucket xSGrammarBucket) {
        SchemaGrammar[] grammars = xSGrammarBucket.getGrammars();
        for (SchemaGrammar schemaGrammar : grammars) {
            ASModelImpl aSModelImpl2 = new ASModelImpl();
            aSModelImpl2.setGrammar(schemaGrammar);
            aSModelImpl.addASModel(aSModelImpl2);
        }
    }

    /* renamed from: v */
    public final void m70523v() {
        this.fGrammarBucket.reset();
        ASModelImpl aSModelImpl = this.fAbstractSchema;
        if (aSModelImpl != null) {
            m70524w(aSModelImpl);
        }
    }

    /* renamed from: w */
    public final void m70524w(ASModelImpl aSModelImpl) {
        if (aSModelImpl.getGrammar() != null) {
            this.fGrammarBucket.putGrammar(aSModelImpl.getGrammar());
        }
        for (int i = 0; i < aSModelImpl.getInternalASModels().size(); i++) {
            m70524w((ASModelImpl) aSModelImpl.getInternalASModels().elementAt(i));
        }
    }

    /* renamed from: x */
    public final void m70525x(ASModelImpl aSModelImpl, XMLGrammarPool xMLGrammarPool) {
        SchemaGrammar grammar = aSModelImpl.getGrammar();
        Grammar[] grammarArr = {grammar};
        if (grammar != null) {
            xMLGrammarPool.cacheGrammars(grammar.getGrammarDescription().getGrammarType(), grammarArr);
        }
        Vector internalASModels = aSModelImpl.getInternalASModels();
        for (int i = 0; i < internalASModels.size(); i++) {
            m70525x((ASModelImpl) internalASModels.elementAt(i), xMLGrammarPool);
        }
    }

    /* renamed from: y */
    public ASModel m70526y(XMLInputSource xMLInputSource) throws Exception {
        if (this.fGrammarBucket == null) {
            this.fGrammarBucket = new XSGrammarBucket();
        }
        m70523v();
        XMLGrammarCachingConfiguration xMLGrammarCachingConfiguration = (XMLGrammarCachingConfiguration) this.fConfiguration;
        xMLGrammarCachingConfiguration.lockGrammarPool();
        SchemaGrammar m70555d = xMLGrammarCachingConfiguration.m70555d(xMLInputSource);
        xMLGrammarCachingConfiguration.unlockGrammarPool();
        if (m70555d == null) {
            return null;
        }
        ASModelImpl aSModelImpl = new ASModelImpl();
        this.fGrammarBucket.putGrammar(m70555d, true);
        m70522u(aSModelImpl, this.fGrammarBucket);
        return aSModelImpl;
    }

    public DOMASBuilderImpl(XMLGrammarCachingConfiguration xMLGrammarCachingConfiguration) {
        super(xMLGrammarCachingConfiguration);
    }

    public DOMASBuilderImpl(SymbolTable symbolTable) {
        super(new XMLGrammarCachingConfiguration(symbolTable));
    }

    public DOMASBuilderImpl(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        super(new XMLGrammarCachingConfiguration(symbolTable, xMLGrammarPool));
    }
}
