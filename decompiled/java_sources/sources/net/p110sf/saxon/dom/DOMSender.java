package net.p110sf.saxon.dom;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Stack;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.functions.ResolveURI;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamespaceDeltaMap;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Untyped;
import org.w3c.dom.Attr;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;

/* loaded from: classes11.dex */
public class DOMSender {

    /* renamed from: a */
    public final Receiver f98904a;

    /* renamed from: b */
    public final Stack<NamespaceMap> f98905b;

    /* renamed from: c */
    public Node f98906c;
    protected Node root;
    protected String systemId;

    public DOMSender(Node node, Receiver receiver) {
        Stack<NamespaceMap> stack = new Stack<>();
        this.f98905b = stack;
        if (node == null) {
            throw new NullPointerException("startNode");
        }
        if (receiver == null) {
            throw new NullPointerException(EventHandlerManager.RECEIVER);
        }
        this.root = node;
        this.f98904a = new NamespaceReducer(receiver);
        stack.push(NamespaceMap.emptyMap());
    }

    /* renamed from: a */
    public final NamespaceDeltaMap m62472a(Element element) {
        NamespaceDeltaMap emptyMap = NamespaceDeltaMap.emptyMap();
        try {
            String prefix = element.getPrefix();
            String namespaceURI = element.getNamespaceURI();
            if (prefix == null) {
                prefix = "";
            }
            if (namespaceURI == null) {
                namespaceURI = "";
            }
            emptyMap = emptyMap.put(prefix, namespaceURI);
        } catch (Throwable unused) {
        }
        NamedNodeMap attributes = element.getAttributes();
        if (attributes == null) {
            return emptyMap;
        }
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            Attr attr = (Attr) attributes.item(i);
            String name = attr.getName();
            boolean startsWith = name.startsWith("xmlns");
            if (startsWith && name.length() == 5) {
                emptyMap = emptyMap.put("", attr.getValue());
            } else if (startsWith && name.startsWith("xmlns:")) {
                emptyMap = emptyMap.put(name.substring(6), attr.getValue());
            } else if (name.indexOf(58) >= 0) {
                try {
                    emptyMap = emptyMap.put(attr.getPrefix(), attr.getNamespaceURI());
                } catch (Throwable unused2) {
                }
            }
        }
        return emptyMap;
    }

    /* renamed from: b */
    public final NodeName m62473b(String str, boolean z) {
        int indexOf = str.indexOf(58);
        if (indexOf < 0) {
            if (z) {
                String m62474c = m62474c("");
                if (!m62474c.isEmpty()) {
                    return new FingerprintedQName("", m62474c, str);
                }
            }
            return new NoNamespaceName(str);
        }
        String substring = str.substring(0, indexOf);
        String m62474c2 = m62474c(substring);
        if (m62474c2 != null) {
            return new FingerprintedQName(substring, m62474c2, str.substring(indexOf + 1));
        }
        throw new IllegalStateException("Prefix " + substring + " is not bound to any namespace");
    }

    /* renamed from: c */
    public final String m62474c(String str) {
        if (str.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        String uri = this.f98905b.peek().getURI(str);
        return uri == null ? "" : uri;
    }

    /* renamed from: d */
    public final void m62475d(Element element, boolean z) throws XPathException {
        NodeName m62473b = m62473b(element.getTagName(), true);
        Loc loc = new Loc(this.systemId, -1, -1);
        AttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
        NamedNodeMap attributes = element.getAttributes();
        if (attributes != null) {
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                Attr attr = (Attr) attributes.item(i);
                int i2 = attr.isId() ? 2048 : 0;
                String name = attr.getName();
                if (!z || !name.startsWith("xmlns") || (name.length() != 5 && name.charAt(5) != ':')) {
                    emptyAttributeMap = emptyAttributeMap.put(new AttributeInfo(m62473b(name, false), BuiltInAtomicType.UNTYPED_ATOMIC, attr.getValue(), loc, i2));
                }
            }
        }
        this.f98904a.startElement(m62473b, Untyped.getInstance(), emptyAttributeMap, this.f98905b.peek(), loc, 0);
        m62478g(element);
        this.f98904a.endElement();
    }

    /* renamed from: e */
    public final void m62476e(Element element) throws XPathException {
        ArrayList arrayList = new ArrayList();
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        for (Node node = element; node != null && node.getNodeType() == 1; node = node.getParentNode()) {
            arrayList.add((Element) node);
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            emptyMap = emptyMap.applyDifferences(m62472a((Element) arrayList.get(size)));
        }
        this.f98905b.push(emptyMap);
        m62475d(element, true);
        this.f98905b.pop();
    }

    /* renamed from: f */
    public final void m62477f() throws XPathException {
        DocumentType doctype;
        NamedNodeMap entities;
        String baseURI;
        Node node = this.root;
        if (!(node instanceof Document) || (doctype = ((Document) node).getDoctype()) == null || (entities = doctype.getEntities()) == null) {
            return;
        }
        for (int i = 0; i < entities.getLength(); i++) {
            Entity entity = (Entity) entities.item(i);
            if (entity.getNotationName() != null) {
                String nodeName = entity.getNodeName();
                String systemId = entity.getSystemId();
                try {
                    if (!new URI(systemId).isAbsolute() && (baseURI = this.root.getBaseURI()) != null) {
                        systemId = ResolveURI.makeAbsolute(systemId, baseURI).toString();
                    }
                } catch (URISyntaxException unused) {
                }
                this.f98904a.setUnparsedEntity(nodeName, systemId, entity.getPublicId());
            }
        }
    }

    /* renamed from: g */
    public final void m62478g(Node node) throws XPathException {
        String data;
        Loc loc = Loc.NONE;
        if (node.hasChildNodes()) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            for (int i = 0; i < length; i++) {
                Node item = childNodes.item(i);
                this.f98906c = item;
                short nodeType = item.getNodeType();
                if (nodeType == 1) {
                    Element element = (Element) item;
                    this.f98905b.push(this.f98905b.peek().applyDifferences(m62472a(element)));
                    m62475d(element, !r5.isEmpty());
                    this.f98905b.pop();
                } else if (nodeType == 3 || nodeType == 4) {
                    String data2 = ((CharacterData) item).getData();
                    if (data2 != null) {
                        this.f98904a.characters(StringView.m63901of(data2), loc, 0);
                    }
                } else if (nodeType == 5) {
                    m62478g(item);
                } else if (nodeType == 7) {
                    ProcessingInstruction processingInstruction = (ProcessingInstruction) item;
                    this.f98904a.processingInstruction(processingInstruction.getTarget(), StringView.m63901of(processingInstruction.getData()), loc, 0);
                } else if (nodeType == 8 && (data = ((Comment) item).getData()) != null) {
                    this.f98904a.comment(StringView.m63901of(data), loc, 0);
                }
            }
        }
    }

    public Node getCurrentNode() {
        return this.f98906c;
    }

    public void send() throws XPathException {
        this.f98904a.setSystemId(this.systemId);
        Loc loc = Loc.NONE;
        short nodeType = this.root.getNodeType();
        if (nodeType == 1) {
            m62476e((Element) this.root);
            return;
        }
        if (nodeType != 11) {
            if (nodeType == 3 || nodeType == 4) {
                this.f98904a.characters(StringView.m63901of(((CharacterData) this.root).getData()), loc, 0);
                return;
            }
            if (nodeType == 7) {
                this.f98904a.processingInstruction(((ProcessingInstruction) this.root).getTarget(), StringView.m63901of(((ProcessingInstruction) this.root).getData()), loc, 0);
                return;
            }
            if (nodeType == 8) {
                this.f98904a.comment(StringView.m63901of(((Comment) this.root).getData()), loc, 0);
                return;
            } else if (nodeType != 9) {
                throw new IllegalStateException("DOMSender: unsupported kind of start node (" + ((int) this.root.getNodeType()) + MotionUtils.f31762d);
            }
        }
        this.f98904a.startDocument(0);
        m62477f();
        m62478g(this.root);
        this.f98904a.endDocument();
    }

    public void setSystemId(String str) {
        this.systemId = str;
    }
}
