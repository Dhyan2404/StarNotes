package org.xmlresolver.tools;

import java.util.function.Supplier;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlresolver.Resolver;
import org.xmlresolver.ResolverFeature;

/* loaded from: classes16.dex */
public class ResolvingXMLReader extends ResolvingXMLFilter {
    public ResolvingXMLReader() {
        m72024a(null);
    }

    /* renamed from: a */
    public final void m72024a(SAXParserFactory sAXParserFactory) {
        if (sAXParserFactory != null) {
            try {
                sAXParserFactory.setNamespaceAware(true);
                sAXParserFactory.setValidating(false);
                setParent(sAXParserFactory.newSAXParser().getXMLReader());
                return;
            } catch (ParserConfigurationException | SAXException e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            }
        }
        Supplier supplier = (Supplier) this.resolver.getConfiguration().getFeature(ResolverFeature.XMLREADER_SUPPLIER);
        if (supplier != null) {
            setParent((XMLReader) supplier.get());
            return;
        }
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(true);
        newInstance.setValidating(false);
        try {
            setParent(newInstance.newSAXParser().getXMLReader());
        } catch (Exception e2) {
            e2.printStackTrace();
            throw new RuntimeException(e2);
        }
    }

    public ResolvingXMLReader(SAXParserFactory sAXParserFactory) {
        m72024a(sAXParserFactory);
    }

    public ResolvingXMLReader(Resolver resolver) {
        super(resolver);
        m72024a(null);
    }

    public ResolvingXMLReader(SAXParserFactory sAXParserFactory, Resolver resolver) {
        super(resolver);
        m72024a(sAXParserFactory);
    }
}
