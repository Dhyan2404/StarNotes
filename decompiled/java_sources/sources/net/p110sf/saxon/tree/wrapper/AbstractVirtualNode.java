package net.p110sf.saxon.tree.wrapper;

import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public abstract class AbstractVirtualNode implements VirtualNode {
    protected TreeInfo docWrapper;
    protected NodeInfo node;
    protected AbstractVirtualNode parent;

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return this.node.atomize();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        return nodeInfo instanceof AbstractVirtualNode ? this.node.compareOrder(((AbstractVirtualNode) nodeInfo).node) : this.node.compareOrder(nodeInfo);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return obj instanceof AbstractVirtualNode ? this.node.equals(((AbstractVirtualNode) obj).node) : this.node.equals(obj);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        this.node.generateId(sb);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        return this.node.getAllNamespaces();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        return this.node.getAttributeValue(str, str2);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return this.node.getBaseURI();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.node.getColumnNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return this.node.getDeclaredNamespaces(namespaceBindingArr);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        return this.node.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        if (this.node.hasFingerprint()) {
            return this.node.getFingerprint();
        }
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.node.getLineNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        return this.node.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return this.node.getNodeKind();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        return this.node.getPrefix();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [net.sf.saxon.tree.wrapper.AbstractVirtualNode] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object] */
    @Override // net.p110sf.saxon.tree.wrapper.VirtualNode
    public Object getRealNode() {
        do {
            this = ((VirtualNode) this).getUnderlyingNode();
        } while (this instanceof VirtualNode);
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        while (true) {
            NodeInfo parent = this.getParent();
            if (parent == null) {
                return this;
            }
            this = parent;
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return this.node.getSchemaType();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.node.getSystemId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.docWrapper;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        return this.node.getURI();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.node.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return this.node.hasChildNodes();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return this.node.hasFingerprint();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return this.node.hashCode() ^ 1010580540;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return this.node.isId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return this.node.isIdref();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return this.node.isNilled();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        return new Navigator.AxisFilter(iterateAxis(i), nodePredicate);
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        this.node.setSystemId(str);
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualNode
    public NodeInfo getUnderlyingNode() {
        return this.node;
    }
}
