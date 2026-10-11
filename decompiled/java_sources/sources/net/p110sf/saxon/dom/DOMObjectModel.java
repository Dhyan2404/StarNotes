package net.p110sf.saxon.dom;

import java.util.ArrayList;
import java.util.HashSet;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.PJConverter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ExternalObjectModel;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualNode;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.value.SequenceExtent;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes11.dex */
public class DOMObjectModel extends TreeModel implements ExternalObjectModel {

    /* renamed from: a */
    public static final DOMObjectModel f98895a = new DOMObjectModel();

    /* renamed from: b */
    public static DocumentBuilderFactory f98896b = null;

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$a */
    /* loaded from: classes11.dex */
    public class C18266a extends PJConverter {
        public C18266a() {
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return DOMObjectModel.convertXPathValueToObject(sequence, cls);
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$b */
    /* loaded from: classes11.dex */
    public class C18267b extends PJConverter {
        public C18267b() {
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return DOMObjectModel.convertXPathValueToObject(sequence, cls);
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$c */
    /* loaded from: classes11.dex */
    public class C18268c extends JPConverter {
        public C18268c() {
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) {
            return DOMObjectModel.this.m62471e((Node) obj, xPathContext.getConfiguration());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$d */
    /* loaded from: classes11.dex */
    public class C18269d extends JPConverter {
        public C18269d() {
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) {
            Configuration configuration = xPathContext.getConfiguration();
            NodeList nodeList = (NodeList) obj;
            int length = nodeList.getLength();
            NodeInfo[] nodeInfoArr = new NodeInfo[length];
            for (int i = 0; i < length; i++) {
                nodeInfoArr[i] = DOMObjectModel.this.m62471e(nodeList.item(i), configuration);
            }
            return new SequenceExtent.C18571Of(nodeInfoArr);
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public int getCardinality() {
            return 57344;
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$e */
    /* loaded from: classes11.dex */
    public class C18270e extends JPConverter {
        public C18270e() {
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) {
            return DOMObjectModel.this.unravel((DOMSource) obj, xPathContext.getConfiguration());
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$f */
    /* loaded from: classes11.dex */
    public class C18271f extends JPConverter {
        public C18271f() {
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public GroundedValue convert(Object obj, XPathContext xPathContext) {
            return ((DocumentWrapper) obj).getRootNode();
        }

        @Override // net.p110sf.saxon.expr.JPConverter
        public ItemType getItemType() {
            return AnyNodeTest.getInstance();
        }
    }

    /* renamed from: net.sf.saxon.dom.DOMObjectModel$g */
    /* loaded from: classes11.dex */
    public class C18272g extends PJConverter {
        public C18272g() {
        }

        @Override // net.p110sf.saxon.expr.PJConverter
        public Object convert(Sequence sequence, Class<?> cls, XPathContext xPathContext) throws XPathException {
            return DOMObjectModel.convertXPathValueToObject(sequence, NodeList.class);
        }
    }

    /* renamed from: b */
    public static void m62468b(Receiver receiver, String str) {
        try {
            receiver.getPipelineConfiguration().getConfiguration().getLogger().warning("WARNING: " + str);
        } catch (Exception unused) {
            System.err.println("WARNING: " + str);
        }
    }

    public static Object convertXPathValueToObject(Sequence sequence, Class<?> cls) throws XPathException {
        boolean z = Node.class.isAssignableFrom(cls) || cls == NodeList.class || (cls.isArray() && Node.class.isAssignableFrom(cls.getComponentType()));
        boolean z2 = cls == Object.class || cls.isAssignableFrom(ArrayList.class) || cls.isAssignableFrom(HashSet.class) || (cls.isArray() && cls.getComponentType() == Object.class);
        if (!z && !z2) {
            return null;
        }
        ArrayList arrayList = new ArrayList(20);
        SequenceIterator iterate = sequence.iterate();
        while (true) {
            Item next = iterate.next();
            if (next == null) {
                if (arrayList.isEmpty() && !z) {
                    return null;
                }
                if (Node.class.isAssignableFrom(cls)) {
                    if (arrayList.size() == 1) {
                        return arrayList.get(0);
                    }
                    throw new XPathException("Cannot convert XPath value to Java object: requires a single DOM Nodebut supplied value contains " + arrayList.size() + " nodes");
                }
                if (cls == NodeList.class) {
                    return new DOMNodeList(arrayList);
                }
                if (cls.isArray() && cls.getComponentType() == Node.class) {
                    return arrayList.toArray(new Node[0]);
                }
                if (cls.isAssignableFrom(ArrayList.class)) {
                    return arrayList;
                }
                if (cls.isAssignableFrom(HashSet.class)) {
                    return new HashSet(arrayList);
                }
                return null;
            }
            if (next instanceof VirtualNode) {
                Object realNode = ((VirtualNode) next).getRealNode();
                if (realNode instanceof Node) {
                    arrayList.add((Node) realNode);
                }
            }
            if (!z) {
                return null;
            }
            if (!(next instanceof NodeInfo)) {
                throw new XPathException("Cannot convert XPath value to Java object: required class is " + cls.getName() + "; supplied value has type " + Type.displayTypeName(next));
            }
            arrayList.add(NodeOverNodeInfo.wrap((NodeInfo) next));
        }
    }

    public static DOMObjectModel getInstance() {
        return f98895a;
    }

    public static void sendDOMSource(DOMSource dOMSource, Receiver receiver) throws XPathException {
        Element documentElement;
        Node node = dOMSource.getNode();
        if (node == null) {
            receiver.open();
            receiver.startDocument(0);
            receiver.endDocument();
            receiver.close();
            return;
        }
        if (node.getNodeType() == 9 && (documentElement = ((Document) node).getDocumentElement()) != null && documentElement.getNamespaceURI() == null) {
            if (documentElement.getNodeName().contains(":")) {
                m62468b(receiver, "Supplied DOM uses namespaces, but is not created as namespace-aware");
            } else if (documentElement.hasAttribute("xmlns")) {
                m62468b(receiver, "Supplied DOM declares a default namespace, but is not created as namespace-aware");
            }
        }
        DOMSender dOMSender = new DOMSender(node, receiver);
        dOMSender.setSystemId(dOMSource.getSystemId());
        receiver.open();
        dOMSender.send();
        receiver.close();
    }

    /* renamed from: c */
    public final TreeInfo m62469c(Object obj, String str, Configuration configuration) {
        if (obj instanceof DocumentOverNodeInfo) {
            return (TreeInfo) ((DocumentOverNodeInfo) obj).getUnderlyingNodeInfo();
        }
        if (obj instanceof NodeOverNodeInfo) {
            return ((NodeOverNodeInfo) obj).getUnderlyingNodeInfo().getTreeInfo();
        }
        if (obj instanceof Node) {
            Node node = (Node) obj;
            return node.getNodeType() == 9 ? new DocumentWrapper((Document) obj, str, configuration) : node.getNodeType() == 11 ? new DocumentWrapper((DocumentFragment) obj, str, configuration) : new DocumentWrapper(node.getOwnerDocument(), str, configuration);
        }
        throw new IllegalArgumentException("Unknown node class " + obj.getClass());
    }

    public NodeInfo copy(Node node, TreeModel treeModel, Configuration configuration) throws XPathException {
        Builder makeBuilder = treeModel.makeBuilder(configuration.makePipelineConfiguration());
        makeBuilder.open();
        Sender.send(new DOMSource(node), makeBuilder, null);
        NodeInfo currentRoot = makeBuilder.getCurrentRoot();
        makeBuilder.close();
        return currentRoot;
    }

    /* renamed from: d */
    public final NodeInfo m62470d(TreeInfo treeInfo, Object obj) {
        return ((DocumentWrapper) treeInfo).wrap((Node) obj);
    }

    /* renamed from: e */
    public final NodeInfo m62471e(Node node, Configuration configuration) {
        return node instanceof NodeOverNodeInfo ? ((NodeOverNodeInfo) node).getUnderlyingNodeInfo() : m62470d(m62469c(node, "", configuration), node);
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public ActiveSource getActiveSource(Source source) {
        if (source instanceof DOMSource) {
            return new ActiveDOMSource((DOMSource) source);
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public Receiver getDocumentBuilder(Result result) throws XPathException {
        if (!(result instanceof DOMResult)) {
            return null;
        }
        DOMWriter dOMWriter = new DOMWriter();
        DOMResult dOMResult = (DOMResult) result;
        Node node = dOMResult.getNode();
        if ((node instanceof NodeOverNodeInfo) && !(((NodeOverNodeInfo) node).getUnderlyingNodeInfo() instanceof MutableNodeInfo)) {
            throw new XPathException("Supplied DOMResult is a non-mutable Saxon implementation");
        }
        Node nextSibling = dOMResult.getNextSibling();
        if (node == null) {
            try {
                if (f98896b == null) {
                    f98896b = DocumentBuilderFactory.newInstance();
                }
                Document newDocument = f98896b.newDocumentBuilder().newDocument();
                ((DOMResult) result).setNode(newDocument);
                dOMWriter.setNode(newDocument);
            } catch (ParserConfigurationException e) {
                throw new XPathException(e);
            }
        } else {
            dOMWriter.setNode(node);
            dOMWriter.setNextSibling(nextSibling);
        }
        return dOMWriter;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public String getDocumentClassName() {
        return "org.w3c.dom.Document";
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public String getIdentifyingURI() {
        return "http://java.sun.com/jaxp/xpath/dom";
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public JPConverter getJPConverter(Class cls, Configuration configuration) {
        if (Node.class.isAssignableFrom(cls) && !NodeOverNodeInfo.class.isAssignableFrom(cls)) {
            return new C18268c();
        }
        if (NodeList.class.isAssignableFrom(cls)) {
            return new C18269d();
        }
        if (DOMSource.class.isAssignableFrom(cls)) {
            return new C18270e();
        }
        if (DocumentWrapper.class == cls) {
            return new C18271f();
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.TreeModel
    public String getName() {
        return "DOM";
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public PJConverter getNodeListCreator(Object obj) {
        if (obj == null || (obj instanceof Node) || (obj instanceof DOMSource) || (obj instanceof DocumentWrapper) || ((obj instanceof VirtualNode) && (((VirtualNode) obj).getRealNode() instanceof Node))) {
            return new C18272g();
        }
        return null;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public PJConverter getPJConverter(Class<?> cls) {
        if (Node.class.isAssignableFrom(cls) && !NodeOverNodeInfo.class.isAssignableFrom(cls)) {
            return new C18266a();
        }
        if (NodeList.class == cls) {
            return new C18267b();
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.TreeModel
    public Builder makeBuilder(PipelineConfiguration pipelineConfiguration) {
        DOMWriter dOMWriter = new DOMWriter();
        dOMWriter.setPipelineConfiguration(pipelineConfiguration);
        return dOMWriter;
    }

    @Override // net.p110sf.saxon.lib.ExternalObjectModel
    public NodeInfo unravel(Source source, Configuration configuration) {
        if (!(source instanceof DOMSource)) {
            return null;
        }
        Node node = ((DOMSource) source).getNode();
        if (node instanceof NodeOverNodeInfo) {
            return null;
        }
        return new DocumentWrapper(node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument(), source.getSystemId(), configuration).wrap(node);
    }

    public NodeInfo wrap(Node node, Configuration configuration) {
        return new DocumentWrapper(node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument(), node.getBaseURI(), configuration).wrap(node);
    }
}
