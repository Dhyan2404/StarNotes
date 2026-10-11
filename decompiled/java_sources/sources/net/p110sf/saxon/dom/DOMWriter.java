package net.p110sf.saxon.dom;

import java.util.Stack;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.Whitespace;
import org.w3c.dom.Attr;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes11.dex */
public class DOMWriter extends Builder {

    /* renamed from: f */
    public PipelineConfiguration f98907f;

    /* renamed from: g */
    public Node f98908g;

    /* renamed from: h */
    public Document f98909h;

    /* renamed from: i */
    public Node f98910i;

    /* renamed from: j */
    public int f98911j = 0;

    /* renamed from: k */
    public boolean f98912k = true;

    /* renamed from: l */
    public String f98913l;

    /* renamed from: m */
    public final Stack<NamespaceMap> f98914m;

    public DOMWriter() {
        Stack<NamespaceMap> stack = new Stack<>();
        this.f98914m = stack;
        stack.push(NamespaceMap.emptyMap());
    }

    /* renamed from: a */
    public final NamespaceMap m62479a(Node node) {
        if (node.getNodeType() != 1) {
            return NamespaceMap.emptyMap();
        }
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        do {
            Element element = (Element) node;
            NamedNodeMap attributes = element.getAttributes();
            if (attributes != null) {
                int length = attributes.getLength();
                for (int i = 0; i < length; i++) {
                    Attr attr = (Attr) attributes.item(i);
                    String name = attr.getName();
                    if (name.startsWith("xmlns")) {
                        if (name.length() == 5) {
                            if (emptyMap.getURI("") == null) {
                                emptyMap = emptyMap.bind("", attr.getValue());
                            }
                        } else if (name.charAt(5) == ':' && emptyMap.getURI(name.substring(6)) == null) {
                            emptyMap = emptyMap.bind(name.substring(6), attr.getValue());
                        }
                    }
                }
            }
            node = element.getParentNode();
            if (node == null) {
                break;
            }
        } while (node.getNodeType() == 1);
        return emptyMap;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f98911j == 0 && this.f98910i == null && Whitespace.isAllWhite(unicodeString)) {
            return;
        }
        try {
            Text createTextNode = this.f98909h.createTextNode(unicodeString.toString());
            Node node = this.f98910i;
            if (node == null || this.f98911j != 0) {
                this.f98908g.appendChild(createTextNode);
            } else {
                this.f98908g.insertBefore(createTextNode, node);
            }
        } catch (DOMException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void close() {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            Comment createComment = this.f98909h.createComment(unicodeString.toString());
            Node node = this.f98910i;
            if (node == null || this.f98911j != 0) {
                this.f98908g.appendChild(createComment);
            } else {
                this.f98908g.insertBefore(createComment, node);
            }
        } catch (DOMException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f98914m.pop();
        if (this.f98912k) {
            try {
                this.f98908g.normalize();
            } catch (Throwable unused) {
                this.f98912k = false;
            }
        }
        this.f98908g = this.f98908g.getParentNode();
        this.f98911j--;
    }

    @Override // net.p110sf.saxon.event.Builder
    public NodeInfo getCurrentRoot() {
        return new DocumentWrapper(this.f98909h, this.f98913l, this.config).getRootNode();
    }

    public Document getDOMDocumentNode() {
        return this.f98909h;
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f98907f;
    }

    @Override // net.p110sf.saxon.event.Builder, javax.xml.transform.Result
    public String getSystemId() {
        return this.f98913l;
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void open() {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        try {
            ProcessingInstruction createProcessingInstruction = this.f98909h.createProcessingInstruction(str, unicodeString.toString());
            Node node = this.f98910i;
            if (node == null || this.f98911j != 0) {
                this.f98908g.appendChild(createProcessingInstruction);
            } else {
                this.f98908g.insertBefore(createProcessingInstruction, node);
            }
        } catch (DOMException e) {
            throw new XPathException(e);
        }
    }

    public void setNextSibling(Node node) {
        this.f98910i = node;
    }

    public void setNode(Node node) {
        if (node == null) {
            return;
        }
        this.f98908g = node;
        if (node.getNodeType() == 9) {
            this.f98909h = (Document) node;
            return;
        }
        Document ownerDocument = this.f98908g.getOwnerDocument();
        this.f98909h = ownerDocument;
        if (ownerDocument == null) {
            this.f98909h = new DocumentOverNodeInfo();
        }
        this.f98914m.clear();
        this.f98914m.push(m62479a(node));
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f98907f = pipelineConfiguration;
        this.config = pipelineConfiguration.getConfiguration();
    }

    @Override // net.p110sf.saxon.event.Builder, javax.xml.transform.Result
    public void setSystemId(String str) {
        this.f98913l = str;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setUnparsedEntity(String str, String str2, String str3) throws XPathException {
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f98909h == null) {
            try {
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setNamespaceAware(true);
                Document newDocument = newInstance.newDocumentBuilder().newDocument();
                this.f98909h = newDocument;
                this.f98908g = newDocument;
            } catch (ParserConfigurationException e) {
                throw new XPathException(e);
            }
        }
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        String displayName = nodeName.getDisplayName();
        String uri = nodeName.getURI();
        try {
            Document document = this.f98909h;
            if ("".equals(uri)) {
                uri = null;
            }
            Element createElementNS = document.createElementNS(uri, displayName);
            Node node = this.f98910i;
            if (node == null || this.f98911j != 0) {
                this.f98908g.appendChild(createElementNS);
            } else {
                this.f98908g.insertBefore(createElementNS, node);
            }
            this.f98908g = createElementNS;
            NamespaceMap peek = this.f98914m.peek();
            if (namespaceMap != peek) {
                for (NamespaceBinding namespaceBinding : namespaceMap.getDifferences(peek, false)) {
                    String prefix = namespaceBinding.getPrefix();
                    String uri2 = namespaceBinding.getURI();
                    if (!uri2.equals("http://www.w3.org/XML/1998/namespace")) {
                        if (prefix.isEmpty()) {
                            createElementNS.setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", uri2);
                        } else {
                            createElementNS.setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + prefix, uri2);
                        }
                    }
                }
            }
            this.f98914m.push(namespaceMap);
            for (AttributeInfo attributeInfo : attributeMap) {
                NodeName nodeName2 = attributeInfo.getNodeName();
                String uri3 = nodeName2.getURI();
                createElementNS.setAttributeNS("".equals(uri3) ? null : uri3, nodeName2.getDisplayName(), attributeInfo.getValue());
                if (nodeName2.equals(StandardNames.XML_ID_NAME) || ReceiverOption.contains(i, 2048) || (nodeName2.hasURI("http://www.w3.org/XML/1998/namespace") && nodeName2.getLocalPart().equals("id"))) {
                    String localPart = nodeName2.getLocalPart();
                    if ("".equals(uri3)) {
                        uri3 = null;
                    }
                    createElementNS.setIdAttributeNS(uri3, localPart, true);
                }
            }
            this.f98911j++;
        } catch (DOMException e) {
            throw new XPathException(e);
        }
    }

    @Override // net.p110sf.saxon.event.Builder, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return false;
    }
}
