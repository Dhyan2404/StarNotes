package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl;
import com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.xml.internal.stream.dtd.DTDGrammarUtil;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XML11NSDocumentScannerImpl extends XML11DocumentScannerImpl {
    protected boolean fBindNamespaces;
    private XMLDTDValidatorFilter fDTDValidator;
    protected boolean fPerformValidation;
    private boolean fSawSpace;

    /* loaded from: classes10.dex */
    public final class NS11ContentDriver extends XMLDocumentScannerImpl.ContentDriver {
        public NS11ContentDriver() {
            super();
        }

        private void reconfigurePipeline() {
            if (XML11NSDocumentScannerImpl.this.fDTDValidator == null) {
                XML11NSDocumentScannerImpl.this.fBindNamespaces = true;
                return;
            }
            if (XML11NSDocumentScannerImpl.this.fDTDValidator.hasGrammar()) {
                return;
            }
            XML11NSDocumentScannerImpl xML11NSDocumentScannerImpl = XML11NSDocumentScannerImpl.this;
            xML11NSDocumentScannerImpl.fBindNamespaces = true;
            xML11NSDocumentScannerImpl.fPerformValidation = xML11NSDocumentScannerImpl.fDTDValidator.validate();
            XMLDocumentSource documentSource = XML11NSDocumentScannerImpl.this.fDTDValidator.getDocumentSource();
            XMLDocumentHandler documentHandler = XML11NSDocumentScannerImpl.this.fDTDValidator.getDocumentHandler();
            documentSource.setDocumentHandler(documentHandler);
            if (documentHandler != null) {
                documentHandler.setDocumentSource(documentSource);
            }
            XML11NSDocumentScannerImpl.this.fDTDValidator.setDocumentSource(null);
            XML11NSDocumentScannerImpl.this.fDTDValidator.setDocumentHandler(null);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl.ContentDriver, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public boolean scanRootElementHook() throws IOException, XNIException {
            XML11NSDocumentScannerImpl xML11NSDocumentScannerImpl = XML11NSDocumentScannerImpl.this;
            if (xML11NSDocumentScannerImpl.fExternalSubsetResolver == null || xML11NSDocumentScannerImpl.fSeenDoctypeDecl || xML11NSDocumentScannerImpl.fDisallowDoctype || !(xML11NSDocumentScannerImpl.fValidation || xML11NSDocumentScannerImpl.fLoadExternalDTD)) {
                reconfigurePipeline();
                if (!XML11NSDocumentScannerImpl.this.scanStartElement()) {
                    return false;
                }
                XML11NSDocumentScannerImpl.this.setScannerState(44);
                XML11NSDocumentScannerImpl xML11NSDocumentScannerImpl2 = XML11NSDocumentScannerImpl.this;
                xML11NSDocumentScannerImpl2.setDriver(xML11NSDocumentScannerImpl2.fTrailingMiscDriver);
                return true;
            }
            xML11NSDocumentScannerImpl.scanStartElementName();
            resolveExternalSubsetAndRead();
            reconfigurePipeline();
            if (!XML11NSDocumentScannerImpl.this.scanStartElementAfterName()) {
                return false;
            }
            XML11NSDocumentScannerImpl.this.setScannerState(44);
            XML11NSDocumentScannerImpl xML11NSDocumentScannerImpl3 = XML11NSDocumentScannerImpl.this;
            xML11NSDocumentScannerImpl3.setDriver(xML11NSDocumentScannerImpl3.fTrailingMiscDriver);
            return true;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public XMLDocumentFragmentScannerImpl.Driver createContentDriver() {
        return new NS11ContentDriver();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner
    public int next() throws IOException, XNIException {
        if (this.fScannerLastState == 2 && this.fBindNamespaces) {
            this.fScannerLastState = -1;
            this.fNamespaceContext.popContext();
        }
        int next = super.next();
        this.fScannerLastState = next;
        return next;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fPerformValidation = false;
        this.fBindNamespaces = false;
    }

    public void scanAttribute(XMLAttributesImpl xMLAttributesImpl) throws IOException, XNIException {
        int i;
        this.fEntityScanner.scanQName(this.fAttributeQName);
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(61)) {
            reportFatalError("EqRequiredInAttribute", new Object[]{this.fCurrentElement.rawname, this.fAttributeQName.rawname});
        }
        this.fEntityScanner.skipSpaces();
        if (this.fBindNamespaces) {
            i = xMLAttributesImpl.getLength();
            xMLAttributesImpl.addAttributeNS(this.fAttributeQName, XMLSymbols.fCDATASymbol, null);
        } else {
            int length = xMLAttributesImpl.getLength();
            int addAttribute = xMLAttributesImpl.addAttribute(this.fAttributeQName, XMLSymbols.fCDATASymbol, null);
            if (length == xMLAttributesImpl.getLength()) {
                reportFatalError("AttributeNotUnique", new Object[]{this.fCurrentElement.rawname, this.fAttributeQName.rawname});
            }
            i = addAttribute;
        }
        scanAttributeValue(this.fTempString, this.fTempString2, this.fAttributeQName.rawname, this.fHasExternalDTD && !this.fStandalone, this.fCurrentElement.rawname);
        String xMLString = this.fTempString.toString();
        xMLAttributesImpl.setValue(i, xMLString);
        xMLAttributesImpl.setNonNormalizedValue(i, this.fTempString2.toString());
        xMLAttributesImpl.setSpecified(i, true);
        if (this.fBindNamespaces) {
            QName qName = this.fAttributeQName;
            String str = qName.localpart;
            String str2 = qName.prefix;
            String str3 = str2 != null ? str2 : XMLSymbols.EMPTY_STRING;
            String str4 = XMLSymbols.PREFIX_XMLNS;
            if (str3 != str4 && (str3 != XMLSymbols.EMPTY_STRING || str != str4)) {
                if (str2 != null) {
                    xMLAttributesImpl.setURI(i, this.fNamespaceContext.getURI(str2));
                    return;
                }
                return;
            }
            String addSymbol = this.fSymbolTable.addSymbol(xMLString);
            if (str3 == str4 && str == str4) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{this.fAttributeQName}, (short) 2);
            }
            if (addSymbol == NamespaceContext.XMLNS_URI) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{this.fAttributeQName}, (short) 2);
            }
            if (str == XMLSymbols.PREFIX_XML) {
                if (addSymbol != NamespaceContext.XML_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{this.fAttributeQName}, (short) 2);
                }
            } else if (addSymbol == NamespaceContext.XML_URI) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{this.fAttributeQName}, (short) 2);
            }
            if (str == str4) {
                str = XMLSymbols.EMPTY_STRING;
            }
            this.fNamespaceContext.declarePrefix(str, addSymbol.length() != 0 ? addSymbol : null);
            xMLAttributesImpl.setURI(i, this.fNamespaceContext.getURI(str4));
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public int scanEndElement() throws IOException, XNIException {
        QName popElement = this.fElementStack.popElement();
        if (!this.fEntityScanner.skipString(popElement.rawname)) {
            reportFatalError("ETagRequired", new Object[]{popElement.rawname});
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ETagUnterminated", new Object[]{popElement.rawname});
        }
        int i = (this.fMarkupDepth - 1) - 1;
        this.fMarkupDepth = i;
        if (i < this.fEntityStack[this.fEntityDepth - 1]) {
            reportFatalError("ElementEntityMismatch", new Object[]{popElement.rawname});
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endElement(popElement, null);
        }
        DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
        if (dTDGrammarUtil != null) {
            dTDGrammarUtil.endElement(popElement);
        }
        return this.fMarkupDepth;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public boolean scanStartElement() throws IOException, XNIException {
        int i;
        boolean z;
        QName checkDuplicatesNS;
        this.fEntityScanner.scanQName(this.fElementQName);
        String str = this.fElementQName.rawname;
        if (this.fBindNamespaces) {
            this.fNamespaceContext.pushContext();
            if (this.fScannerState == 26 && this.fPerformValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_GRAMMAR_NOT_FOUND", new Object[]{str}, (short) 1);
                String str2 = this.fDoctypeName;
                if (str2 == null || !str2.equals(str)) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "RootElementTypeMustMatchDoctypedecl", new Object[]{this.fDoctypeName, str}, (short) 1);
                }
            }
        }
        this.fCurrentElement = this.fElementStack.pushElement(this.fElementQName);
        this.fAttributes.removeAllAttributes();
        while (true) {
            boolean skipSpaces = this.fEntityScanner.skipSpaces();
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar == 62) {
                this.fEntityScanner.scanChar();
                z = false;
                break;
            }
            if (peekChar == 47) {
                this.fEntityScanner.scanChar();
                if (!this.fEntityScanner.skipChar(62)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                z = true;
            } else {
                if ((!isValidNameStartChar(peekChar) || !skipSpaces) && (!isValidNameStartHighSurrogate(peekChar) || !skipSpaces)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute((XMLAttributesImpl) this.fAttributes);
                if (this.fSecurityManager != null) {
                    int length = this.fAttributes.getLength();
                    int i2 = this.fElementAttributeLimit;
                    if (length > i2) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementAttributeLimit", new Object[]{str, new Integer(i2)}, (short) 2);
                    }
                }
            }
        }
        if (this.fBindNamespaces) {
            QName qName = this.fElementQName;
            if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName.rawname}, (short) 2);
            }
            QName qName2 = this.fElementQName;
            String str3 = qName2.prefix;
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            qName2.uri = this.fNamespaceContext.getURI(str3);
            QName qName3 = this.fCurrentElement;
            QName qName4 = this.fElementQName;
            qName3.uri = qName4.uri;
            if (qName4.prefix == null && qName4.uri != null) {
                String str4 = XMLSymbols.EMPTY_STRING;
                qName4.prefix = str4;
                qName3.prefix = str4;
            }
            String str5 = qName4.prefix;
            if (str5 != null && qName4.uri == null) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{str5, qName4.rawname}, (short) 2);
            }
            int length2 = this.fAttributes.getLength();
            for (i = 0; i < length2; i++) {
                this.fAttributes.getName(i, this.fAttributeQName);
                String str6 = this.fAttributeQName.prefix;
                if (str6 == null) {
                    str6 = XMLSymbols.EMPTY_STRING;
                }
                String uri = this.fNamespaceContext.getURI(str6);
                QName qName5 = this.fAttributeQName;
                String str7 = qName5.uri;
                if ((str7 == null || str7 != uri) && str6 != XMLSymbols.EMPTY_STRING) {
                    qName5.uri = uri;
                    if (uri == null) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{this.fElementQName.rawname, qName5.rawname, str6}, (short) 2);
                    }
                    this.fAttributes.setURI(i, uri);
                }
            }
            if (length2 > 1 && (checkDuplicatesNS = this.fAttributes.checkDuplicatesNS()) != null) {
                String str8 = checkDuplicatesNS.uri;
                if (str8 != null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.localpart, str8}, (short) 2);
                } else {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.rawname}, (short) 2);
                }
            }
        }
        if (z) {
            int i3 = this.fMarkupDepth - 1;
            this.fMarkupDepth = i3;
            if (i3 < this.fEntityStack[this.fEntityDepth - 1]) {
                reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
            }
            this.fDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
            this.fScanEndElement = true;
            this.fElementStack.popElement();
        } else {
            DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
            if (dTDGrammarUtil != null) {
                dTDGrammarUtil.startElement(this.fElementQName, this.fAttributes);
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    public boolean scanStartElementAfterName() throws IOException, XNIException {
        int i;
        boolean z;
        QName checkDuplicatesNS;
        String str = this.fElementQName.rawname;
        if (this.fBindNamespaces) {
            this.fNamespaceContext.pushContext();
            if (this.fScannerState == 26 && this.fPerformValidation) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "MSG_GRAMMAR_NOT_FOUND", new Object[]{str}, (short) 1);
                String str2 = this.fDoctypeName;
                if (str2 == null || !str2.equals(str)) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "RootElementTypeMustMatchDoctypedecl", new Object[]{this.fDoctypeName, str}, (short) 1);
                }
            }
        }
        this.fCurrentElement = this.fElementStack.pushElement(this.fElementQName);
        this.fAttributes.removeAllAttributes();
        while (true) {
            int peekChar = this.fEntityScanner.peekChar();
            if (peekChar == 62) {
                this.fEntityScanner.scanChar();
                z = false;
                break;
            }
            if (peekChar == 47) {
                this.fEntityScanner.scanChar();
                if (!this.fEntityScanner.skipChar(62)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                z = true;
            } else {
                if ((!isValidNameStartChar(peekChar) || !this.fSawSpace) && (!isValidNameStartHighSurrogate(peekChar) || !this.fSawSpace)) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute((XMLAttributesImpl) this.fAttributes);
                this.fSawSpace = this.fEntityScanner.skipSpaces();
            }
        }
        if (this.fBindNamespaces) {
            QName qName = this.fElementQName;
            if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName.rawname}, (short) 2);
            }
            QName qName2 = this.fElementQName;
            String str3 = qName2.prefix;
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            qName2.uri = this.fNamespaceContext.getURI(str3);
            QName qName3 = this.fCurrentElement;
            QName qName4 = this.fElementQName;
            qName3.uri = qName4.uri;
            if (qName4.prefix == null && qName4.uri != null) {
                String str4 = XMLSymbols.EMPTY_STRING;
                qName4.prefix = str4;
                qName3.prefix = str4;
            }
            String str5 = qName4.prefix;
            if (str5 != null && qName4.uri == null) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{str5, qName4.rawname}, (short) 2);
            }
            int length = this.fAttributes.getLength();
            for (i = 0; i < length; i++) {
                this.fAttributes.getName(i, this.fAttributeQName);
                String str6 = this.fAttributeQName.prefix;
                if (str6 == null) {
                    str6 = XMLSymbols.EMPTY_STRING;
                }
                String uri = this.fNamespaceContext.getURI(str6);
                QName qName5 = this.fAttributeQName;
                String str7 = qName5.uri;
                if ((str7 == null || str7 != uri) && str6 != XMLSymbols.EMPTY_STRING) {
                    qName5.uri = uri;
                    if (uri == null) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{this.fElementQName.rawname, qName5.rawname, str6}, (short) 2);
                    }
                    this.fAttributes.setURI(i, uri);
                }
            }
            if (length > 1 && (checkDuplicatesNS = this.fAttributes.checkDuplicatesNS()) != null) {
                String str8 = checkDuplicatesNS.uri;
                if (str8 != null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.localpart, str8}, (short) 2);
                } else {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.rawname}, (short) 2);
                }
            }
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            if (z) {
                int i2 = this.fMarkupDepth - 1;
                this.fMarkupDepth = i2;
                if (i2 < this.fEntityStack[this.fEntityDepth - 1]) {
                    reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
                }
                this.fDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
                if (this.fBindNamespaces) {
                    this.fNamespaceContext.popContext();
                }
                this.fElementStack.popElement();
            } else {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    public void scanStartElementName() throws IOException, XNIException {
        this.fEntityScanner.scanQName(this.fElementQName);
        this.fSawSpace = this.fEntityScanner.skipSpaces();
    }

    public void setDTDValidator(XMLDTDValidatorFilter xMLDTDValidatorFilter) {
        this.fDTDValidator = xMLDTDValidatorFilter;
    }
}
