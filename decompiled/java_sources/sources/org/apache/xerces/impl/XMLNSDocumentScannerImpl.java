package org.apache.xerces.impl;

import java.io.IOException;
import org.apache.xerces.impl.XMLDocumentFragmentScannerImpl;
import org.apache.xerces.impl.XMLDocumentScannerImpl;
import org.apache.xerces.impl.dtd.XMLDTDValidatorFilter;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLDocumentSource;

/* loaded from: classes13.dex */
public class XMLNSDocumentScannerImpl extends XMLDocumentScannerImpl {
    protected boolean fBindNamespaces;
    protected boolean fPerformValidation;

    /* renamed from: k0 */
    public XMLDTDValidatorFilter f112080k0;

    /* renamed from: q0 */
    public boolean f112081q0;

    /* loaded from: classes13.dex */
    public final class NSContentDispatcher extends XMLDocumentScannerImpl.ContentDispatcher {

        /* renamed from: c */
        public final /* synthetic */ XMLNSDocumentScannerImpl f112082c;

        public NSContentDispatcher(XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl) {
            super(xMLNSDocumentScannerImpl);
            this.f112082c = xMLNSDocumentScannerImpl;
        }

        /* renamed from: a */
        public final void m69859a() {
            if (this.f112082c.f112080k0 == null) {
                this.f112082c.fBindNamespaces = true;
                return;
            }
            if (this.f112082c.f112080k0.hasGrammar()) {
                return;
            }
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = this.f112082c;
            xMLNSDocumentScannerImpl.fBindNamespaces = true;
            xMLNSDocumentScannerImpl.fPerformValidation = xMLNSDocumentScannerImpl.f112080k0.validate();
            XMLDocumentSource documentSource = this.f112082c.f112080k0.getDocumentSource();
            XMLDocumentHandler documentHandler = this.f112082c.f112080k0.getDocumentHandler();
            documentSource.setDocumentHandler(documentHandler);
            if (documentHandler != null) {
                documentHandler.setDocumentSource(documentSource);
            }
            this.f112082c.f112080k0.setDocumentSource(null);
            this.f112082c.f112080k0.setDocumentHandler(null);
        }

        @Override // org.apache.xerces.impl.XMLDocumentScannerImpl.ContentDispatcher, org.apache.xerces.impl.XMLDocumentFragmentScannerImpl.FragmentContentDispatcher
        public boolean scanRootElementHook() throws IOException, XNIException {
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = this.f112082c;
            if (xMLNSDocumentScannerImpl.fExternalSubsetResolver == null || xMLNSDocumentScannerImpl.fSeenDoctypeDecl || xMLNSDocumentScannerImpl.fDisallowDoctype || !(xMLNSDocumentScannerImpl.fValidation || xMLNSDocumentScannerImpl.fLoadExternalDTD)) {
                m69859a();
                if (!this.f112082c.scanStartElement()) {
                    return false;
                }
            } else {
                xMLNSDocumentScannerImpl.scanStartElementName();
                resolveExternalSubsetAndRead();
                m69859a();
                if (!this.f112082c.scanStartElementAfterName()) {
                    return false;
                }
            }
            this.f112082c.setScannerState(12);
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl2 = this.f112082c;
            xMLNSDocumentScannerImpl2.setDispatcher(xMLNSDocumentScannerImpl2.fTrailingMiscDispatcher);
            return true;
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentScannerImpl, org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public XMLDocumentFragmentScannerImpl.Dispatcher createContentDispatcher() {
        return new NSContentDispatcher(this);
    }

    @Override // org.apache.xerces.impl.XMLDocumentScannerImpl, org.apache.xerces.impl.XMLDocumentFragmentScannerImpl, org.apache.xerces.impl.XMLScanner, org.apache.xerces.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fPerformValidation = false;
        this.fBindNamespaces = false;
    }

    public void scanAttribute(XMLAttributesImpl xMLAttributesImpl) throws IOException, XNIException {
        int i;
        String uri;
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
        boolean scanAttributeValue = scanAttributeValue(this.fTempString, this.fTempString2, this.fAttributeQName.rawname, this.fIsEntityDeclaredVC, this.fCurrentElement.rawname);
        String xMLString = this.fTempString.toString();
        xMLAttributesImpl.setValue(i, xMLString);
        if (!scanAttributeValue) {
            xMLAttributesImpl.setNonNormalizedValue(i, this.fTempString2.toString());
        }
        xMLAttributesImpl.setSpecified(i, true);
        if (this.fBindNamespaces) {
            QName qName = this.fAttributeQName;
            String str = qName.localpart;
            String str2 = qName.prefix;
            String str3 = str2 != null ? str2 : XMLSymbols.EMPTY_STRING;
            String str4 = XMLSymbols.PREFIX_XMLNS;
            if (str3 == str4 || (str3 == XMLSymbols.EMPTY_STRING && str == str4)) {
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
                String str5 = str != str4 ? str : XMLSymbols.EMPTY_STRING;
                if (addSymbol == XMLSymbols.EMPTY_STRING && str != str4) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "EmptyPrefixedAttName", new Object[]{this.fAttributeQName}, (short) 2);
                }
                this.fNamespaceContext.declarePrefix(str5, addSymbol.length() != 0 ? addSymbol : null);
                uri = this.fNamespaceContext.getURI(str4);
            } else if (str2 == null) {
                return;
            } else {
                uri = this.fNamespaceContext.getURI(str2);
            }
            xMLAttributesImpl.setURI(i, uri);
        }
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public int scanEndElement() throws IOException, XNIException {
        this.fElementStack.popElement(this.fElementQName);
        if (!this.fEntityScanner.skipString(this.fElementQName.rawname)) {
            reportFatalError("ETagRequired", new Object[]{this.fElementQName.rawname});
        }
        this.fEntityScanner.skipSpaces();
        if (!this.fEntityScanner.skipChar(62)) {
            reportFatalError("ETagUnterminated", new Object[]{this.fElementQName.rawname});
        }
        int i = (this.fMarkupDepth - 1) - 1;
        this.fMarkupDepth = i;
        if (i < this.fEntityStack[this.fEntityDepth - 1]) {
            reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null) {
            xMLDocumentHandler.endElement(this.fElementQName, null);
            if (this.fBindNamespaces) {
                this.fNamespaceContext.popContext();
            }
        }
        return this.fMarkupDepth;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public boolean scanStartElement() throws IOException, XNIException {
        int i;
        boolean z;
        QName checkDuplicatesNS;
        this.fEntityScanner.scanQName(this.fElementQName);
        String str = this.fElementQName.rawname;
        if (this.fBindNamespaces) {
            this.fNamespaceContext.pushContext();
            if (this.fScannerState == 6 && this.fPerformValidation) {
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
                if (!isValidNameStartChar(peekChar) || !skipSpaces) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute(this.fAttributes);
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
                this.fElementStack.popElement(this.fElementQName);
            } else {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public boolean scanStartElementAfterName() throws IOException, XNIException {
        int i;
        boolean z;
        QName checkDuplicatesNS;
        String str = this.fElementQName.rawname;
        if (this.fBindNamespaces) {
            this.fNamespaceContext.pushContext();
            if (this.fScannerState == 6 && this.fPerformValidation) {
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
                if (!isValidNameStartChar(peekChar) || !this.f112081q0) {
                    reportFatalError("ElementUnterminated", new Object[]{str});
                }
                scanAttribute(this.fAttributes);
                this.f112081q0 = this.fEntityScanner.skipSpaces();
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
                this.fElementStack.popElement(this.fElementQName);
            } else {
                xMLDocumentHandler.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return z;
    }

    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    public void scanStartElementName() throws IOException, XNIException {
        this.fEntityScanner.scanQName(this.fElementQName);
        this.f112081q0 = this.fEntityScanner.skipSpaces();
    }

    public void setDTDValidator(XMLDTDValidatorFilter xMLDTDValidatorFilter) {
        this.f112080k0 = xMLDTDValidatorFilter;
    }
}
