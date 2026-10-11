package org.apache.xerces.parsers;

import org.apache.xerces.impl.p115dv.DTDDVFactory;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.parser.XMLParserConfiguration;

/* loaded from: classes13.dex */
public abstract class XMLGrammarParser extends XMLParser {
    protected DTDDVFactory fDatatypeValidatorFactory;

    public XMLGrammarParser(SymbolTable symbolTable) {
        super((XMLParserConfiguration) ObjectFactory.m70533a("org.apache.xerces.xni.parser.XMLParserConfiguration", "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"));
        this.fConfiguration.setProperty("http://apache.org/xml/properties/internal/symbol-table", symbolTable);
    }
}
