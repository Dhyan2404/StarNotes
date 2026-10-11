package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;

/* loaded from: classes10.dex */
public class XMLDocumentParser extends AbstractXMLDocumentParser {
    public XMLDocumentParser() {
        super((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
    }

    public XMLDocumentParser(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
    }

    public XMLDocumentParser(SymbolTable symbolTable) {
        super((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }

    public XMLDocumentParser(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        super((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPool);
    }
}
