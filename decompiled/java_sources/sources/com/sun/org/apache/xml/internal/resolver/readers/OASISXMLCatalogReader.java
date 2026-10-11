package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogEntry;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import java.util.Enumeration;
import java.util.Stack;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class OASISXMLCatalogReader extends SAXCatalogReader implements SAXCatalogParser {
    public static final String namespaceName = "urn:oasis:names:tc:entity:xmlns:xml:catalog";
    public static final String tr9401NamespaceName = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog";
    protected Catalog catalog = null;
    protected Stack baseURIStack = new Stack();
    protected Stack overrideStack = new Stack();
    protected Stack namespaceStack = new Stack();

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
    }

    public boolean checkAttributes(Attributes attributes, String str) {
        if (attributes.getValue(str) != null) {
            return true;
        }
        this.debug.message(1, "Error: required attribute " + str + " missing.");
        return false;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        Vector vector = new Vector();
        boolean inExtensionNamespace = inExtensionNamespace();
        if (str != null && !inExtensionNamespace && ("urn:oasis:names:tc:entity:xmlns:xml:catalog".equals(str) || "urn:oasis:names:tc:entity:xmlns:tr9401:catalog".equals(str))) {
            String str4 = (String) this.baseURIStack.pop();
            String str5 = (String) this.baseURIStack.peek();
            if (!str5.equals(str4)) {
                int i = Catalog.BASE;
                vector.add(str5);
                this.debug.message(4, "(reset) xml:base", str5);
                try {
                    this.catalog.addEntry(new CatalogEntry(i, vector));
                } catch (CatalogException e) {
                    if (e.getExceptionType() == 3) {
                        this.debug.message(1, "Invalid catalog entry type", str2);
                    } else if (e.getExceptionType() == 2) {
                        this.debug.message(1, "Invalid catalog entry (rbase)", str2);
                    }
                }
            }
        }
        if (str != null && "urn:oasis:names:tc:entity:xmlns:xml:catalog".equals(str) && !inExtensionNamespace && (str2.equals("catalog") || str2.equals("group"))) {
            String str6 = (String) this.overrideStack.pop();
            String str7 = (String) this.overrideStack.peek();
            if (!str7.equals(str6)) {
                int i2 = Catalog.OVERRIDE;
                vector.add(str7);
                this.overrideStack.push(str7);
                this.debug.message(4, "(reset) override", str7);
                try {
                    this.catalog.addEntry(new CatalogEntry(i2, vector));
                } catch (CatalogException e2) {
                    if (e2.getExceptionType() == 3) {
                        this.debug.message(1, "Invalid catalog entry type", str2);
                    } else if (e2.getExceptionType() == 2) {
                        this.debug.message(1, "Invalid catalog entry (roverride)", str2);
                    }
                }
            }
        }
        this.namespaceStack.pop();
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    public Catalog getCatalog() {
        return this.catalog;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
    }

    public boolean inExtensionNamespace() {
        Enumeration elements = this.namespaceStack.elements();
        boolean z = false;
        while (!z && elements.hasMoreElements()) {
            String str = (String) elements.nextElement();
            boolean z2 = true;
            if (str != null && (str.equals("urn:oasis:names:tc:entity:xmlns:tr9401:catalog") || str.equals("urn:oasis:names:tc:entity:xmlns:xml:catalog"))) {
                z2 = false;
            }
            z = z2;
        }
        return z;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogParser
    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
        this.debug = catalog.getCatalogManager().debug;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        this.baseURIStack.push(this.catalog.getCurrentBase());
        this.overrideStack.push(this.catalog.getDefaultOverride());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:154|(1:156)(2:170|(1:172)(5:173|158|159|160|161))|157|158|159|160|161) */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x00e5, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x00eb, code lost:
    
        if (r0.getExceptionType() == 3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x00ed, code lost:
    
        r19.debug.message(1, "Invalid catalog entry type", r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x00fa, code lost:
    
        if (r0.getExceptionType() == 2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x00fc, code lost:
    
        r19.debug.message(1, "Invalid catalog entry (override)", r21);
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x033b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(java.lang.String r20, java.lang.String r21, java.lang.String r22, org.xml.sax.Attributes r23) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 1190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
    }

    public boolean checkAttributes(Attributes attributes, String str, String str2) {
        return checkAttributes(attributes, str) && checkAttributes(attributes, str2);
    }
}
