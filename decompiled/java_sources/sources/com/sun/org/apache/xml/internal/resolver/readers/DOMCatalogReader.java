package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import com.sun.org.apache.xml.internal.resolver.helpers.Namespaces;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class DOMCatalogReader implements CatalogReader {
    protected Hashtable namespaceMap = new Hashtable();

    public String getCatalogParser(String str, String str2) {
        if (str == null) {
            return (String) this.namespaceMap.get(str2);
        }
        return (String) this.namespaceMap.get("{" + str + "}" + str2);
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    public void readCatalog(Catalog catalog, InputStream inputStream) throws IOException, CatalogException {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(false);
        newInstance.setValidating(false);
        try {
            try {
                Element documentElement = newInstance.newDocumentBuilder().parse(inputStream).getDocumentElement();
                String namespaceURI = Namespaces.getNamespaceURI(documentElement);
                String localName = Namespaces.getLocalName(documentElement);
                String catalogParser = getCatalogParser(namespaceURI, localName);
                if (catalogParser != null) {
                    try {
                        DOMCatalogParser dOMCatalogParser = (DOMCatalogParser) Class.forName(catalogParser).newInstance();
                        for (Node firstChild = documentElement.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                            dOMCatalogParser.parseCatalogEntry(catalog, firstChild);
                        }
                        return;
                    } catch (ClassCastException unused) {
                        catalog.getCatalogManager().debug.message(1, "Cannot cast XML Catalog Parser class", catalogParser);
                        throw new CatalogException(6);
                    } catch (ClassNotFoundException unused2) {
                        catalog.getCatalogManager().debug.message(1, "Cannot load XML Catalog Parser class", catalogParser);
                        throw new CatalogException(6);
                    } catch (IllegalAccessException unused3) {
                        catalog.getCatalogManager().debug.message(1, "Cannot access XML Catalog Parser class", catalogParser);
                        throw new CatalogException(6);
                    } catch (InstantiationException unused4) {
                        catalog.getCatalogManager().debug.message(1, "Cannot instantiate XML Catalog Parser class", catalogParser);
                        throw new CatalogException(6);
                    }
                }
                if (namespaceURI == null) {
                    catalog.getCatalogManager().debug.message(1, "No Catalog parser for " + localName);
                    return;
                }
                catalog.getCatalogManager().debug.message(1, "No Catalog parser for {" + namespaceURI + "}" + localName);
            } catch (SAXException unused5) {
                throw new CatalogException(5);
            }
        } catch (ParserConfigurationException unused6) {
            throw new CatalogException(6);
        }
    }

    public void setCatalogParser(String str, String str2, String str3) {
        if (str == null) {
            this.namespaceMap.put(str2, str3);
            return;
        }
        this.namespaceMap.put("{" + str + "}" + str2, str3);
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    public void readCatalog(Catalog catalog, String str) throws MalformedURLException, IOException, CatalogException {
        readCatalog(catalog, new URL(str).openConnection().getInputStream());
    }
}
