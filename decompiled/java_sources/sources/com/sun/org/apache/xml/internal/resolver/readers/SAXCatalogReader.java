package com.sun.org.apache.xml.internal.resolver.readers;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import com.sun.org.apache.xml.internal.resolver.CatalogException;
import com.sun.org.apache.xml.internal.resolver.CatalogManager;
import com.sun.org.apache.xml.internal.resolver.helpers.BootstrapResolver;
import com.sun.org.apache.xml.internal.resolver.helpers.Debug;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.Parser;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class SAXCatalogReader implements CatalogReader, ContentHandler, DocumentHandler {
    private boolean abandonHope;
    private Catalog catalog;
    protected Debug debug;
    protected Hashtable namespaceMap;
    protected String parserClass;
    protected SAXParserFactory parserFactory;
    private SAXCatalogParser saxParser;

    public SAXCatalogReader() {
        this.parserFactory = null;
        this.parserClass = null;
        this.namespaceMap = new Hashtable();
        this.saxParser = null;
        this.abandonHope = false;
        this.debug = CatalogManager.getStaticManager().debug;
        this.parserFactory = null;
        this.parserClass = null;
    }

    public void characters(char[] cArr, int i, int i2) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.characters(cArr, i, i2);
        }
    }

    public void endDocument() throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.endDocument();
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.endElement(str);
        }
    }

    public void endPrefixMapping(String str) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.endPrefixMapping(str);
        }
    }

    public String getCatalogParser(String str, String str2) {
        if (str == null) {
            return (String) this.namespaceMap.get(str2);
        }
        return (String) this.namespaceMap.get("{" + str + "}" + str2);
    }

    public String getParserClass() {
        return this.parserClass;
    }

    public SAXParserFactory getParserFactory() {
        return this.parserFactory;
    }

    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.ignorableWhitespace(cArr, i, i2);
        }
    }

    public void processingInstruction(String str, String str2) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.processingInstruction(str, str2);
        }
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    public void readCatalog(Catalog catalog, String str) throws MalformedURLException, IOException, CatalogException {
        URL url;
        try {
            url = new URL(str);
        } catch (MalformedURLException unused) {
            url = new URL("file:///" + str);
        }
        this.debug = catalog.getCatalogManager().debug;
        try {
            readCatalog(catalog, url.openConnection().getInputStream());
        } catch (FileNotFoundException unused2) {
            catalog.getCatalogManager().debug.message(1, "Failed to load catalog, file not found", url.toString());
        }
    }

    public void setCatalogParser(String str, String str2, String str3) {
        if (str == null) {
            this.namespaceMap.put(str2, str3);
            return;
        }
        this.namespaceMap.put("{" + str + "}" + str2, str3);
    }

    public void setDocumentLocator(Locator locator) {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.setDocumentLocator(locator);
        }
    }

    public void setParserClass(String str) {
        this.parserClass = str;
    }

    public void setParserFactory(SAXParserFactory sAXParserFactory) {
        this.parserFactory = sAXParserFactory;
    }

    public void skippedEntity(String str) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.skippedEntity(str);
        }
    }

    public void startDocument() throws SAXException {
        this.saxParser = null;
        this.abandonHope = false;
    }

    @Override // org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        String value;
        if (this.abandonHope) {
            return;
        }
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser == null) {
            String substring = str.indexOf(58) > 0 ? str.substring(0, str.indexOf(58)) : "";
            String substring2 = str.indexOf(58) > 0 ? str.substring(str.indexOf(58) + 1) : str;
            if (substring.equals("")) {
                value = attributeList.getValue("xmlns");
            } else {
                value = attributeList.getValue("xmlns:" + substring);
            }
            String catalogParser = getCatalogParser(value, substring2);
            if (catalogParser == null) {
                this.abandonHope = true;
                if (value == null) {
                    this.debug.message(2, "No Catalog parser for " + str);
                    return;
                }
                this.debug.message(2, "No Catalog parser for {" + value + "}" + str);
                return;
            }
            try {
                SAXCatalogParser sAXCatalogParser2 = (SAXCatalogParser) Class.forName(catalogParser).newInstance();
                this.saxParser = sAXCatalogParser2;
                sAXCatalogParser2.setCatalog(this.catalog);
                this.saxParser.startDocument();
                this.saxParser.startElement(str, attributeList);
                return;
            } catch (ClassCastException e) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e.toString());
                return;
            } catch (ClassNotFoundException e2) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e2.toString());
                return;
            } catch (IllegalAccessException e3) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e3.toString());
                return;
            } catch (InstantiationException e4) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e4.toString());
                return;
            }
        }
        sAXCatalogParser.startElement(str, attributeList);
    }

    public void startPrefixMapping(String str, String str2) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.startPrefixMapping(str, str2);
        }
    }

    public void endElement(String str, String str2, String str3) throws SAXException {
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser != null) {
            sAXCatalogParser.endElement(str, str2, str3);
        }
    }

    @Override // com.sun.org.apache.xml.internal.resolver.readers.CatalogReader
    public void readCatalog(Catalog catalog, InputStream inputStream) throws IOException, CatalogException {
        if (this.parserFactory == null && this.parserClass == null) {
            this.debug.message(1, "Cannot read SAX catalog without a parser");
            throw new CatalogException(6);
        }
        this.debug = catalog.getCatalogManager().debug;
        BootstrapResolver bootstrapResolver = catalog.getCatalogManager().getBootstrapResolver();
        this.catalog = catalog;
        try {
            SAXParserFactory sAXParserFactory = this.parserFactory;
            if (sAXParserFactory != null) {
                SAXParser newSAXParser = sAXParserFactory.newSAXParser();
                SAXParserHandler sAXParserHandler = new SAXParserHandler();
                sAXParserHandler.setContentHandler(this);
                if (bootstrapResolver != null) {
                    sAXParserHandler.setEntityResolver(bootstrapResolver);
                }
                newSAXParser.parse(new InputSource(inputStream), sAXParserHandler);
                return;
            }
            Parser parser = (Parser) Class.forName(this.parserClass).newInstance();
            parser.setDocumentHandler(this);
            if (bootstrapResolver != null) {
                parser.setEntityResolver(bootstrapResolver);
            }
            parser.parse(new InputSource(inputStream));
        } catch (ClassNotFoundException unused) {
            throw new CatalogException(6);
        } catch (IllegalAccessException unused2) {
            throw new CatalogException(6);
        } catch (InstantiationException unused3) {
            throw new CatalogException(6);
        } catch (ParserConfigurationException unused4) {
            throw new CatalogException(5);
        } catch (SAXException e) {
            Exception exception = e.getException();
            UnknownHostException unknownHostException = new UnknownHostException();
            FileNotFoundException fileNotFoundException = new FileNotFoundException();
            if (exception != null) {
                if (exception.getClass() != unknownHostException.getClass()) {
                    if (exception.getClass() == fileNotFoundException.getClass()) {
                        throw new CatalogException(7, exception.toString());
                    }
                } else {
                    throw new CatalogException(7, exception.toString());
                }
            }
            throw new CatalogException(e);
        }
    }

    public SAXCatalogReader(SAXParserFactory sAXParserFactory) {
        this.parserFactory = null;
        this.parserClass = null;
        this.namespaceMap = new Hashtable();
        this.saxParser = null;
        this.abandonHope = false;
        this.debug = CatalogManager.getStaticManager().debug;
        this.parserFactory = sAXParserFactory;
    }

    public SAXCatalogReader(String str) {
        this.parserFactory = null;
        this.parserClass = null;
        this.namespaceMap = new Hashtable();
        this.saxParser = null;
        this.abandonHope = false;
        this.debug = CatalogManager.getStaticManager().debug;
        this.parserClass = str;
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.abandonHope) {
            return;
        }
        SAXCatalogParser sAXCatalogParser = this.saxParser;
        if (sAXCatalogParser == null) {
            String catalogParser = getCatalogParser(str, str2);
            if (catalogParser == null) {
                this.abandonHope = true;
                if (str == null) {
                    this.debug.message(2, "No Catalog parser for " + str2);
                    return;
                }
                this.debug.message(2, "No Catalog parser for {" + str + "}" + str2);
                return;
            }
            try {
                SAXCatalogParser sAXCatalogParser2 = (SAXCatalogParser) Class.forName(catalogParser).newInstance();
                this.saxParser = sAXCatalogParser2;
                sAXCatalogParser2.setCatalog(this.catalog);
                this.saxParser.startDocument();
                this.saxParser.startElement(str, str2, str3, attributes);
                return;
            } catch (ClassCastException e) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e.toString());
                return;
            } catch (ClassNotFoundException e2) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e2.toString());
                return;
            } catch (IllegalAccessException e3) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e3.toString());
                return;
            } catch (InstantiationException e4) {
                this.saxParser = null;
                this.abandonHope = true;
                this.debug.message(2, e4.toString());
                return;
            }
        }
        sAXCatalogParser.startElement(str, str2, str3, attributes);
    }
}
