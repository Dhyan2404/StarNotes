package com.sun.org.apache.xpath.internal;

import com.sun.org.apache.xml.internal.dtm.DTMWSFilter;
import com.sun.org.apache.xml.internal.utils.SystemIDResolver;
import java.io.IOException;
import java.util.Vector;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import javax.xml.transform.Source;
import javax.xml.transform.SourceLocator;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

/* loaded from: classes10.dex */
public class SourceTreeManager {
    private Vector m_sourceTree = new Vector();
    URIResolver m_uriResolver;

    public static XMLReader getXMLReader(Source source, SourceLocator sourceLocator) throws TransformerException {
        try {
            XMLReader xMLReader = source instanceof SAXSource ? ((SAXSource) source).getXMLReader() : null;
            if (xMLReader == null) {
                try {
                    SAXParserFactory newInstance = SAXParserFactory.newInstance();
                    newInstance.setNamespaceAware(true);
                    xMLReader = newInstance.newSAXParser().getXMLReader();
                } catch (AbstractMethodError | NoSuchMethodError unused) {
                } catch (FactoryConfigurationError e) {
                    throw new SAXException(e.toString());
                } catch (ParserConfigurationException e2) {
                    throw new SAXException(e2);
                }
                if (xMLReader == null) {
                    xMLReader = XMLReaderFactory.createXMLReader();
                }
            }
            try {
                xMLReader.setFeature("http://xml.org/sax/features/namespace-prefixes", true);
            } catch (SAXException unused2) {
            }
            return xMLReader;
        } catch (SAXException e3) {
            throw new TransformerException(e3.getMessage(), sourceLocator, e3);
        }
    }

    public String findURIFromDoc(int i) {
        int size = this.m_sourceTree.size();
        for (int i2 = 0; i2 < size; i2++) {
            SourceTree sourceTree = (SourceTree) this.m_sourceTree.elementAt(i2);
            if (i == sourceTree.m_root) {
                return sourceTree.m_url;
            }
        }
        return null;
    }

    public int getNode(Source source) {
        String systemId = source.getSystemId();
        if (systemId == null) {
            return -1;
        }
        int size = this.m_sourceTree.size();
        for (int i = 0; i < size; i++) {
            SourceTree sourceTree = (SourceTree) this.m_sourceTree.elementAt(i);
            if (systemId.equals(sourceTree.m_url)) {
                return sourceTree.m_root;
            }
        }
        return -1;
    }

    public int getSourceTree(String str, String str2, SourceLocator sourceLocator, XPathContext xPathContext) throws TransformerException {
        try {
            return getSourceTree(resolveURI(str, str2, sourceLocator), sourceLocator, xPathContext);
        } catch (IOException e) {
            throw new TransformerException(e.getMessage(), sourceLocator, e);
        }
    }

    public URIResolver getURIResolver() {
        return this.m_uriResolver;
    }

    public int parseToNode(Source source, SourceLocator sourceLocator, XPathContext xPathContext) throws TransformerException {
        try {
            Object ownerObject = xPathContext.getOwnerObject();
            return ((ownerObject == null || !(ownerObject instanceof DTMWSFilter)) ? xPathContext.getDTM(source, false, null, false, true) : xPathContext.getDTM(source, false, (DTMWSFilter) ownerObject, false, true)).getDocument();
        } catch (Exception e) {
            throw new TransformerException(e.getMessage(), sourceLocator, e);
        }
    }

    public void putDocumentInCache(int i, Source source) {
        int node = getNode(source);
        if (-1 == node) {
            if (source.getSystemId() != null) {
                this.m_sourceTree.addElement(new SourceTree(i, source.getSystemId()));
            }
        } else {
            if (node == i) {
                return;
            }
            throw new RuntimeException("Programmer's Error!  putDocumentInCache found reparse of doc: " + source.getSystemId());
        }
    }

    public void removeDocumentFromCache(int i) {
        if (-1 == i) {
            return;
        }
        for (int size = this.m_sourceTree.size() - 1; size >= 0; size--) {
            SourceTree sourceTree = (SourceTree) this.m_sourceTree.elementAt(size);
            if (sourceTree != null && sourceTree.m_root == i) {
                this.m_sourceTree.removeElementAt(size);
                return;
            }
        }
    }

    public void reset() {
        this.m_sourceTree = new Vector();
    }

    public Source resolveURI(String str, String str2, SourceLocator sourceLocator) throws TransformerException, IOException {
        URIResolver uRIResolver = this.m_uriResolver;
        Source resolve = uRIResolver != null ? uRIResolver.resolve(str2, str) : null;
        return resolve == null ? new StreamSource(SystemIDResolver.getAbsoluteURI(str2, str)) : resolve;
    }

    public void setURIResolver(URIResolver uRIResolver) {
        this.m_uriResolver = uRIResolver;
    }

    public int getSourceTree(Source source, SourceLocator sourceLocator, XPathContext xPathContext) throws TransformerException {
        int node = getNode(source);
        if (-1 != node) {
            return node;
        }
        int parseToNode = parseToNode(source, sourceLocator, xPathContext);
        if (-1 != parseToNode) {
            putDocumentInCache(parseToNode, source);
        }
        return parseToNode;
    }
}
