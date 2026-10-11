package net.p110sf.saxon.tree;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.ArrayList;
import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.tree.iter.PrependAxisIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class NamespaceNode implements NodeInfo {

    /* renamed from: e */
    public NodeInfo f102426e;

    /* renamed from: f */
    public NamespaceBinding f102427f;

    /* renamed from: g */
    public int f102428g;

    /* renamed from: h */
    public int f102429h = -1;

    public NamespaceNode(NodeInfo nodeInfo, NamespaceBinding namespaceBinding, int i) {
        this.f102426e = nodeInfo;
        this.f102427f = namespaceBinding;
        this.f102428g = i;
    }

    public static AxisIterator makeIterator(NodeInfo nodeInfo, NodePredicate nodePredicate) {
        ArrayList arrayList = new ArrayList();
        Iterator<NamespaceBinding> it2 = nodeInfo.getAllNamespaces().iterator();
        boolean z = false;
        int i = 0;
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            if (next.getPrefix().equals("xml")) {
                z = true;
            }
            int i2 = i + 1;
            NamespaceNode namespaceNode = new NamespaceNode(nodeInfo, next, i);
            if (nodePredicate.test(namespaceNode)) {
                arrayList.add(namespaceNode);
            }
            i = i2;
        }
        if (!z) {
            NamespaceNode namespaceNode2 = new NamespaceNode(nodeInfo, NamespaceBinding.XML, i);
            if (nodePredicate.test(namespaceNode2)) {
                arrayList.add(namespaceNode2);
            }
        }
        return new NodeListIterator(arrayList);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return new StringValue(getStringValue());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        if (nodeInfo instanceof NamespaceNode) {
            NamespaceNode namespaceNode = (NamespaceNode) nodeInfo;
            if (this.f102426e.equals(namespaceNode.f102426e)) {
                return Integer.compare(this.f102428g - namespaceNode.f102428g, 0);
            }
        }
        if (this.f102426e.equals(nodeInfo)) {
            return 1;
        }
        return this.f102426e.compareOrder(nodeInfo);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.append(this);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        if (obj instanceof NamespaceNode) {
            NamespaceNode namespaceNode = (NamespaceNode) obj;
            if (this.f102426e.equals(namespaceNode.f102426e) && this.f102427f.equals(namespaceNode.f102427f)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        this.f102426e.generateId(sb);
        sb.append(GoogleApiAvailabilityLight.f29016b);
        sb.append(this.f102428g);
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
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.f102426e.getColumnNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.f102426e.getConfiguration();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        return getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        if (this.f102429h == -1) {
            if (this.f102427f.getPrefix().isEmpty()) {
                return -1;
            }
            this.f102429h = this.f102426e.getConfiguration().getNamePool().allocateFingerprint("", this.f102427f.getPrefix());
        }
        return this.f102429h;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.f102426e.getLineNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        return this.f102427f.getPrefix();
    }

    public NamePool getNamePool() {
        return getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return 13;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        return this.f102426e;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        return "";
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return this.f102426e.getPublicId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this.f102426e.getRoot();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return BuiltInAtomicType.STRING;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public String getStringValue() {
        return this.f102427f.getURI();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102426e.getSystemId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.f102426e.getTreeInfo();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        return "";
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return StringView.tidy(this.f102427f.getURI());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (this.f102428g << 13) ^ this.f102426e.hashCode();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue, net.p110sf.saxon.om.Sequence
    public NodeInfo head() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public boolean isStreamed() {
        return this.f102426e.isStreamed();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        NodeTest nodeTestFromPredicate = Navigator.nodeTestFromPredicate(nodePredicate);
        switch (i) {
            case 0:
                return this.f102426e.iterateAxis(1, nodeTestFromPredicate);
            case 1:
                return nodeTestFromPredicate.test(this) ? new PrependAxisIterator(this, this.f102426e.iterateAxis(1, nodeTestFromPredicate)) : this.f102426e.iterateAxis(1, nodeTestFromPredicate);
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
            case 11:
                return EmptyIterator.ofNodes();
            case 6:
                return new Navigator.AxisFilter(new Navigator.FollowingEnumeration(this), nodeTestFromPredicate);
            case 9:
                return Navigator.filteredSingleton(this.f102426e, nodeTestFromPredicate);
            case 10:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, false), nodeTestFromPredicate);
            case 12:
                return Navigator.filteredSingleton(this, nodeTestFromPredicate);
            case 13:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, true), nodeTestFromPredicate);
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
    }
}
