package com.sun.org.apache.xml.internal.resolver.readers;

import com.google.protobuf.C6883t;
import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogEntry;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;
import java.util.Vector;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XCatalogReader extends SAXCatalogReader implements SAXCatalogParser {
    protected Catalog catalog;

    public XCatalogReader(SAXParserFactory sAXParserFactory) {
        super(sAXParserFactory);
        this.catalog = null;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
    }

    public Catalog getCatalog() {
        return this.catalog;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogParser
    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int i;
        Vector vector = new Vector();
        if (str2.equals("Base")) {
            i = Catalog.BASE;
            vector.add(attributes.getValue("HRef"));
            this.catalog.getCatalogManager().debug.message(4, "Base", attributes.getValue("HRef"));
        } else if (str2.equals("Delegate")) {
            i = Catalog.DELEGATE_PUBLIC;
            vector.add(attributes.getValue("PublicId"));
            vector.add(attributes.getValue("HRef"));
            this.catalog.getCatalogManager().debug.message(4, "Delegate", PublicId.normalize(attributes.getValue("PublicId")), attributes.getValue("HRef"));
        } else if (str2.equals("Extend")) {
            i = Catalog.CATALOG;
            vector.add(attributes.getValue("HRef"));
            this.catalog.getCatalogManager().debug.message(4, "Extend", attributes.getValue("HRef"));
        } else if (str2.equals(C6883t.f38149c)) {
            i = Catalog.PUBLIC;
            vector.add(attributes.getValue("PublicId"));
            vector.add(attributes.getValue("HRef"));
            this.catalog.getCatalogManager().debug.message(4, C6883t.f38149c, PublicId.normalize(attributes.getValue("PublicId")), attributes.getValue("HRef"));
        } else if (str2.equals("Remap")) {
            i = Catalog.SYSTEM;
            vector.add(attributes.getValue("SystemId"));
            vector.add(attributes.getValue("HRef"));
            this.catalog.getCatalogManager().debug.message(4, "Remap", attributes.getValue("SystemId"), attributes.getValue("HRef"));
        } else {
            if (!str2.equals("XMLCatalog")) {
                this.catalog.getCatalogManager().debug.message(1, "Invalid catalog entry type", str2);
            }
            i = -1;
        }
        if (i >= 0) {
            try {
                this.catalog.addEntry(new CatalogEntry(i, vector));
            } catch (CatalogException e) {
                if (e.getExceptionType() == 3) {
                    this.catalog.getCatalogManager().debug.message(1, "Invalid catalog entry type", str2);
                } else if (e.getExceptionType() == 2) {
                    this.catalog.getCatalogManager().debug.message(1, "Invalid catalog entry", str2);
                }
            }
        }
    }
}
