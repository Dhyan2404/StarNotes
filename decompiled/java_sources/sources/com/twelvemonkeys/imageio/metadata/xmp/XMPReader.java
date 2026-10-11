package com.twelvemonkeys.imageio.metadata.xmp;

import com.sunia.HTREnginev2.vbl;
import com.sunia.HTREnginev2.ylo;
import com.sunia.HTREnginev2.zlo;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.MetadataReader;
import com.twelvemonkeys.imageio.util.IIOUtil;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public final class XMPReader extends MetadataReader {

    /* renamed from: com.twelvemonkeys.imageio.metadata.xmp.XMPReader$a */
    /* loaded from: classes10.dex */
    public class C16952a implements Iterable<Node> {

        /* renamed from: e */
        public final /* synthetic */ NamedNodeMap f94060e;

        /* renamed from: com.twelvemonkeys.imageio.metadata.xmp.XMPReader$a$a */
        /* loaded from: classes10.dex */
        public class a implements Iterator<Node> {

            /* renamed from: e */
            public int f94062e;

            public a() {
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Node next() {
                NamedNodeMap namedNodeMap = C16952a.this.f94060e;
                int i = this.f94062e;
                this.f94062e = i + 1;
                return namedNodeMap.item(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                NamedNodeMap namedNodeMap = C16952a.this.f94060e;
                return namedNodeMap != null && namedNodeMap.getLength() > this.f94062e;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Method remove not supported");
            }
        }

        public C16952a(NamedNodeMap namedNodeMap) {
            this.f94060e = namedNodeMap;
        }

        @Override // java.lang.Iterable
        public Iterator<Node> iterator() {
            return new a();
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.metadata.xmp.XMPReader$b */
    /* loaded from: classes10.dex */
    public class C16953b implements Iterable<Node> {

        /* renamed from: e */
        public final /* synthetic */ NodeList f94064e;

        /* renamed from: com.twelvemonkeys.imageio.metadata.xmp.XMPReader$b$a */
        /* loaded from: classes10.dex */
        public class a implements Iterator<Node> {

            /* renamed from: e */
            public int f94066e;

            public a() {
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Node next() {
                NodeList nodeList = C16953b.this.f94064e;
                int i = this.f94066e;
                this.f94066e = i + 1;
                return nodeList.item(i);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                NodeList nodeList = C16953b.this.f94064e;
                return nodeList != null && nodeList.getLength() > this.f94066e;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Method remove not supported");
            }
        }

        public C16953b(NodeList nodeList) {
            this.f94064e = nodeList;
        }

        @Override // java.lang.Iterable
        public Iterator<Node> iterator() {
            return new a();
        }
    }

    /* renamed from: a */
    public final Iterable<? extends Node> m60490a(NamedNodeMap namedNodeMap) {
        return new C16952a(namedNodeMap);
    }

    /* renamed from: b */
    public final Iterable<? extends Node> m60491b(NodeList nodeList) {
        return new C16953b(nodeList);
    }

    /* renamed from: c */
    public final Object m60492c(Node node) {
        Node next;
        Iterator<? extends Node> it2 = m60491b(node.getChildNodes()).iterator();
        while (true) {
            if (!it2.hasNext()) {
                if (m60494e(node)) {
                    return m60495f(node);
                }
                Node firstChild = node.getFirstChild();
                String nodeValue = firstChild != null ? firstChild.getNodeValue() : null;
                return nodeValue != null ? nodeValue.trim() : "";
            }
            next = it2.next();
            if (XMP.NS_RDF.equals(next.getNamespaceURI()) && "Alt".equals(next.getLocalName())) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Node node2 : m60491b(next.getChildNodes())) {
                    if (XMP.NS_RDF.equals(node2.getNamespaceURI()) && "li".equals(node2.getLocalName())) {
                        Node namedItem = node2.getAttributes().getNamedItem("xml:lang");
                        linkedHashMap.put(namedItem == null ? null : namedItem.getTextContent(), m60492c(node2));
                    }
                }
                return linkedHashMap;
            }
            if (!XMP.NS_RDF.equals(next.getNamespaceURI()) || (!"Seq".equals(next.getLocalName()) && !"Bag".equals(next.getLocalName()))) {
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Node node3 : m60491b(next.getChildNodes())) {
            if (XMP.NS_RDF.equals(node3.getNamespaceURI()) && "li".equals(node3.getLocalName())) {
                arrayList.add(m60492c(node3));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: d */
    public final String m60493d(Document document) {
        Node namedItemNS;
        NodeList elementsByTagNameNS = document.getElementsByTagNameNS(XMP.NS_X, "xmpmeta");
        if (elementsByTagNameNS == null || elementsByTagNameNS.getLength() <= 0 || (namedItemNS = elementsByTagNameNS.item(0).getAttributes().getNamedItemNS(XMP.NS_X, "xmptk")) == null) {
            return null;
        }
        return namedItemNS.getNodeValue();
    }

    /* renamed from: e */
    public final boolean m60494e(Node node) {
        Node namedItemNS = node.getAttributes().getNamedItemNS(XMP.NS_RDF, "parseType");
        return namedItemNS != null && "Resource".equals(namedItemNS.getNodeValue());
    }

    /* renamed from: f */
    public final vbl m60495f(Node node) {
        ArrayList arrayList = new ArrayList();
        for (Node node2 : m60491b(node.getChildNodes())) {
            if (node2.getNodeType() == 1) {
                arrayList.add(new zlo(node2.getNamespaceURI() + node2.getLocalName(), node2.getLocalName(), m60492c(node2)));
            }
        }
        return new vbl(arrayList);
    }

    /* renamed from: g */
    public final void m60496g(Map<String, List<Entry>> map, Node node) {
        for (Node node2 : m60490a(node.getAttributes())) {
            if (XMP.ELEMENTS.contains(node2.getNamespaceURI())) {
                List<Entry> list = map.get(node2.getNamespaceURI());
                if (list == null) {
                    list = new ArrayList<>();
                    map.put(node2.getNamespaceURI(), list);
                }
                list.add(new zlo(node2.getNamespaceURI() + node2.getLocalName(), node2.getLocalName(), node2.getNodeValue()));
            }
        }
    }

    /* renamed from: h */
    public final ylo m60497h(Node node, NodeList nodeList, String str) {
        Object m60492c;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Node node2 : m60491b(nodeList)) {
            if (node2.getParentNode() == node) {
                m60496g(linkedHashMap, node2);
                for (Node node3 : m60491b(node2.getChildNodes())) {
                    if (node3.getNodeType() == 1) {
                        List<Entry> list = linkedHashMap.get(node3.getNamespaceURI());
                        if (list == null) {
                            list = new ArrayList<>();
                            linkedHashMap.put(node3.getNamespaceURI(), list);
                        }
                        if (m60494e(node3)) {
                            m60492c = m60495f(node3);
                        } else {
                            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                            m60496g(linkedHashMap2, node3);
                            if (linkedHashMap2.isEmpty()) {
                                m60492c = m60492c(node3);
                            } else {
                                ArrayList arrayList = new ArrayList();
                                Iterator<Map.Entry<String, List<Entry>>> it2 = linkedHashMap2.entrySet().iterator();
                                while (it2.hasNext()) {
                                    arrayList.addAll(it2.next().getValue());
                                }
                                m60492c = new vbl(arrayList);
                            }
                        }
                        list.add(new zlo(node3.getNamespaceURI() + node3.getLocalName(), node3.getLocalName(), m60492c));
                    }
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<String, List<Entry>> entry : linkedHashMap.entrySet()) {
            arrayList2.add(new vbl(entry.getKey(), entry.getValue()));
        }
        return new ylo(arrayList2, str);
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataReader
    public Directory read(ImageInputStream imageInputStream) throws IOException {
        Validate.notNull(imageInputStream, "input");
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setNamespaceAware(true);
        try {
            Document parse = newInstance.newDocumentBuilder().parse(new InputSource(IIOUtil.createStreamAdapter(imageInputStream)));
            return m60497h(parse.getElementsByTagNameNS(XMP.NS_RDF, "RDF").item(0), parse.getElementsByTagNameNS(XMP.NS_RDF, "Description"), m60493d(parse));
        } catch (ParserConfigurationException e) {
            throw new RuntimeException(e);
        } catch (SAXException e2) {
            throw new IIOException(e2.getMessage(), e2);
        }
    }
}
