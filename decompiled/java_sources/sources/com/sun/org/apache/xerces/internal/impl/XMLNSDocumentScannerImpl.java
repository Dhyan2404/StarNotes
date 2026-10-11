package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl;
import com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidatorFilter;
import com.sun.org.apache.xerces.internal.util.XMLAttributesImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.xml.internal.stream.dtd.DTDGrammarUtil;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XMLNSDocumentScannerImpl extends XMLDocumentScannerImpl {
    protected boolean fBindNamespaces;
    private XMLDTDValidatorFilter fDTDValidator;
    protected boolean fPerformValidation;
    protected boolean fNotAddNSDeclAsAttribute = false;
    private boolean fXmlnsDeclared = false;

    /* loaded from: classes10.dex */
    public final class NSContentDriver extends XMLDocumentScannerImpl.ContentDriver {
        public NSContentDriver() {
            super();
        }

        private void reconfigurePipeline() {
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = XMLNSDocumentScannerImpl.this;
            if (xMLNSDocumentScannerImpl.fNamespaces && xMLNSDocumentScannerImpl.fDTDValidator == null) {
                XMLNSDocumentScannerImpl.this.fBindNamespaces = true;
                return;
            }
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl2 = XMLNSDocumentScannerImpl.this;
            if (!xMLNSDocumentScannerImpl2.fNamespaces || xMLNSDocumentScannerImpl2.fDTDValidator.hasGrammar()) {
                return;
            }
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl3 = XMLNSDocumentScannerImpl.this;
            xMLNSDocumentScannerImpl3.fBindNamespaces = true;
            xMLNSDocumentScannerImpl3.fPerformValidation = xMLNSDocumentScannerImpl3.fDTDValidator.validate();
            XMLDocumentSource documentSource = XMLNSDocumentScannerImpl.this.fDTDValidator.getDocumentSource();
            XMLDocumentHandler documentHandler = XMLNSDocumentScannerImpl.this.fDTDValidator.getDocumentHandler();
            documentSource.setDocumentHandler(documentHandler);
            if (documentHandler != null) {
                documentHandler.setDocumentSource(documentSource);
            }
            XMLNSDocumentScannerImpl.this.fDTDValidator.setDocumentSource(null);
            XMLNSDocumentScannerImpl.this.fDTDValidator.setDocumentHandler(null);
        }

        @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl.ContentDriver, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl.FragmentContentDriver
        public boolean scanRootElementHook() throws IOException, XNIException {
            reconfigurePipeline();
            if (!XMLNSDocumentScannerImpl.this.scanStartElement()) {
                return false;
            }
            XMLNSDocumentScannerImpl.this.setScannerState(44);
            XMLNSDocumentScannerImpl xMLNSDocumentScannerImpl = XMLNSDocumentScannerImpl.this;
            xMLNSDocumentScannerImpl.setDriver(xMLNSDocumentScannerImpl.fTrailingMiscDriver);
            return true;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public XMLDocumentFragmentScannerImpl.Driver createContentDriver() {
        return new NSContentDriver();
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

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void reset(PropertyManager propertyManager) {
        setPropertyManager(propertyManager);
        super.reset(propertyManager);
        this.fBindNamespaces = false;
        this.fNotAddNSDeclAsAttribute = !((Boolean) propertyManager.getProperty(Constants.ADD_NAMESPACE_DECL_AS_ATTRIBUTE)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scanAttribute(com.sun.org.apache.xerces.internal.util.XMLAttributesImpl r13) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLNSDocumentScannerImpl.scanAttribute(com.sun.org.apache.xerces.internal.util.XMLAttributesImpl):void");
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl
    public boolean scanStartElement() throws IOException, XNIException {
        QName checkDuplicatesNS;
        if (this.fSkip && !this.fAdd) {
            QName next = this.fElementStack.getNext();
            boolean skipString = this.fEntityScanner.skipString(next.rawname);
            this.fSkip = skipString;
            if (skipString) {
                this.fElementStack.push();
                this.fElementQName = next;
            } else {
                this.fElementStack.reposition();
            }
        }
        if (!this.fSkip || this.fAdd) {
            QName nextElement = this.fElementStack.nextElement();
            this.fElementQName = nextElement;
            if (this.fNamespaces) {
                this.fEntityScanner.scanQName(nextElement);
            } else {
                String scanName = this.fEntityScanner.scanName();
                this.fElementQName.setValues(null, scanName, scanName, null);
            }
        }
        if (this.fAdd) {
            this.fElementStack.matchElement(this.fElementQName);
        }
        QName qName = this.fElementQName;
        this.fCurrentElement = qName;
        String str = qName.rawname;
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
        this.fEmptyElement = false;
        this.fAttributes.removeAllAttributes();
        if (!seekCloseOfStartTag()) {
            this.fReadingAttributes = true;
            this.fAttributeCacheUsedCount = 0;
            this.fStringBufferIndex = 0;
            this.fAddDefaultAttr = true;
            this.fXmlnsDeclared = false;
            do {
                scanAttribute((XMLAttributesImpl) this.fAttributes);
                if (this.fSecurityManager != null && this.fAttributes.getLength() > this.fElementAttributeLimit) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "ElementAttributeLimit", new Object[]{str, new Integer(this.fAttributes.getLength())}, (short) 2);
                }
            } while (!seekCloseOfStartTag());
            this.fReadingAttributes = false;
        }
        if (this.fBindNamespaces) {
            QName qName2 = this.fElementQName;
            if (qName2.prefix == XMLSymbols.PREFIX_XMLNS) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName2.rawname}, (short) 2);
            }
            QName qName3 = this.fElementQName;
            String str3 = qName3.prefix;
            if (str3 == null) {
                str3 = XMLSymbols.EMPTY_STRING;
            }
            qName3.uri = this.fNamespaceContext.getURI(str3);
            QName qName4 = this.fCurrentElement;
            QName qName5 = this.fElementQName;
            qName4.uri = qName5.uri;
            if (qName5.prefix == null && qName5.uri != null) {
                qName5.prefix = XMLSymbols.EMPTY_STRING;
            }
            String str4 = qName5.prefix;
            if (str4 != null && qName5.uri == null) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{str4, qName5.rawname}, (short) 2);
            }
            int length = this.fAttributes.getLength();
            for (int i = 0; i < length; i++) {
                this.fAttributes.getName(i, this.fAttributeQName);
                String str5 = this.fAttributeQName.prefix;
                if (str5 == null) {
                    str5 = XMLSymbols.EMPTY_STRING;
                }
                String uri = this.fNamespaceContext.getURI(str5);
                QName qName6 = this.fAttributeQName;
                String str6 = qName6.uri;
                if ((str6 == null || str6 != uri) && str5 != XMLSymbols.EMPTY_STRING) {
                    qName6.uri = uri;
                    if (uri == null) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{this.fElementQName.rawname, qName6.rawname, str5}, (short) 2);
                    }
                    this.fAttributes.setURI(i, uri);
                }
            }
            if (length > 1 && (checkDuplicatesNS = this.fAttributes.checkDuplicatesNS()) != null) {
                String str7 = checkDuplicatesNS.uri;
                if (str7 != null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.localpart, str7}, (short) 2);
                } else {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNotUnique", new Object[]{this.fElementQName.rawname, checkDuplicatesNS.rawname}, (short) 2);
                }
            }
        }
        if (this.fEmptyElement) {
            int i2 = this.fMarkupDepth - 1;
            this.fMarkupDepth = i2;
            if (i2 < this.fEntityStack[this.fEntityDepth - 1]) {
                reportFatalError("ElementEntityMismatch", new Object[]{this.fCurrentElement.rawname});
            }
            XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
            if (xMLDocumentHandler != null) {
                xMLDocumentHandler.emptyElement(this.fElementQName, this.fAttributes, null);
            }
            this.fScanEndElement = true;
            this.fElementStack.popElement();
        } else {
            DTDGrammarUtil dTDGrammarUtil = this.dtdGrammarUtil;
            if (dTDGrammarUtil != null) {
                dTDGrammarUtil.startElement(this.fElementQName, this.fAttributes);
            }
            XMLDocumentHandler xMLDocumentHandler2 = this.fDocumentHandler;
            if (xMLDocumentHandler2 != null) {
                xMLDocumentHandler2.startElement(this.fElementQName, this.fAttributes, null);
            }
        }
        return this.fEmptyElement;
    }

    public void setDTDValidator(XMLDTDValidatorFilter xMLDTDValidatorFilter) {
        this.fDTDValidator = xMLDTDValidatorFilter;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLDocumentFragmentScannerImpl, com.sun.org.apache.xerces.internal.impl.XMLScanner, com.sun.org.apache.xerces.internal.xni.parser.XMLComponent
    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        super.reset(xMLComponentManager);
        this.fNotAddNSDeclAsAttribute = false;
        this.fPerformValidation = false;
        this.fBindNamespaces = false;
    }
}
