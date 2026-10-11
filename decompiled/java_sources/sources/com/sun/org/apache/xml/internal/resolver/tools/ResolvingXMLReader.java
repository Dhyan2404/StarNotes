package com.sun.org.apache.xml.internal.resolver.tools;

import com.sun.org.apache.xml.internal.resolver.CatalogManager;
import javax.xml.parsers.SAXParserFactory;

/* loaded from: classes10.dex */
public class ResolvingXMLReader extends ResolvingXMLFilter {
    public static boolean namespaceAware = true;
    public static boolean validating;

    public ResolvingXMLReader() {
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(namespaceAware);
        newInstance.setValidating(validating);
        try {
            setParent(newInstance.newSAXParser().getXMLReader());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResolvingXMLReader(CatalogManager catalogManager) {
        super(catalogManager);
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        newInstance.setNamespaceAware(namespaceAware);
        newInstance.setValidating(validating);
        try {
            setParent(newInstance.newSAXParser().getXMLReader());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
