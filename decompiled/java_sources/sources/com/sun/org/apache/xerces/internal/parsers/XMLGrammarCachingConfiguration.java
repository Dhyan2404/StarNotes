package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDLoader;
import com.sun.org.apache.xerces.internal.impl.p055xs.SchemaGrammar;
import com.sun.org.apache.xerces.internal.impl.p055xs.XMLSchemaLoader;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSMessageFormatter;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XMLGrammarCachingConfiguration extends XIncludeAwareParserConfiguration {
    public static final int BIG_PRIME = 2039;
    protected static final String SCHEMA_FULL_CHECKING = "http://apache.org/xml/features/validation/schema-full-checking";
    protected XMLDTDLoader fDTDLoader;
    protected XMLSchemaLoader fSchemaLoader;
    protected static final SynchronizedSymbolTable fStaticSymbolTable = new SynchronizedSymbolTable(2039);
    protected static final XMLGrammarPoolImpl fStaticGrammarPool = new XMLGrammarPoolImpl();

    public XMLGrammarCachingConfiguration() {
        this(fStaticSymbolTable, fStaticGrammarPool, null);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.XML11Configuration, com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings
    public void checkFeature(String str) throws XMLConfigurationException {
        super.checkFeature(str);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.XML11Configuration, com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        super.checkProperty(str);
    }

    public void clearGrammarPool() {
        this.fGrammarPool.clear();
    }

    public void lockGrammarPool() {
        this.fGrammarPool.lockPool();
    }

    public DTDGrammar parseDTD(XMLInputSource xMLInputSource) throws IOException {
        XMLEntityResolver entityResolver = getEntityResolver();
        if (entityResolver != null) {
            this.fDTDLoader.setEntityResolver(entityResolver);
        }
        this.fDTDLoader.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        DTDGrammar dTDGrammar = (DTDGrammar) this.fDTDLoader.loadGrammar(xMLInputSource);
        if (dTDGrammar != null) {
            this.fGrammarPool.cacheGrammars("http://www.w3.org/TR/REC-xml", new Grammar[]{dTDGrammar});
        }
        return dTDGrammar;
    }

    public Grammar parseGrammar(String str, String str2) throws XNIException, IOException {
        return parseGrammar(str, new XMLInputSource(null, str2, null));
    }

    public SchemaGrammar parseXMLSchema(XMLInputSource xMLInputSource) throws IOException {
        XMLEntityResolver entityResolver = getEntityResolver();
        if (entityResolver != null) {
            this.fSchemaLoader.setEntityResolver(entityResolver);
        }
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        }
        this.fSchemaLoader.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        String str = "http://apache.org/xml/properties/schema/external-schemaLocation";
        this.fSchemaLoader.setProperty(str, getProperty(str));
        String str2 = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation";
        this.fSchemaLoader.setProperty(str2, getProperty(str2));
        this.fSchemaLoader.setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource"));
        this.fSchemaLoader.setFeature("http://apache.org/xml/features/validation/schema-full-checking", getFeature("http://apache.org/xml/features/validation/schema-full-checking"));
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fSchemaLoader.loadGrammar(xMLInputSource);
        if (schemaGrammar != null) {
            this.fGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", new Grammar[]{schemaGrammar});
        }
        return schemaGrammar;
    }

    public void unlockGrammarPool() {
        this.fGrammarPool.unlockPool();
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable) {
        this(symbolTable, fStaticGrammarPool, null);
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public Grammar parseGrammar(String str, XMLInputSource xMLInputSource) throws XNIException, IOException {
        if (str.equals("http://www.w3.org/2001/XMLSchema")) {
            return parseXMLSchema(xMLInputSource);
        }
        if (str.equals("http://www.w3.org/TR/REC-xml")) {
            return parseDTD(xMLInputSource);
        }
        return null;
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        XMLSchemaLoader xMLSchemaLoader = new XMLSchemaLoader(this.fSymbolTable);
        this.fSchemaLoader = xMLSchemaLoader;
        xMLSchemaLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", this.fGrammarPool);
        this.fDTDLoader = new XMLDTDLoader(this.fSymbolTable, this.fGrammarPool);
    }
}
