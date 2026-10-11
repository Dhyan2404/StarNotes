package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;

/* loaded from: classes10.dex */
public abstract class XMLGrammarParser extends XMLParser {
    protected DTDDVFactory fDatatypeValidatorFactory;

    public XMLGrammarParser(SymbolTable symbolTable) {
        super((XMLParserConfiguration) ObjectFactory.createObject("com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration", "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }
}
