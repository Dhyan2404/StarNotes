package org.apache.xerces.impl.dtd;

import org.apache.xerces.impl.XML11DTDScannerImpl;
import org.apache.xerces.impl.XMLDTDScannerImpl;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.xni.grammars.XMLGrammarPool;
import org.apache.xerces.xni.parser.XMLEntityResolver;

/* loaded from: classes13.dex */
public class XML11DTDProcessor extends XMLDTDLoader {
    public XML11DTDProcessor() {
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDLoader
    public XMLDTDScannerImpl createDTDScanner(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        return new XML11DTDScannerImpl(symbolTable, xMLErrorReporter, xMLEntityManager);
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDLoader
    public short getScannerVersion() {
        return (short) 2;
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor
    public boolean isValidName(String str) {
        return XML11Char.isXML11ValidName(str);
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDProcessor
    public boolean isValidNmtoken(String str) {
        return XML11Char.isXML11ValidNmtoken(str);
    }

    public XML11DTDProcessor(SymbolTable symbolTable) {
        super(symbolTable);
    }

    public XML11DTDProcessor(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool) {
        super(symbolTable, xMLGrammarPool);
    }

    public XML11DTDProcessor(SymbolTable symbolTable, XMLGrammarPool xMLGrammarPool, XMLErrorReporter xMLErrorReporter, XMLEntityResolver xMLEntityResolver) {
        super(symbolTable, xMLGrammarPool, xMLErrorReporter, xMLEntityResolver);
    }
}
