package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class SpaceStrippedNode extends AbstractVirtualNode implements WrappingFunction {

    /* renamed from: net.sf.saxon.tree.wrapper.SpaceStrippedNode$a */
    /* loaded from: classes11.dex */
    public static class C18554a implements AxisIterator {

        /* renamed from: e */
        public AxisIterator f102722e;

        /* renamed from: f */
        public SpaceStrippedNode f102723f;

        /* renamed from: g */
        public NodeInfo f102724g;

        /* renamed from: h */
        public SpaceStrippedDocument f102725h;

        /* renamed from: i */
        public int f102726i = 0;

        public C18554a(AxisIterator axisIterator, SpaceStrippedDocument spaceStrippedDocument, SpaceStrippedNode spaceStrippedNode) {
            this.f102722e = axisIterator;
            this.f102725h = spaceStrippedDocument;
            this.f102723f = spaceStrippedNode;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f102722e.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.f102722e.discharge();
        }

        /* renamed from: f */
        public final boolean m64589f(NodeInfo nodeInfo) {
            if (nodeInfo.getNodeKind() != 3) {
                return true;
            }
            SpaceStrippedNode spaceStrippedNode = this.f102723f;
            return SpaceStrippedNode.isPreservedNode(nodeInfo, this.f102725h, spaceStrippedNode == null ? nodeInfo.getParent() : spaceStrippedNode.node);
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            NodeInfo next;
            do {
                next = this.f102722e.next();
                if (next == null) {
                    return null;
                }
            } while (!m64589f(next));
            SpaceStrippedNode makeWrapper = SpaceStrippedNode.makeWrapper(next, this.f102725h, this.f102723f);
            this.f102724g = makeWrapper;
            this.f102726i++;
            return makeWrapper;
        }
    }

    public SpaceStrippedNode() {
    }

    public static boolean isPreservedNode(NodeInfo nodeInfo, SpaceStrippedDocument spaceStrippedDocument, NodeInfo nodeInfo2) {
        if (nodeInfo.getNodeKind() != 3 || nodeInfo2 == null || !Whitespace.isAllWhite(nodeInfo.getUnicodeStringValue())) {
            return true;
        }
        SchemaType schemaType = nodeInfo2.getSchemaType();
        if (schemaType.isSimpleType() || ((ComplexType) schemaType).isSimpleContent()) {
            return true;
        }
        if (spaceStrippedDocument.containsPreserveSpace()) {
            for (NodeInfo nodeInfo3 = nodeInfo2; nodeInfo3.getNodeKind() == 1; nodeInfo3 = nodeInfo3.getParent()) {
                String attributeValue = nodeInfo3.getAttributeValue("http://www.w3.org/XML/1998/namespace", "space");
                if (attributeValue != null) {
                    if ("preserve".equals(attributeValue)) {
                        return true;
                    }
                    if ("default".equals(attributeValue)) {
                        break;
                    }
                }
            }
        }
        if (spaceStrippedDocument.containsAssertions()) {
            for (NodeInfo nodeInfo4 = nodeInfo2; nodeInfo4.getNodeKind() == 1; nodeInfo4 = nodeInfo4.getParent()) {
                SchemaType schemaType2 = nodeInfo4.getSchemaType();
                if ((schemaType2 instanceof ComplexType) && ((ComplexType) schemaType2).hasAssertions()) {
                    return true;
                }
            }
        }
        try {
            return spaceStrippedDocument.getStrippingRule().isSpacePreserving(NameOfNode.makeName(nodeInfo2), null) == 1;
        } catch (XPathException unused) {
            return true;
        }
    }

    public static SpaceStrippedNode makeWrapper(NodeInfo nodeInfo, SpaceStrippedDocument spaceStrippedDocument, SpaceStrippedNode spaceStrippedNode) {
        SpaceStrippedNode spaceStrippedNode2 = new SpaceStrippedNode(nodeInfo, spaceStrippedNode);
        spaceStrippedNode2.docWrapper = spaceStrippedDocument;
        return spaceStrippedNode2;
    }

    /* renamed from: a */
    public final SpaceStrippedNode m64588a(int i) {
        if (i == 2 || i == 3) {
            return this;
        }
        if (i != 7) {
            if (i == 8) {
                return this;
            }
            if (i != 11) {
                return null;
            }
        }
        return (SpaceStrippedNode) getParent();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return getNodeKind() == 1 ? getSchemaType().atomize(this) : this.node.atomize();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        return nodeInfo instanceof SpaceStrippedNode ? this.node.compareOrder(((SpaceStrippedNode) nodeInfo).node) : this.node.compareOrder(nodeInfo);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        this.node.copy(new Stripper(((SpaceStrippedDocument) this.docWrapper).getStrippingRule(), receiver), i, location);
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return obj instanceof SpaceStrippedNode ? this.node.equals(((SpaceStrippedNode) obj).node) : this.node.equals(obj);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        NodeInfo parent;
        if (this.parent == null && (parent = this.node.getParent()) != null) {
            this.parent = makeWrapper(parent, (SpaceStrippedDocument) this.docWrapper, null);
        }
        return this.parent;
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        int nodeKind = getNodeKind();
        if (nodeKind != 1 && nodeKind != 9) {
            return this.node.getUnicodeStringValue();
        }
        AxisIterator iterateAxis = iterateAxis(4, NodeKindTest.makeNodeKindTest(3));
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return unicodeBuilder.toUnicodeString();
            }
            unicodeBuilder.accept(next.getUnicodeStringValue());
        }
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return this.node.hashCode();
    }

    @Override // net.p110sf.saxon.tree.wrapper.AbstractVirtualNode, net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        if ((!(nodePredicate instanceof NodeTest) || ((NodeTest) nodePredicate).getUType().intersection(UType.TEXT) != UType.VOID) && i != 2 && i != 8) {
            return new C18554a(this.node.iterateAxis(i, nodePredicate), (SpaceStrippedDocument) this.docWrapper, m64588a(i));
        }
        return new WrappingIterator(this.node.iterateAxis(i, nodePredicate), this, m64588a(i));
    }

    public SpaceStrippedNode(NodeInfo nodeInfo, SpaceStrippedNode spaceStrippedNode) {
        this.node = nodeInfo;
        this.parent = spaceStrippedNode;
    }

    @Override // net.p110sf.saxon.tree.wrapper.WrappingFunction
    public VirtualNode makeWrapper(NodeInfo nodeInfo, VirtualNode virtualNode) {
        SpaceStrippedNode spaceStrippedNode = new SpaceStrippedNode(nodeInfo, (SpaceStrippedNode) virtualNode);
        spaceStrippedNode.docWrapper = this.docWrapper;
        return spaceStrippedNode;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        if (i != 2) {
            if (i != 3) {
                if (i != 7) {
                    if (i != 8) {
                        if (i != 11) {
                            return new C18554a(this.node.iterateAxis(i), (SpaceStrippedDocument) this.docWrapper, null);
                        }
                    }
                }
                SpaceStrippedNode spaceStrippedNode = (SpaceStrippedNode) getParent();
                if (spaceStrippedNode == null) {
                    return EmptyIterator.ofNodes();
                }
                return new C18554a(this.node.iterateAxis(i), (SpaceStrippedDocument) this.docWrapper, spaceStrippedNode);
            }
            return new C18554a(this.node.iterateAxis(i), (SpaceStrippedDocument) this.docWrapper, this);
        }
        return new WrappingIterator(this.node.iterateAxis(i), this, this);
    }
}
