package net.p110sf.saxon.tree.wrapper;

import com.sunia.HTREnginev2.gon;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public abstract class AbstractNodeWrapper implements NodeInfo, VirtualNode {
    protected TreeInfo treeInfo;

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        int nodeKind = getNodeKind();
        return (nodeKind == 7 || nodeKind == 8) ? new StringValue(getUnicodeStringValue()) : StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        if (obj instanceof AbstractNodeWrapper) {
            return getUnderlyingNode().equals(((AbstractNodeWrapper) obj).getUnderlyingNode());
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        if (getNodeKind() != 1) {
            return null;
        }
        throw new AssertionError("getAllNamespaces() not implemented for " + getClass());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        if (getNodeKind() == 13) {
            return null;
        }
        for (NodeInfo parent = getNodeKind() != 1 ? getParent() : this; parent != null; parent = parent.getParent()) {
            String attributeValue = parent.getAttributeValue("http://www.w3.org/XML/1998/namespace", gon.f71271X);
            if (attributeValue != null) {
                return attributeValue;
            }
        }
        return getRoot().getSystemId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return -1;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return new NamespaceBinding[0];
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        String prefix = getPrefix();
        String localPart = getLocalPart();
        if (prefix.isEmpty()) {
            return localPart;
        }
        return prefix + ":" + localPart;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return -1;
    }

    public NamePool getNamePool() {
        return getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.tree.wrapper.VirtualNode
    public final Object getRealNode() {
        return getUnderlyingNode();
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

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        TreeInfo treeInfo = this.treeInfo;
        if (treeInfo instanceof GenericTreeInfo) {
            return ((GenericTreeInfo) treeInfo).getSystemId();
        }
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.treeInfo;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        int nodeKind = getNodeKind();
        return (nodeKind == 1 || nodeKind == 9) && iterateAxis(3).next() != null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return getUnderlyingNode().hashCode();
    }

    public abstract AxisIterator iterateAttributes(NodeTest nodeTest);

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        return iterateAxis(i, AnyNodeTest.getInstance());
    }

    public abstract AxisIterator iterateChildren(NodeTest nodeTest);

    public AxisIterator iterateDescendants(NodeTest nodeTest, boolean z) {
        Navigator.DescendantEnumeration descendantEnumeration = new Navigator.DescendantEnumeration(this, z, true);
        return !(nodeTest instanceof AnyNodeTest) ? new Navigator.AxisFilter(descendantEnumeration, nodeTest) : descendantEnumeration;
    }

    public abstract AxisIterator iterateSiblings(NodeTest nodeTest, boolean z);

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        NodeTest nodeTestFromPredicate = Navigator.nodeTestFromPredicate(nodePredicate);
        int nodeKind = getNodeKind();
        switch (i) {
            case 0:
                if (nodeKind == 9) {
                    return EmptyIterator.ofNodes();
                }
                return new Navigator.AxisFilter(new Navigator.AncestorEnumeration(this, false), nodeTestFromPredicate);
            case 1:
                if (nodeKind == 9) {
                    return Navigator.filteredSingleton(this, nodeTestFromPredicate);
                }
                return new Navigator.AxisFilter(new Navigator.AncestorEnumeration(this, true), nodeTestFromPredicate);
            case 2:
                if (nodeKind != 1) {
                    return EmptyIterator.ofNodes();
                }
                return iterateAttributes(nodeTestFromPredicate);
            case 3:
                if (nodeKind != 1 && nodeKind != 9) {
                    return EmptyIterator.ofNodes();
                }
                return iterateChildren(nodeTestFromPredicate);
            case 4:
                if (nodeKind != 1 && nodeKind != 9) {
                    return EmptyIterator.ofNodes();
                }
                return iterateDescendants(nodeTestFromPredicate, false);
            case 5:
                if (nodeKind != 1 && nodeKind != 9) {
                    return Navigator.filteredSingleton(this, nodeTestFromPredicate);
                }
                return iterateDescendants(nodeTestFromPredicate, true);
            case 6:
                return new Navigator.AxisFilter(new Navigator.FollowingEnumeration(this), nodeTestFromPredicate);
            case 7:
                if (nodeKind != 2 && nodeKind != 9 && nodeKind != 13) {
                    return iterateSiblings(nodeTestFromPredicate, true);
                }
                return EmptyIterator.ofNodes();
            case 8:
                if (nodeKind != 1) {
                    return EmptyIterator.ofNodes();
                }
                return NamespaceNode.makeIterator(this, nodeTestFromPredicate);
            case 9:
                return Navigator.filteredSingleton(getParent(), nodeTestFromPredicate);
            case 10:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, false), nodeTestFromPredicate);
            case 11:
                if (nodeKind != 2 && nodeKind != 9 && nodeKind != 13) {
                    return iterateSiblings(nodeTestFromPredicate, false);
                }
                return EmptyIterator.ofNodes();
            case 12:
                return Navigator.filteredSingleton(this, nodeTestFromPredicate);
            case 13:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, true), nodeTestFromPredicate);
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }
}
