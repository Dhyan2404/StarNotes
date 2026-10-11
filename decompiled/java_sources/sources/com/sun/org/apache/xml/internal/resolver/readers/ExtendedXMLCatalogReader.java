package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogEntry;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import com.sun.org.apache.xml.internal.resolver.Resolver;
import java.util.Stack;
import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ExtendedXMLCatalogReader extends OASISXMLCatalogReader {
    public static final String extendedNamespaceName = "http://nwalsh.com/xcatalog/1.0";

    @Override // com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader, com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        super.endElement(str, str2, str3);
        boolean inExtensionNamespace = inExtensionNamespace();
        Vector vector = new Vector();
        if (str == null || !extendedNamespaceName.equals(str) || inExtensionNamespace) {
            return;
        }
        String str4 = (String) this.baseURIStack.pop();
        String str5 = (String) this.baseURIStack.peek();
        if (str5.equals(str4)) {
            return;
        }
        int i = Catalog.BASE;
        vector.add(str5);
        this.debug.message(4, "(reset) xml:base", str5);
        try {
            ((OASISXMLCatalogReader) this).catalog.addEntry(new CatalogEntry(i, vector));
        } catch (CatalogException e) {
            if (e.getExceptionType() == 3) {
                this.debug.message(1, "Invalid catalog entry type", str2);
            } else if (e.getExceptionType() == 2) {
                this.debug.message(1, "Invalid catalog entry (rbase)", str2);
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader, com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        int i;
        boolean inExtensionNamespace = inExtensionNamespace();
        super.startElement(str, str2, str3, attributes);
        Vector vector = new Vector();
        if (str == null || !extendedNamespaceName.equals(str) || inExtensionNamespace) {
            return;
        }
        if (attributes.getValue("xml:base") != null) {
            String value = attributes.getValue("xml:base");
            int i2 = Catalog.BASE;
            vector.add(value);
            this.baseURIStack.push(value);
            this.debug.message(4, "xml:base", value);
            try {
                ((OASISXMLCatalogReader) this).catalog.addEntry(new CatalogEntry(i2, vector));
            } catch (CatalogException e) {
                if (e.getExceptionType() == 3) {
                    this.debug.message(1, "Invalid catalog entry type", str2);
                } else if (e.getExceptionType() == 2) {
                    this.debug.message(1, "Invalid catalog entry (base)", str2);
                }
            }
            vector = new Vector();
        } else {
            Stack stack = this.baseURIStack;
            stack.push(stack.peek());
        }
        if (str2.equals("uriSuffix")) {
            if (checkAttributes(attributes, "suffix", "uri")) {
                i = Resolver.URISUFFIX;
                vector.add(attributes.getValue("suffix"));
                vector.add(attributes.getValue("uri"));
                this.debug.message(4, "uriSuffix", attributes.getValue("suffix"), attributes.getValue("uri"));
            }
            i = -1;
        } else {
            if (!str2.equals("systemSuffix")) {
                this.debug.message(1, "Invalid catalog entry type", str2);
            } else if (checkAttributes(attributes, "suffix", "uri")) {
                i = Resolver.SYSTEMSUFFIX;
                vector.add(attributes.getValue("suffix"));
                vector.add(attributes.getValue("uri"));
                this.debug.message(4, "systemSuffix", attributes.getValue("suffix"), attributes.getValue("uri"));
            }
            i = -1;
        }
        if (i >= 0) {
            try {
                ((OASISXMLCatalogReader) this).catalog.addEntry(new CatalogEntry(i, vector));
            } catch (CatalogException e2) {
                if (e2.getExceptionType() == 3) {
                    this.debug.message(1, "Invalid catalog entry type", str2);
                } else if (e2.getExceptionType() == 2) {
                    this.debug.message(1, "Invalid catalog entry", str2);
                }
            }
        }
    }
}
