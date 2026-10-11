package org.apache.xerces.impl.dtd;

import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XNIException;

/* loaded from: classes13.dex */
public class XMLNSDTDValidator extends XMLDTDValidator {

    /* renamed from: t0 */
    public final QName f112224t0 = new QName();

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidator
    public void endNamespaceScope(QName qName, Augmentations augmentations, boolean z) throws XNIException {
        String str = qName.prefix;
        if (str == null) {
            str = XMLSymbols.EMPTY_STRING;
        }
        String uri = this.fNamespaceContext.getURI(str);
        qName.uri = uri;
        if (uri != null) {
            qName.prefix = str;
        }
        XMLDocumentHandler xMLDocumentHandler = this.fDocumentHandler;
        if (xMLDocumentHandler != null && !z) {
            xMLDocumentHandler.endElement(qName, augmentations);
        }
        this.fNamespaceContext.popContext();
    }

    @Override // org.apache.xerces.impl.dtd.XMLDTDValidator
    public final void startNamespaceScope(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        this.fNamespaceContext.pushContext();
        if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementXMLNSPrefix", new Object[]{qName.rawname}, (short) 2);
        }
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            String localName = xMLAttributes.getLocalName(i);
            String prefix = xMLAttributes.getPrefix(i);
            String str = XMLSymbols.PREFIX_XMLNS;
            if (prefix == str || (prefix == XMLSymbols.EMPTY_STRING && localName == str)) {
                String addSymbol = this.fSymbolTable.addSymbol(xMLAttributes.getValue(i));
                if (prefix == str && localName == str) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                if (addSymbol == NamespaceContext.XMLNS_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXMLNS", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                if (localName == XMLSymbols.PREFIX_XML) {
                    if (addSymbol != NamespaceContext.XML_URI) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                    }
                } else if (addSymbol == NamespaceContext.XML_URI) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "CantBindXML", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
                String str2 = localName != str ? localName : XMLSymbols.EMPTY_STRING;
                if (addSymbol != XMLSymbols.EMPTY_STRING || localName == str) {
                    NamespaceContext namespaceContext = this.fNamespaceContext;
                    if (addSymbol.length() == 0) {
                        addSymbol = null;
                    }
                    namespaceContext.declarePrefix(str2, addSymbol);
                } else {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "EmptyPrefixedAttName", new Object[]{xMLAttributes.getQName(i)}, (short) 2);
                }
            }
        }
        String str3 = qName.prefix;
        if (str3 == null) {
            str3 = XMLSymbols.EMPTY_STRING;
        }
        String uri = this.fNamespaceContext.getURI(str3);
        qName.uri = uri;
        if (qName.prefix == null && uri != null) {
            qName.prefix = XMLSymbols.EMPTY_STRING;
        }
        String str4 = qName.prefix;
        if (str4 != null && uri == null) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "ElementPrefixUnbound", new Object[]{str4, qName.rawname}, (short) 2);
        }
        for (int i2 = 0; i2 < length; i2++) {
            xMLAttributes.getName(i2, this.f112224t0);
            QName qName2 = this.f112224t0;
            String str5 = qName2.prefix;
            if (str5 == null) {
                str5 = XMLSymbols.EMPTY_STRING;
            }
            String str6 = qName2.rawname;
            String str7 = XMLSymbols.PREFIX_XMLNS;
            if (str6 == str7) {
                qName2.uri = this.fNamespaceContext.getURI(str7);
            } else if (str5 != XMLSymbols.EMPTY_STRING) {
                qName2.uri = this.fNamespaceContext.getURI(str5);
                if (this.f112224t0.uri == null) {
                    this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributePrefixUnbound", new Object[]{qName.rawname, str6, str5}, (short) 2);
                }
            }
            xMLAttributes.setName(i2, this.f112224t0);
        }
        int length2 = xMLAttributes.getLength();
        for (int i3 = 0; i3 < length2 - 1; i3++) {
            String uri2 = xMLAttributes.getURI(i3);
            if (uri2 != null && uri2 != NamespaceContext.XMLNS_URI) {
                String localName2 = xMLAttributes.getLocalName(i3);
                for (int i4 = i3 + 1; i4 < length2; i4++) {
                    String localName3 = xMLAttributes.getLocalName(i4);
                    String uri3 = xMLAttributes.getURI(i4);
                    if (localName2 == localName3 && uri2 == uri3) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1999/REC-xml-names-19990114", "AttributeNSNotUnique", new Object[]{qName.rawname, localName2, uri2}, (short) 2);
                    }
                }
            }
        }
    }
}
