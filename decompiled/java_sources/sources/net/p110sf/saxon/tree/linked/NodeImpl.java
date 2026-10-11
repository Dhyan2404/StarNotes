package net.p110sf.saxon.tree.linked;

import com.miui.penengine.p015e.C6999h;
import com.sunia.HTREnginev2.C13665ea;
import com.sunia.HTREnginev2.n5l;
import com.sunia.HTREnginev2.o5l;
import com.sunia.HTREnginev2.p5l;
import com.sunia.HTREnginev2.xog;
import com.sunia.HTREnginev2.yog;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.util.SteppingNavigator;
import net.p110sf.saxon.tree.util.SteppingNode;
import net.p110sf.saxon.tree.wrapper.SiblingCountingNode;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class NodeImpl implements MutableNodeInfo, SteppingNode, SiblingCountingNode, Location {
    public static final char[] NODE_LETTER = {'x', 'e', 'a', 't', 'x', 'x', 'x', 'p', 'c', 'r', 'x', 'x', 'x', 'n'};

    /* renamed from: g */
    public static final /* synthetic */ boolean f102531g = false;

    /* renamed from: e */
    public ParentNodeImpl f102532e;

    /* renamed from: f */
    public int f102533f;

    /* renamed from: a */
    public final NodeImpl m64539a() {
        NodeImpl nodeImpl = (NodeImpl) getLastChild();
        return nodeImpl == null ? this : nodeImpl.m64539a();
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void addAttribute(NodeName nodeName, SimpleType simpleType, String str, int i, boolean z) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void addNamespace(NamespaceBinding namespaceBinding, boolean z) {
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        SchemaType schemaType = getSchemaType();
        return (schemaType == Untyped.getInstance() || schemaType == BuiltInAtomicType.UNTYPED_ATOMIC) ? StringValue.makeUntypedAtomic(getUnicodeStringValue()) : schemaType.atomize(this);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AttributeMap attributes() {
        return EmptyAttributeMap.getInstance();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int compareOrder(NodeInfo nodeInfo) {
        if (nodeInfo instanceof NamespaceNode) {
            return 0 - nodeInfo.compareOrder(this);
        }
        long sequenceNumber = getSequenceNumber();
        NodeImpl nodeImpl = (NodeImpl) nodeInfo;
        long sequenceNumber2 = nodeImpl.getSequenceNumber();
        return (sequenceNumber == -1 || sequenceNumber2 == -1) ? Navigator.compareOrder(this, nodeImpl) : Long.compare(sequenceNumber, sequenceNumber2);
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void delete() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if (parentNodeImpl != null) {
            parentNodeImpl.removeChild(this);
            DocumentImpl documentImpl = new DocumentImpl();
            documentImpl.setConfiguration(getConfiguration());
            documentImpl.setImaginary(true);
            this.f102532e = documentImpl;
        }
        this.f102533f = -1;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() throws XPathException {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        long sequenceNumber = getSequenceNumber();
        if (sequenceNumber != -1) {
            this.f102532e.generateId(sb);
            sb.append(NODE_LETTER[getNodeKind()]);
            sb.append(this.f102533f);
            return;
        }
        getPhysicalRoot().generateId(sb);
        sb.append(NODE_LETTER[getNodeKind()]);
        sb.append(sequenceNumber + C6999h.f39688c + hashCode());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return this.f102532e.getBaseURI();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if (parentNodeImpl == null) {
            return -1;
        }
        return parentNodeImpl.getColumnNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return getPhysicalRoot().getConfiguration();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        NodeName nodeName = getNodeName();
        return nodeName == null ? "" : nodeName.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        NodeName nodeName = getNodeName();
        if (nodeName == null) {
            return -1;
        }
        return nodeName.obtainFingerprint(getConfiguration().getNamePool());
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getFirstChild() {
        return null;
    }

    public NodeInfo getLastChild() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f102532e.getLineNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        NodeName nodeName = getNodeName();
        return nodeName == null ? "" : nodeName.getLocalPart();
    }

    public NamePool getNamePool() {
        return getPhysicalRoot().getNamePool();
    }

    public NodeImpl getNextInDocument(NodeImpl nodeImpl) {
        NodeImpl nextSibling;
        NodeImpl firstChild = getFirstChild();
        if (firstChild != null) {
            return firstChild;
        }
        if (this == nodeImpl) {
            return null;
        }
        NodeImpl nextSibling2 = getNextSibling();
        if (nextSibling2 != null) {
            return nextSibling2;
        }
        do {
            this = this.getParent();
            if (this == null || this == nodeImpl) {
                return null;
            }
            nextSibling = this.getNextSibling();
        } while (nextSibling == null);
        return nextSibling;
    }

    public NodeName getNodeName() {
        return null;
    }

    public DocumentImpl getPhysicalRoot() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        while (parentNodeImpl != null && !(parentNodeImpl instanceof DocumentImpl)) {
            parentNodeImpl = parentNodeImpl.getRawParent();
        }
        return (DocumentImpl) parentNodeImpl;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        NodeName nodeName = getNodeName();
        return nodeName == null ? "" : nodeName.getPrefix();
    }

    public NodeImpl getPreviousInDocument() {
        NodeImpl previousSibling = getPreviousSibling();
        return previousSibling != null ? previousSibling.m64539a() : getParent();
    }

    public final ParentNodeImpl getRawParent() {
        return this.f102532e;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        NodeImpl parent = getParent();
        return parent == null ? this : parent.getRoot();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return Untyped.getInstance();
    }

    public long getSequenceNumber() {
        int i = 0;
        while (!(this instanceof ParentNodeImpl)) {
            this = this.getPreviousInDocument();
            i++;
        }
        long sequenceNumber = this.getSequenceNumber();
        return sequenceNumber == -1 ? sequenceNumber : sequenceNumber + 65536 + i;
    }

    @Override // net.p110sf.saxon.tree.wrapper.SiblingCountingNode
    public final int getSiblingPosition() {
        return this.f102533f;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102532e.getSystemId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return getPhysicalRoot();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        NodeName nodeName = getNodeName();
        return nodeName == null ? "" : nodeName.getURI();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return getFirstChild() != null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public NodeImpl head() {
        return this;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void insertChildren(NodeInfo[] nodeInfoArr, boolean z, boolean z2) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void insertSiblings(NodeInfo[] nodeInfoArr, boolean z, boolean z2) {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if (parentNodeImpl == null) {
            throw new IllegalStateException("Cannot add siblings if there is no parent");
        }
        int i = this.f102533f;
        if (!z) {
            i++;
        }
        parentNodeImpl.insertChildrenAt(nodeInfoArr, i, z2);
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public boolean isDeleted() {
        ParentNodeImpl parentNodeImpl;
        return this.f102533f == -1 || ((parentNodeImpl = this.f102532e) != null && parentNodeImpl.isDeleted());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        if (i == 3) {
            if (this instanceof ParentNodeImpl) {
                return ((ParentNodeImpl) this).iterateChildren(null);
            }
            return EmptyIterator.ofNodes();
        }
        return iterateAxis(i, AnyNodeTest.getInstance());
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public Builder newBuilder() {
        return getPhysicalRoot().newBuilder();
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void removeAttribute(NodeInfo nodeInfo) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void removeTypeAnnotation() {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void rename(NodeName nodeName, boolean z) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replace(NodeInfo[] nodeInfoArr, boolean z) {
        if (isDeleted()) {
            throw new IllegalStateException("Cannot replace a deleted node");
        }
        if (getParent() == null) {
            throw new IllegalStateException("Cannot replace a parentless node");
        }
        this.f102532e.replaceChildrenAt(nodeInfoArr, this.f102533f, z);
        this.f102532e = null;
        this.f102533f = -1;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void setAttributes(AttributeMap attributeMap) {
        throw new UnsupportedOperationException("setAttributes() applies only to element nodes");
    }

    public final void setRawParent(ParentNodeImpl parentNodeImpl) {
        this.f102532e = parentNodeImpl;
    }

    public final void setSiblingPosition(int i) {
        this.f102533f = i;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        NodeImpl parent = getParent();
        if (parent != null) {
            parent.setSystemId(str);
        }
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void setTypeAnnotation(SchemaType schemaType) {
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getNextSibling() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if (parentNodeImpl == null) {
            return null;
        }
        return parentNodeImpl.getNthChild(this.f102533f + 1);
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getPreviousSibling() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if (parentNodeImpl == null) {
            return null;
        }
        return parentNodeImpl.getNthChild(this.f102533f - 1);
    }

    @Override // net.p110sf.saxon.tree.util.SteppingNode
    public NodeImpl getSuccessorElement(SteppingNode steppingNode, String str, String str2) {
        NodeImpl nodeImpl = (NodeImpl) steppingNode;
        NodeImpl nextInDocument = getNextInDocument(nodeImpl);
        while (nextInDocument != null && (nextInDocument.getNodeKind() != 1 || ((str != null && !str.equals(nextInDocument.getURI())) || (str2 != null && !str2.equals(nextInDocument.getLocalPart()))))) {
            nextInDocument = nextInDocument.getNextInDocument(nodeImpl);
        }
        return nextInDocument;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public final NodeImpl getParent() {
        ParentNodeImpl parentNodeImpl = this.f102532e;
        if ((parentNodeImpl instanceof DocumentImpl) && ((DocumentImpl) parentNodeImpl).isImaginary()) {
            return null;
        }
        return this.f102532e;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        NodeTest nodeTestFromPredicate = Navigator.nodeTestFromPredicate(nodePredicate);
        switch (i) {
            case 0:
                return new C13665ea(this, nodeTestFromPredicate, false);
            case 1:
                return new C13665ea(this, nodeTestFromPredicate, true);
            case 2:
                if (getNodeKind() != 1) {
                    return EmptyIterator.ofNodes();
                }
                return ((ElementImpl) this).m64536i(nodeTestFromPredicate);
            case 3:
                if (this instanceof ParentNodeImpl) {
                    return ((ParentNodeImpl) this).iterateChildren(nodeTestFromPredicate);
                }
                return EmptyIterator.ofNodes();
            case 4:
                if (getNodeKind() == 9 && (nodeTestFromPredicate instanceof NameTest)) {
                    NameTest nameTest = (NameTest) nodeTestFromPredicate;
                    if (nameTest.getPrimitiveType() == 1) {
                        return ((DocumentImpl) this).m64522f(nameTest.getFingerprint());
                    }
                }
                if (hasChildNodes()) {
                    return new SteppingNavigator.DescendantAxisIterator(this, false, nodeTestFromPredicate);
                }
                return EmptyIterator.ofNodes();
            case 5:
                return new SteppingNavigator.DescendantAxisIterator(this, true, nodeTestFromPredicate);
            case 6:
                return new xog(this, nodeTestFromPredicate);
            case 7:
                return new yog(this, nodeTestFromPredicate);
            case 8:
                if (getNodeKind() != 1) {
                    return EmptyIterator.ofNodes();
                }
                return NamespaceNode.makeIterator(this, nodeTestFromPredicate);
            case 9:
                NodeImpl parent = getParent();
                if (parent == null) {
                    return EmptyIterator.ofNodes();
                }
                return Navigator.filteredSingleton(parent, nodeTestFromPredicate);
            case 10:
                return new n5l(this, nodeTestFromPredicate);
            case 11:
                return new p5l(this, nodeTestFromPredicate);
            case 12:
                return Navigator.filteredSingleton(this, nodeTestFromPredicate);
            case 13:
                return new o5l(this, nodeTestFromPredicate);
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }
}
