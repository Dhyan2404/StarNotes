package net.p110sf.saxon.tree.tiny;

import com.sunia.HTREnginev2.C13993kh;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.AnyNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.PrependAxisIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes11.dex */
public abstract class TinyNodeImpl implements NodeInfo {
    public static final char[] NODE_LETTER = {'x', 'e', 'a', 't', 'x', 'x', 'x', 'p', 'c', 'r', 'x', 'x', 'x', 'n'};
    protected int nodeNr;
    protected TinyNodeImpl parent = null;
    protected TinyTree tree;

    public static int getParentNodeNr(TinyTree tinyTree, int i) {
        if (tinyTree.f102594m[i] == 0) {
            return -1;
        }
        int i2 = tinyTree.f102595n[i];
        while (i2 > i) {
            if (tinyTree.nodeKind[i2] == 12) {
                return tinyTree.f102596o[i2];
            }
            i2 = tinyTree.f102595n[i2];
        }
        return i2;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int compareOrder(NodeInfo nodeInfo) {
        return nodeInfo instanceof TinyNodeImpl ? Long.compare(getSequenceNumber(), ((TinyNodeImpl) nodeInfo).getSequenceNumber()) : 0 - nodeInfo.compareOrder(this);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return (obj instanceof NodeInfo) && isSameNodeInfo((NodeInfo) obj);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append("d");
        sb.append(this.tree.getDocumentNumber());
        sb.append(NODE_LETTER[getNodeKind()]);
        sb.append(this.nodeNr);
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
        return getParent().getBaseURI();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.tree.getColumnNumber(this.nodeNr);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.tree.getConfiguration();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        int i = this.tree.f102598q[this.nodeNr];
        if (i < 0) {
            return "";
        }
        if (!NamePool.isPrefixed(i)) {
            return getLocalPart();
        }
        return getPrefix() + ":" + getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        int i = this.tree.f102598q[this.nodeNr];
        if (i == -1) {
            return -1;
        }
        return i & 1048575;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public Genre getGenre() {
        return Genre.NODE;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.tree.getLineNumber(this.nodeNr);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        TinyTree tinyTree = this.tree;
        int i = tinyTree.f102598q[this.nodeNr];
        return i < 0 ? "" : tinyTree.getNamePool().getLocalName(i);
    }

    public NamePool getNamePool() {
        return this.tree.getNamePool();
    }

    public int getNodeNumber() {
        return this.nodeNr;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        int i = this.tree.f102598q[this.nodeNr];
        return (i >= 0 && NamePool.isPrefixed(i)) ? this.tree.f102579A0.getPrefix(i >> 20) : "";
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this.nodeNr == 0 ? this : this.tree.getRootNode();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return null;
    }

    public long getSequenceNumber() {
        return this.nodeNr << 32;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.tree.getSystemId(this.nodeNr);
    }

    public TinyTree getTree() {
        return this.tree;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.tree;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        TinyTree tinyTree = this.tree;
        int i = tinyTree.f102598q[this.nodeNr];
        return i < 0 ? "" : tinyTree.getNamePool().getURI(i & 1048575);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final boolean hasFingerprint() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (getNodeKind() << 14) ^ ((((int) (this.tree.getDocumentNumber() & Precision.f109931a)) << 20) ^ this.nodeNr);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public NodeInfo head() {
        return this;
    }

    public boolean isAncestorOrSelf(TinyNodeImpl tinyNodeImpl) {
        int i;
        TinyTree tinyTree = this.tree;
        if (tinyTree != tinyNodeImpl.tree) {
            return false;
        }
        int i2 = tinyNodeImpl.nodeNr;
        if (tinyNodeImpl instanceof TinyAttributeImpl) {
            if (this instanceof TinyAttributeImpl) {
                return this.nodeNr == i2;
            }
            i2 = tinyTree.f102588Q[i2];
        }
        if ((this instanceof TinyAttributeImpl) || (i = this.nodeNr) > i2) {
            return false;
        }
        if (i == i2) {
            return true;
        }
        if (!(this instanceof TinyParentNodeImpl)) {
            return false;
        }
        short[] sArr = tinyTree.f102594m;
        if (sArr[i] >= sArr[i2]) {
            return false;
        }
        while (true) {
            TinyTree tinyTree2 = this.tree;
            int i3 = tinyTree2.f102595n[i];
            if (i3 < 0 || i3 > i2 || tinyTree2.f102594m[i3] == 0) {
                return true;
            }
            if (i3 >= i) {
                return false;
            }
            i = i3;
        }
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return this.tree.isNilled(this.nodeNr);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isSameNodeInfo(NodeInfo nodeInfo) {
        if (this != nodeInfo) {
            if (nodeInfo instanceof TinyNodeImpl) {
                TinyNodeImpl tinyNodeImpl = (TinyNodeImpl) nodeInfo;
                if (this.tree != tinyNodeImpl.tree || this.nodeNr != tinyNodeImpl.nodeNr || getNodeKind() != nodeInfo.getNodeKind()) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public boolean isStreamed() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        if (i == 3) {
            if (hasChildNodes()) {
                return new C18547g(this.tree, this, null, true);
            }
            return EmptyIterator.ofNodes();
        }
        return iterateAxis(i, AnyNodeTest.getInstance());
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setParentNode(TinyNodeImpl tinyNodeImpl) {
        this.parent = tinyNodeImpl;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        this.tree.m64572v(this.nodeNr, str);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public TinyNodeImpl getParent() {
        TinyNodeImpl tinyNodeImpl = this.parent;
        if (tinyNodeImpl != null) {
            return tinyNodeImpl;
        }
        int parentNodeNr = getParentNodeNr(this.tree, this.nodeNr);
        if (parentNodeNr == -1) {
            return null;
        }
        TinyNodeImpl node = this.tree.getNode(parentNodeNr);
        this.parent = node;
        return node;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        NodeTest nodeTestFromPredicate = Navigator.nodeTestFromPredicate(nodePredicate);
        int nodeKind = getNodeKind();
        switch (i) {
            case 0:
                return new AncestorIterator(this, nodeTestFromPredicate);
            case 1:
                AncestorIterator ancestorIterator = new AncestorIterator(this, nodeTestFromPredicate);
                return nodeTestFromPredicate.test(this) ? new PrependAxisIterator(this, ancestorIterator) : ancestorIterator;
            case 2:
                if (nodeKind != 1) {
                    return EmptyIterator.ofNodes();
                }
                TinyTree tinyTree = this.tree;
                int[] iArr = tinyTree.f102596o;
                int i2 = this.nodeNr;
                if (iArr[i2] < 0) {
                    return EmptyIterator.ofNodes();
                }
                return new C13993kh(tinyTree, i2, nodeTestFromPredicate);
            case 3:
                if (hasChildNodes()) {
                    if (nodeTestFromPredicate instanceof NameTest) {
                        NameTest nameTest = (NameTest) nodeTestFromPredicate;
                        if (nameTest.getNodeKind() == 1) {
                            return new C18544d(this.tree, this, nameTest.getFingerprint());
                        }
                    }
                    return new C18547g(this.tree, this, nodeTestFromPredicate, true);
                }
                return EmptyIterator.ofNodes();
            case 4:
                if (nodeKind == 9 && (nodeTestFromPredicate instanceof NameTest) && nodeTestFromPredicate.getPrimitiveType() == 1) {
                    return ((TinyDocumentImpl) this).m64544a(nodeTestFromPredicate.getFingerprint());
                }
                if (hasChildNodes()) {
                    if (nodeTestFromPredicate.getUType().overlaps(UType.TEXT)) {
                        return new C18541a(this.tree, this, nodeTestFromPredicate);
                    }
                    return new C18542b(this.tree, this, nodeTestFromPredicate);
                }
                return EmptyIterator.ofNodes();
            case 5:
                AxisIterator iterateAxis = iterateAxis(4, nodeTestFromPredicate);
                return nodeTestFromPredicate.test(this) ? new PrependAxisIterator(this, iterateAxis) : iterateAxis;
            case 6:
                if (nodeKind != 2 && nodeKind != 13) {
                    if (this.tree.f102594m[this.nodeNr] == 0) {
                        return EmptyIterator.ofNodes();
                    }
                    return new C18543c(this.tree, this, nodeTestFromPredicate, false);
                }
                return new C18543c(this.tree, getParent(), nodeTestFromPredicate, true);
            case 7:
                if (nodeKind != 2 && nodeKind != 13) {
                    TinyTree tinyTree2 = this.tree;
                    if (tinyTree2.f102594m[this.nodeNr] != 0) {
                        return new C18547g(tinyTree2, this, nodeTestFromPredicate, false);
                    }
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
                if (nodeKind != 2 && nodeKind != 13) {
                    TinyTree tinyTree3 = this.tree;
                    if (tinyTree3.f102594m[this.nodeNr] == 0) {
                        return EmptyIterator.ofNodes();
                    }
                    return new C18545e(tinyTree3, this, nodeTestFromPredicate, false);
                }
                return getParent().iterateAxis(i, nodeTestFromPredicate);
            case 11:
                if (nodeKind != 2 && nodeKind != 13) {
                    TinyTree tinyTree4 = this.tree;
                    if (tinyTree4.f102594m[this.nodeNr] != 0) {
                        return new C18546f(tinyTree4, this, nodeTestFromPredicate);
                    }
                }
                return EmptyIterator.ofNodes();
            case 12:
                return Navigator.filteredSingleton(this, nodeTestFromPredicate);
            case 13:
                if (nodeKind == 9) {
                    return EmptyIterator.ofNodes();
                }
                if (nodeKind != 2 && nodeKind != 13) {
                    return new C18545e(this.tree, this, nodeTestFromPredicate, true);
                }
                TinyNodeImpl parent = getParent();
                return new PrependAxisIterator(parent, new C18545e(this.tree, parent, nodeTestFromPredicate, true));
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }
}
