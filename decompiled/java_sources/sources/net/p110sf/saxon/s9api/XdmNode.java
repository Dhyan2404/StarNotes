package net.p110sf.saxon.s9api;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.function.Predicate;
import java.util.stream.Stream;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.query.QueryResult;
import net.p110sf.saxon.s9api.streams.Steps;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.wrapper.VirtualNode;
import org.scribe.model.ParameterList;

/* loaded from: classes11.dex */
public class XdmNode extends XdmItem {

    /* renamed from: net.sf.saxon.s9api.XdmNode$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18483a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f101412a;

        static {
            int[] iArr = new int[Axis.values().length];
            f101412a = iArr;
            try {
                iArr[Axis.ATTRIBUTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101412a[Axis.NAMESPACE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public XdmNode(NodeInfo nodeInfo) {
        super(nodeInfo);
    }

    public Source asSource() {
        return getUnderlyingNode().asActiveSource();
    }

    public String attribute(String str) {
        return getUnderlyingNode().getAttributeValue("", str);
    }

    public XdmSequenceIterator<XdmNode> axisIterator(Axis axis) {
        return XdmSequenceIterator.ofNodes(getUnderlyingNode().iterateAxis(axis.getAxisNumber()));
    }

    public Iterable<XdmNode> children() {
        return select(Steps.child()).asListOfNodes();
    }

    public boolean equals(Object obj) {
        return (obj instanceof XdmNode) && getUnderlyingNode().equals(((XdmNode) obj).getUnderlyingNode());
    }

    public String getAttributeValue(QName qName) {
        return getUnderlyingNode().getAttributeValue(qName.getNamespaceURI(), qName.getLocalName());
    }

    public URI getBaseURI() {
        try {
            String baseURI = getUnderlyingNode().getBaseURI();
            if (baseURI == null) {
                return null;
            }
            return new URI(baseURI);
        } catch (URISyntaxException e) {
            throw new IllegalStateException("baseURI", e);
        }
    }

    public int getColumnNumber() {
        return getUnderlyingNode().getColumnNumber();
    }

    public URI getDocumentURI() {
        try {
            String systemId = getUnderlyingNode().getSystemId();
            if (systemId != null && !systemId.isEmpty()) {
                return new URI(systemId);
            }
            return null;
        } catch (URISyntaxException e) {
            throw new IllegalStateException("documentURI", e);
        }
    }

    public Object getExternalNode() {
        NodeInfo underlyingNode = getUnderlyingNode();
        if (!(underlyingNode instanceof VirtualNode)) {
            return null;
        }
        Object realNode = ((VirtualNode) underlyingNode).getRealNode();
        if (realNode instanceof NodeInfo) {
            return null;
        }
        return realNode;
    }

    public int getLineNumber() {
        return getUnderlyingNode().getLineNumber();
    }

    public XdmNodeKind getNodeKind() {
        int nodeKind = getUnderlyingNode().getNodeKind();
        if (nodeKind == 1) {
            return XdmNodeKind.ELEMENT;
        }
        if (nodeKind == 2) {
            return XdmNodeKind.ATTRIBUTE;
        }
        if (nodeKind == 3) {
            return XdmNodeKind.TEXT;
        }
        if (nodeKind == 7) {
            return XdmNodeKind.PROCESSING_INSTRUCTION;
        }
        if (nodeKind == 8) {
            return XdmNodeKind.COMMENT;
        }
        if (nodeKind == 9) {
            return XdmNodeKind.DOCUMENT;
        }
        if (nodeKind == 13) {
            return XdmNodeKind.NAMESPACE;
        }
        throw new IllegalStateException("nodeKind");
    }

    public QName getNodeName() {
        NodeInfo underlyingNode = getUnderlyingNode();
        int nodeKind = underlyingNode.getNodeKind();
        if (nodeKind == 1 || nodeKind == 2) {
            return new QName(underlyingNode.getPrefix(), underlyingNode.getURI(), underlyingNode.getLocalPart());
        }
        if ((nodeKind == 7 || nodeKind == 13) && !underlyingNode.getLocalPart().isEmpty()) {
            return new QName(new StructuredQName("", "", underlyingNode.getLocalPart()));
        }
        return null;
    }

    public XdmNode getParent() {
        NodeInfo parent = getUnderlyingNode().getParent();
        if (parent == null) {
            return null;
        }
        return (XdmNode) XdmValue.wrap(parent);
    }

    public Processor getProcessor() {
        Configuration configuration = getUnderlyingNode().getConfiguration();
        Configuration.ApiProvider processor = configuration.getProcessor();
        return processor instanceof Processor ? (Processor) processor : new Processor(configuration);
    }

    public XdmNode getRoot() {
        NodeInfo root = getUnderlyingNode().getRoot();
        if (root == null) {
            return null;
        }
        return (XdmNode) XdmValue.wrap(root);
    }

    public XdmValue getTypedValue() throws SaxonApiException {
        try {
            return XdmValue.wrap(getUnderlyingNode().atomize());
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public NodeInfo getUnderlyingNode() {
        return getUnderlyingValue();
    }

    public int hashCode() {
        return getUnderlyingNode().hashCode();
    }

    @Override // net.p110sf.saxon.s9api.XdmItem, net.p110sf.saxon.s9api.XdmValue
    public XdmStream<XdmNode> stream() {
        return new XdmStream<>(Stream.of(this));
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public String toString() {
        String str;
        NodeInfo underlyingNode = getUnderlyingNode();
        if (underlyingNode.getNodeKind() == 2) {
            return underlyingNode.getDisplayName() + "=\"" + underlyingNode.getStringValue().replace(ParameterList.f115951c, "&amp;").replace("\"", SerializerConstants.ENTITY_QUOT).replace("<", "&lt;") + '\"';
        }
        if (underlyingNode.getNodeKind() != 13) {
            if (underlyingNode.getNodeKind() == 3) {
                return underlyingNode.getStringValue().replace(ParameterList.f115951c, "&amp;").replace("<", "&lt;").replace("]]>", "]]&gt;");
            }
            try {
                return QueryResult.serialize(underlyingNode).trim();
            } catch (XPathException e) {
                throw new IllegalStateException(e);
            }
        }
        String replace = underlyingNode.getStringValue().replace(ParameterList.f115951c, "&amp;").replace("\"", SerializerConstants.ENTITY_QUOT).replace("<", "&lt;");
        String displayName = underlyingNode.getDisplayName();
        if (displayName.equals("")) {
            str = "xmlns";
        } else {
            str = "xmlns:" + displayName;
        }
        return str + "=\"" + replace + '\"';
    }

    public Iterable<XdmNode> children(String str) {
        return select(Steps.child(str)).asListOfNodes();
    }

    public XdmSequenceIterator<XdmNode> axisIterator(Axis axis, QName qName) {
        int i = C18483a.f101412a[axis.ordinal()];
        int i2 = i != 1 ? i != 2 ? 1 : 13 : 2;
        NodeInfo underlyingNode = getUnderlyingNode();
        return XdmSequenceIterator.ofNodes(underlyingNode.iterateAxis(axis.getAxisNumber(), new NameTest(i2, qName.getNamespaceURI(), qName.getLocalName(), underlyingNode.getConfiguration().getNamePool())));
    }

    public Iterable<XdmNode> children(String str, String str2) {
        return select(Steps.child(str, str2)).asListOfNodes();
    }

    @Override // net.p110sf.saxon.s9api.XdmItem, net.p110sf.saxon.s9api.XdmValue
    public NodeInfo getUnderlyingValue() {
        return (NodeInfo) super.getUnderlyingValue();
    }

    public Iterable<XdmNode> children(Predicate<? super XdmNode> predicate) {
        return select(Steps.child(predicate)).asListOfNodes();
    }
}
