package com.sun.org.apache.xalan.internal.serialize;

import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xml.internal.dtm.DTM;
import com.sun.org.apache.xml.internal.serializer.NamespaceMappings;
import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
import com.sun.org.apache.xpath.internal.XPathContext;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class SerializerUtils {
    public static void addAttribute(SerializationHandler serializationHandler, int i) throws TransformerException {
        DTM dtm = ((TransformerImpl) serializationHandler.getTransformer()).getXPathContext().getDTM(i);
        if (isDefinedNSDecl(serializationHandler, i, dtm)) {
            return;
        }
        String namespaceURI = dtm.getNamespaceURI(i);
        if (namespaceURI == null) {
            namespaceURI = "";
        }
        try {
            serializationHandler.addAttribute(namespaceURI, dtm.getLocalName(i), dtm.getNodeName(i), "CDATA", dtm.getNodeValue(i), false);
        } catch (SAXException unused) {
        }
    }

    public static void addAttributes(SerializationHandler serializationHandler, int i) throws TransformerException {
        DTM dtm = ((TransformerImpl) serializationHandler.getTransformer()).getXPathContext().getDTM(i);
        for (int firstAttribute = dtm.getFirstAttribute(i); -1 != firstAttribute; firstAttribute = dtm.getNextAttribute(firstAttribute)) {
            addAttribute(serializationHandler, firstAttribute);
        }
    }

    public static void ensureNamespaceDeclDeclared(SerializationHandler serializationHandler, DTM dtm, int i) throws SAXException {
        NamespaceMappings namespaceMappings;
        String nodeValue = dtm.getNodeValue(i);
        String nodeNameX = dtm.getNodeNameX(i);
        if (nodeValue == null || nodeValue.length() <= 0 || nodeNameX == null || (namespaceMappings = serializationHandler.getNamespaceMappings()) == null) {
            return;
        }
        String lookupNamespace = namespaceMappings.lookupNamespace(nodeNameX);
        if (lookupNamespace == null || !lookupNamespace.equals(nodeValue)) {
            serializationHandler.startPrefixMapping(nodeNameX, nodeValue, false);
        }
    }

    public static boolean isDefinedNSDecl(SerializationHandler serializationHandler, int i, DTM dtm) {
        String namespaceURIFromPrefix;
        return 13 == dtm.getNodeType(i) && (namespaceURIFromPrefix = serializationHandler.getNamespaceURIFromPrefix(dtm.getNodeNameX(i))) != null && namespaceURIFromPrefix.equals(dtm.getStringValue(i));
    }

    public static void outputResultTreeFragment(SerializationHandler serializationHandler, XObject xObject, XPathContext xPathContext) throws SAXException {
        int rtf = xObject.rtf();
        DTM dtm = xPathContext.getDTM(rtf);
        if (dtm != null) {
            for (int firstChild = dtm.getFirstChild(rtf); -1 != firstChild; firstChild = dtm.getNextSibling(firstChild)) {
                serializationHandler.flushPending();
                if (dtm.getNodeType(firstChild) == 1 && dtm.getNamespaceURI(firstChild) == null) {
                    serializationHandler.startPrefixMapping("", "");
                }
                dtm.dispatchToEvents(firstChild, serializationHandler);
            }
        }
    }

    public static void processNSDecls(SerializationHandler serializationHandler, int i, int i2, DTM dtm) throws TransformerException {
        try {
            if (i2 == 1) {
                int firstNamespaceNode = dtm.getFirstNamespaceNode(i, true);
                while (-1 != firstNamespaceNode) {
                    String nodeNameX = dtm.getNodeNameX(firstNamespaceNode);
                    String namespaceURIFromPrefix = serializationHandler.getNamespaceURIFromPrefix(nodeNameX);
                    String nodeValue = dtm.getNodeValue(firstNamespaceNode);
                    if (!nodeValue.equalsIgnoreCase(namespaceURIFromPrefix)) {
                        serializationHandler.startPrefixMapping(nodeNameX, nodeValue, false);
                    }
                    firstNamespaceNode = dtm.getNextNamespaceNode(i, firstNamespaceNode, true);
                }
                return;
            }
            if (i2 == 13) {
                String nodeNameX2 = dtm.getNodeNameX(i);
                String namespaceURIFromPrefix2 = serializationHandler.getNamespaceURIFromPrefix(nodeNameX2);
                String nodeValue2 = dtm.getNodeValue(i);
                if (nodeValue2.equalsIgnoreCase(namespaceURIFromPrefix2)) {
                    return;
                }
                serializationHandler.startPrefixMapping(nodeNameX2, nodeValue2, false);
            }
        } catch (SAXException e) {
            throw new TransformerException(e);
        }
    }
}
