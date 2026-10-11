package org.apache.poi.poifs.crypt.dsig;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.apache.poi.poifs.crypt.dsig.SignatureMarshalDefaultListener;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.events.EventTarget;
import org.w3c.dom.traversal.DocumentTraversal;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes12.dex */
public class SignatureMarshalDefaultListener implements SignatureMarshalListener {
    private static final String OBJECT_TAG = "Object";
    private static final Set<String> IGNORE_NS = new HashSet(Arrays.asList(null, "http://www.w3.org/2000/xmlns/", SignatureFacet.XML_DIGSIG_NS));
    private static final List<String> DIRECT_NS = Arrays.asList("http://schemas.openxmlformats.org/package/2006/digital-signature", SignatureFacet.MS_DIGSIG_NS);

    private static void forEachElement(NodeList nodeList, Consumer<Element> consumer) {
        int length = nodeList.getLength();
        for (int i = 0; i < length; i++) {
            Node item = nodeList.item(i);
            if (item instanceof Element) {
                consumer.accept((Element) item);
            }
        }
    }

    private void getAllNamespaces(DocumentTraversal documentTraversal, Element element, Map<String, String> map, Map<String, String> map2) {
        map2.clear();
        NodeIterator createNodeIterator = documentTraversal.createNodeIterator(element, 1, null, false);
        while (true) {
            try {
                Element element2 = (Element) createNodeIterator.nextNode();
                if (element2 == null) {
                    return;
                }
                setPrefix(element2, map, map2);
                NamedNodeMap attributes = element2.getAttributes();
                int length = attributes.getLength();
                for (int i = 0; i < length; i++) {
                    setPrefix(attributes.item(i), map, map2);
                }
            } finally {
                createNodeIterator.detach();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleElement$2(final DocumentTraversal documentTraversal, final Map map, final Map map2, Element element) {
        forEachElement(element.getChildNodes(), new Consumer() { // from class: com.sunia.HTREnginev2.nqm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SignatureMarshalDefaultListener.this.lambda$null$1(documentTraversal, map, map2, (Element) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$null$1(DocumentTraversal documentTraversal, Map map, Map map2, final Element element) {
        getAllNamespaces(documentTraversal, element, map, map2);
        map2.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.lqm
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SignatureMarshalDefaultListener.setXmlns(Element.this, (String) obj2, (String) obj);
            }
        });
    }

    private void setPrefix(Node node, Map<String, String> map, Map<String, String> map2) {
        String namespaceURI = node.getNamespaceURI();
        String str = map.get(namespaceURI);
        if (IGNORE_NS.contains(namespaceURI)) {
            return;
        }
        if (str != null) {
            node.setPrefix(str);
        }
        if (DIRECT_NS.contains(namespaceURI)) {
            setXmlns(node, str, namespaceURI);
        } else {
            map2.put(namespaceURI, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setXmlns(Node node, String str, String str2) {
        String str3;
        if (!(node instanceof Element) || str2.equals(node.getParentNode().getNamespaceURI())) {
            return;
        }
        Element element = (Element) node;
        StringBuilder sb = new StringBuilder();
        sb.append("xmlns");
        if (str == null) {
            str3 = "";
        } else {
            str3 = ":" + str;
        }
        sb.append(str3);
        element.setAttributeNS("http://www.w3.org/2000/xmlns/", sb.toString(), str2);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.SignatureMarshalListener
    public void handleElement(SignatureInfo signatureInfo, Document document, EventTarget eventTarget, EventListener eventListener) {
        final DocumentTraversal documentTraversal = (DocumentTraversal) document;
        final Map<String, String> namespacePrefixes = signatureInfo.getSignatureConfig().getNamespacePrefixes();
        final HashMap hashMap = new HashMap();
        forEachElement(document.getElementsByTagName(OBJECT_TAG), new Consumer() { // from class: com.sunia.HTREnginev2.mqm
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SignatureMarshalDefaultListener.this.lambda$handleElement$2(documentTraversal, namespacePrefixes, hashMap, (Element) obj);
            }
        });
    }
}
