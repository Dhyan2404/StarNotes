package org.apache.xerces.parsers;

import java.io.IOException;
import org.apache.xerces.impl.dtd.DTDGrammar;
import org.apache.xerces.impl.dtd.XMLDTDLoader;
import org.apache.xerces.impl.p117xs.SchemaGrammar;
import org.apache.xerces.impl.p117xs.XMLSchemaLoader;
import org.apache.xerces.impl.p117xs.XSMessageFormatter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.SynchronizedSymbolTable;
import org.apache.xerces.util.XMLGrammarPoolImpl;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLEntityResolver;
import org.apache.xerces.xni.parser.XMLInputSource;

/* loaded from: classes13.dex */
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

    /* renamed from: c */
    public DTDGrammar m70554c(XMLInputSource xMLInputSource) throws IOException {
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

    @Override // org.apache.xerces.parsers.XML11Configuration, org.apache.xerces.util.ParserConfigurationSettings
    public void checkFeature(String str) throws XMLConfigurationException {
        super.checkFeature(str);
    }

    @Override // org.apache.xerces.parsers.XML11Configuration, org.apache.xerces.util.ParserConfigurationSettings
    public void checkProperty(String str) throws XMLConfigurationException {
        super.checkProperty(str);
    }

    public void clearGrammarPool() {
        this.fGrammarPool.clear();
    }

    /* renamed from: d */
    public SchemaGrammar m70555d(XMLInputSource xMLInputSource) throws IOException {
        XMLEntityResolver entityResolver = getEntityResolver();
        if (entityResolver != null) {
            this.fSchemaLoader.setEntityResolver(entityResolver);
        }
        if (this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/xml-schema-1") == null) {
            this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        }
        this.fSchemaLoader.setProperty("http://apache.org/xml/properties/internal/error-reporter", this.fErrorReporter);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("http://apache.org/xml/properties/");
        stringBuffer.append("schema/external-schemaLocation");
        String stringBuffer2 = stringBuffer.toString();
        this.fSchemaLoader.setProperty(stringBuffer2, getProperty(stringBuffer2));
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("http://apache.org/xml/properties/");
        stringBuffer3.append("schema/external-noNamespaceSchemaLocation");
        String stringBuffer4 = stringBuffer3.toString();
        this.fSchemaLoader.setProperty(stringBuffer4, getProperty(stringBuffer4));
        this.fSchemaLoader.setProperty("http://java.sun.com/xml/jaxp/properties/schemaSource", getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource"));
        this.fSchemaLoader.setFeature("http://apache.org/xml/features/validation/schema-full-checking", getFeature("http://apache.org/xml/features/validation/schema-full-checking"));
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fSchemaLoader.loadGrammar(xMLInputSource);
        if (schemaGrammar != null) {
            this.fGrammarPool.cacheGrammars("http://www.w3.org/2001/XMLSchema", new Grammar[]{schemaGrammar});
        }
        return schemaGrammar;
    }

    public void lockGrammarPool() {
        this.fGrammarPool.lockPool();
    }

    public Grammar parseGrammar(String str, String str2) throws XNIException, IOException {
        return parseGrammar(str, new XMLInputSource(null, str2, null));
    }

    public void unlockGrammarPool() {
        this.fGrammarPool.unlockPool();
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable) {
        this(symbolTable, fStaticGrammarPool, null);
    }

    public Grammar parseGrammar(String str, XMLInputSource xMLInputSource) throws XNIException, IOException {
        if (str.equals("http://www.w3.org/2001/XMLSchema")) {
            return m70555d(xMLInputSource);
        }
        if (str.equals("http://www.w3.org/TR/REC-xml")) {
            return m70554c(xMLInputSource);
        }
        return null;
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        this(symbolTable, xMLGrammarPool, null);
    }

    public XMLGrammarCachingConfiguration(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLComponentManager xMLComponentManager) {
        super(symbolTable, xMLGrammarPool, xMLComponentManager);
        XMLSchemaLoader xMLSchemaLoader = new XMLSchemaLoader(this.fSymbolTable);
        this.fSchemaLoader = xMLSchemaLoader;
        xMLSchemaLoader.setProperty("http://apache.org/xml/properties/internal/grammar-pool", this.fGrammarPool);
        this.fDTDLoader = new XMLDTDLoader(this.fSymbolTable, this.fGrammarPool);
    }
}
