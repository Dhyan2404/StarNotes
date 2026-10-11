package org.jsoup.helper;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Stack;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public class W3CDom {
    protected DocumentBuilderFactory factory;

    /* loaded from: classes13.dex */
    public static class W3CBuilder implements NodeVisitor {

        /* renamed from: d */
        public static final String f114023d = "xmlns";

        /* renamed from: e */
        public static final String f114024e = "xmlns:";

        /* renamed from: a */
        public final Document f114025a;

        /* renamed from: b */
        public final Stack<HashMap<String, String>> f114026b;

        /* renamed from: c */
        public Element f114027c;

        public W3CBuilder(Document document) {
            Stack<HashMap<String, String>> stack = new Stack<>();
            this.f114026b = stack;
            this.f114025a = document;
            stack.push(new HashMap<>());
        }

        /* renamed from: a */
        public final String m71093a(org.jsoup.nodes.Element element) {
            Iterator<Attribute> it2 = element.attributes().iterator();
            while (true) {
                String str = "";
                if (!it2.hasNext()) {
                    break;
                }
                Attribute next = it2.next();
                String key = next.getKey();
                if (!key.equals("xmlns")) {
                    if (key.startsWith("xmlns:")) {
                        str = key.substring(6);
                    }
                }
                this.f114026b.peek().put(str, next.getValue());
            }
            int indexOf = element.tagName().indexOf(":");
            return indexOf > 0 ? element.tagName().substring(0, indexOf) : "";
        }

        /* renamed from: b */
        public final void m71094b(Node node, Element element) {
            Iterator<Attribute> it2 = node.attributes().iterator();
            while (it2.hasNext()) {
                Attribute next = it2.next();
                String replaceAll = next.getKey().replaceAll("[^-a-zA-Z0-9_:.]", "");
                if (replaceAll.matches("[a-zA-Z_:][-a-zA-Z0-9_:.]*")) {
                    element.setAttribute(replaceAll, next.getValue());
                }
            }
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            Document document;
            String wholeData;
            org.w3c.dom.Node createComment;
            this.f114026b.push(new HashMap<>(this.f114026b.peek()));
            if (node instanceof org.jsoup.nodes.Element) {
                org.jsoup.nodes.Element element = (org.jsoup.nodes.Element) node;
                String str = this.f114026b.peek().get(m71093a(element));
                String tagName = element.tagName();
                Element createElementNS = (str == null && tagName.contains(":")) ? this.f114025a.createElementNS("", tagName) : this.f114025a.createElementNS(str, tagName);
                m71094b(element, createElementNS);
                org.w3c.dom.Node node2 = this.f114027c;
                if (node2 == null) {
                    node2 = this.f114025a;
                }
                node2.appendChild(createElementNS);
                this.f114027c = createElementNS;
                return;
            }
            if (node instanceof TextNode) {
                document = this.f114025a;
                wholeData = ((TextNode) node).getWholeText();
            } else if (node instanceof Comment) {
                createComment = this.f114025a.createComment(((Comment) node).getData());
                this.f114027c.appendChild(createComment);
            } else {
                if (!(node instanceof DataNode)) {
                    return;
                }
                document = this.f114025a;
                wholeData = ((DataNode) node).getWholeData();
            }
            createComment = document.createTextNode(wholeData);
            this.f114027c.appendChild(createComment);
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            if ((node instanceof org.jsoup.nodes.Element) && (this.f114027c.getParentNode() instanceof Element)) {
                this.f114027c = (Element) this.f114027c.getParentNode();
            }
            this.f114026b.pop();
        }
    }

    public W3CDom() {
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        this.factory = newInstance;
        newInstance.setNamespaceAware(true);
    }

    public static HashMap<String, String> OutputHtml() {
        return m71091a("html");
    }

    public static HashMap<String, String> OutputXml() {
        return m71091a("xml");
    }

    /* renamed from: a */
    public static HashMap<String, String> m71091a(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", str);
        return hashMap;
    }

    /* renamed from: b */
    public static Properties m71092b(Map<String, String> map) {
        Properties properties = new Properties();
        properties.putAll(map);
        return properties;
    }

    public static Document convert(org.jsoup.nodes.Document document) {
        return new W3CDom().fromJsoup(document);
    }

    public String asString(Document document) {
        return asString(document, null);
    }

    public Document fromJsoup(org.jsoup.nodes.Document document) {
        Validate.notNull(document);
        try {
            DocumentBuilder newDocumentBuilder = this.factory.newDocumentBuilder();
            DOMImplementation dOMImplementation = newDocumentBuilder.getDOMImplementation();
            Document newDocument = newDocumentBuilder.newDocument();
            DocumentType documentType = document.documentType();
            if (documentType != null) {
                newDocument.appendChild(dOMImplementation.createDocumentType(documentType.name(), documentType.publicId(), documentType.systemId()));
            }
            newDocument.setXmlStandalone(true);
            convert(document, newDocument);
            return newDocument;
        } catch (ParserConfigurationException e) {
            throw new IllegalStateException(e);
        }
    }

    public static String asString(Document document, Map<String, String> map) {
        String str;
        try {
            DOMSource dOMSource = new DOMSource(document);
            StringWriter stringWriter = new StringWriter();
            StreamResult streamResult = new StreamResult(stringWriter);
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            if (map != null) {
                newTransformer.setOutputProperties(m71092b(map));
            }
            if (document.getDoctype() != null) {
                org.w3c.dom.DocumentType doctype = document.getDoctype();
                if (!StringUtil.isBlank(doctype.getPublicId())) {
                    newTransformer.setOutputProperty("doctype-public", doctype.getPublicId());
                }
                if (!StringUtil.isBlank(doctype.getSystemId())) {
                    str = doctype.getSystemId();
                } else if (doctype.getName().equalsIgnoreCase("html") && StringUtil.isBlank(doctype.getPublicId()) && StringUtil.isBlank(doctype.getSystemId())) {
                    str = "about:legacy-compat";
                }
                newTransformer.setOutputProperty("doctype-system", str);
            }
            newTransformer.transform(dOMSource, streamResult);
            return stringWriter.toString();
        } catch (TransformerException e) {
            throw new IllegalStateException(e);
        }
    }

    public void convert(org.jsoup.nodes.Document document, Document document2) {
        if (!StringUtil.isBlank(document.location())) {
            document2.setDocumentURI(document.location());
        }
        NodeTraversor.traverse(new W3CBuilder(document2), document.child(0));
    }
}
