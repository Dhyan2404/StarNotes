package org.apache.xerces.parsers;

import org.apache.xerces.impl.dtd.DTDGrammar;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.XMLDTDContentModelHandler;
import org.apache.xerces.xni.XMLDTDHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLDTDContentModelSource;
import org.apache.xerces.xni.parser.XMLDTDScanner;
import org.apache.xerces.xni.parser.XMLDTDSource;

/* loaded from: classes13.dex */
public abstract class DTDParser extends XMLGrammarParser implements XMLDTDHandler, XMLDTDContentModelHandler {
    protected XMLDTDScanner fDTDScanner;

    public DTDParser(SymbolTable symbolTable) {
        super(symbolTable);
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void any(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
    }

    public void childrenElement(String str) throws XNIException {
    }

    public void childrenEndGroup() throws XNIException {
    }

    public void childrenOccurrence(short s) throws XNIException {
    }

    public void childrenSeparator(short s) throws XNIException {
    }

    public void childrenStartGroup() throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void element(String str, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void empty(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
    }

    public void endContentModel() throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void endContentModel(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
    }

    public void endEntity(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void endGroup(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract void endParameterEntity(String str, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract XMLDTDContentModelSource getDTDContentModelSource();

    public DTDGrammar getDTDGrammar() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract XMLDTDSource getDTDSource();

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
    }

    public void mixedElement(String str) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void occurrence(short s, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void pcdata(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void separator(short s, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void setDTDContentModelSource(XMLDTDContentModelSource xMLDTDContentModelSource);

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract void setDTDSource(XMLDTDSource xMLDTDSource);

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void startContentModel(String str, Augmentations augmentations) throws XNIException;

    public void startContentModel(String str, short s) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
    }

    public void startEntity(String str, String str2, String str3, String str4) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDContentModelHandler
    public abstract void startGroup(Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException;

    public void textDecl(String str, String str2) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public abstract void textDecl(String str, String str2, Augmentations augmentations) throws XNIException;

    @Override // org.apache.xerces.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }
}
