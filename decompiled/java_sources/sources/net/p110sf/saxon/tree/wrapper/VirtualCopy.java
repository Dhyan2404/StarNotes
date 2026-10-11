package net.p110sf.saxon.tree.wrapper;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Supplier;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.NamespaceNode;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.tree.wrapper.VirtualCopy;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class VirtualCopy implements NodeInfo {

    /* renamed from: e */
    public boolean f102728e = false;
    protected NodeInfo original;
    protected VirtualCopy parent;
    protected NodeInfo root;
    protected Supplier<String> systemIdSupplier;
    protected VirtualTreeInfo tree;

    /* loaded from: classes11.dex */
    public static class VirtualCopier implements AxisIterator {
        protected AxisIterator base;

        /* renamed from: e */
        public final VirtualCopy f102729e;
        protected VirtualCopy node;
        protected boolean testInclusion;

        public VirtualCopier(VirtualCopy virtualCopy, AxisIterator axisIterator, VirtualCopy virtualCopy2, boolean z) {
            this.node = virtualCopy;
            this.base = axisIterator;
            this.f102729e = virtualCopy2;
            this.testInclusion = z;
        }

        @Override // net.p110sf.saxon.om.SequenceIterator, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.base.close();
        }

        @Override // net.p110sf.saxon.om.SequenceIterator
        public void discharge() {
            this.base.discharge();
        }

        @Override // net.p110sf.saxon.tree.iter.AxisIterator, net.p110sf.saxon.om.SequenceIterator
        public NodeInfo next() {
            NodeInfo next = this.base.next();
            if (next == null) {
                return next;
            }
            if (this.testInclusion && !this.node.isIncludedInCopy(next)) {
                return null;
            }
            VirtualCopy wrap = this.node.wrap(next);
            wrap.parent = this.f102729e;
            wrap.systemIdSupplier = this.node.systemIdSupplier;
            return wrap;
        }
    }

    public VirtualCopy(final NodeInfo nodeInfo, NodeInfo nodeInfo2) {
        this.original = nodeInfo;
        this.systemIdSupplier = new Supplier() { // from class: com.sunia.HTREnginev2.f5o
            @Override // java.util.function.Supplier
            public final Object get() {
                String baseURI;
                baseURI = NodeInfo.this.getBaseURI();
                return baseURI;
            }
        };
        this.root = nodeInfo2;
    }

    /* renamed from: d */
    public static /* synthetic */ String m64593d(String str) {
        return str;
    }

    public static VirtualCopy makeVirtualCopy(NodeInfo nodeInfo) {
        while (nodeInfo instanceof VirtualCopy) {
            nodeInfo = ((VirtualCopy) nodeInfo).original;
        }
        VirtualCopy virtualCopy = new VirtualCopy(nodeInfo, nodeInfo);
        Configuration configuration = nodeInfo.getConfiguration();
        VirtualTreeInfo virtualTreeInfo = new VirtualTreeInfo(configuration, virtualCopy);
        virtualTreeInfo.setDocumentNumber(configuration.getDocumentNumberAllocator().allocateDocumentNumber());
        virtualCopy.tree = virtualTreeInfo;
        return virtualCopy;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        return this.original.atomize();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        if (!(nodeInfo instanceof VirtualCopy)) {
            return nodeInfo.compareOrder(this.original);
        }
        VirtualCopy virtualCopy = (VirtualCopy) nodeInfo;
        int compareOrder = this.root.compareOrder(virtualCopy.root);
        return compareOrder == 0 ? this.original.compareOrder(virtualCopy.original) : compareOrder;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        if (this.f102728e) {
            i &= -3;
        }
        this.original.copy(receiver, i, location);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        if (obj instanceof VirtualCopy) {
            VirtualCopy virtualCopy = (VirtualCopy) obj;
            if (getTreeInfo() == virtualCopy.getTreeInfo() && this.original.equals(virtualCopy.original)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append("d");
        sb.append(getTreeInfo().getDocumentNumber());
        this.original.generateId(sb);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        if (getNodeKind() != 1) {
            return null;
        }
        if (!this.f102728e) {
            return this.original.getAllNamespaces();
        }
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        String uri = getURI();
        if (!uri.isEmpty()) {
            emptyMap = emptyMap.put(getPrefix(), uri);
        }
        AxisIterator iterateAxis = this.original.iterateAxis(2);
        while (true) {
            NodeInfo next = iterateAxis.next();
            if (next == null) {
                return emptyMap;
            }
            if (!next.getURI().equals("")) {
                emptyMap = emptyMap.put(next.getPrefix(), next.getURI());
            }
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        return this.original.getAttributeValue(str, str2);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return Navigator.getBaseURI(this);
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        return this.original.getColumnNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.original.getConfiguration();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        if (getNodeKind() != 1) {
            return null;
        }
        if (!this.f102728e) {
            NodeInfo nodeInfo = this.original;
            if (nodeInfo != this.root) {
                return nodeInfo.getDeclaredNamespaces(namespaceBindingArr);
            }
            ArrayList arrayList = new ArrayList();
            Iterator<NamespaceBinding> it2 = this.original.getAllNamespaces().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            return (NamespaceBinding[]) arrayList.toArray(NamespaceBinding.EMPTY_ARRAY);
        }
        ArrayList arrayList2 = new ArrayList(5);
        if (!getURI().isEmpty()) {
            arrayList2.add(new NamespaceBinding(getPrefix(), getURI()));
        } else if (getParent() != null && !getParent().getURI().isEmpty()) {
            arrayList2.add(new NamespaceBinding("", ""));
        }
        Iterator<AttributeInfo> it3 = this.original.attributes().iterator();
        while (it3.hasNext()) {
            NodeName nodeName = it3.next().getNodeName();
            if (nodeName.getURI() != null) {
                NamespaceBinding namespaceBinding = new NamespaceBinding(nodeName.getPrefix(), nodeName.getURI());
                if (!arrayList2.contains(namespaceBinding)) {
                    arrayList2.add(namespaceBinding);
                }
            }
        }
        return (NamespaceBinding[]) arrayList2.toArray(NamespaceBinding.EMPTY_ARRAY);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        return this.original.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        return this.original.getFingerprint();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return this.original.getLineNumber();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        return this.original.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return this.original.getNodeKind();
    }

    public NodeInfo getOriginalNode() {
        return this.original;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        if (this.original.equals(this.root)) {
            return null;
        }
        if (this.parent == null) {
            NodeInfo parent = this.original.getParent();
            if (parent == null) {
                return null;
            }
            this.parent = wrap(parent);
        }
        return this.parent;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        return this.original.getPrefix();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        NodeInfo nodeInfo = this.original;
        if (nodeInfo != null) {
            return nodeInfo.getPublicId();
        }
        return null;
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
        return this.original.getSchemaType();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.systemIdSupplier.get();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        return this.original.getURI();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.original.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return this.original.hasChildNodes();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return this.original.hasFingerprint();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return (((int) (getTreeInfo().getDocumentNumber() & 2147483647L)) << 19) ^ this.original.hashCode();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return this.original.isId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return this.original.isIdref();
    }

    public boolean isIncludedInCopy(NodeInfo nodeInfo) {
        return Navigator.isAncestorOrSelf(this.root, nodeInfo);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return this.original.isNilled();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        VirtualCopy virtualCopy;
        switch (i) {
            case 0:
                return new Navigator.AxisFilter(new Navigator.AncestorEnumeration(this, false), nodePredicate);
            case 1:
                return new Navigator.AxisFilter(new Navigator.AncestorEnumeration(this, true), nodePredicate);
            case 2:
            case 3:
                virtualCopy = this;
                break;
            case 4:
            case 5:
            default:
                virtualCopy = null;
                break;
            case 6:
                return new Navigator.AxisFilter(new Navigator.FollowingEnumeration(this), nodePredicate);
            case 7:
            case 11:
            case 12:
                virtualCopy = this.parent;
                break;
            case 8:
                return getNodeKind() != 1 ? EmptyIterator.ofNodes() : NamespaceNode.makeIterator(this, nodePredicate);
            case 9:
                return Navigator.filteredSingleton(getParent(), nodePredicate);
            case 10:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, false), nodePredicate);
            case 13:
                return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, true), nodePredicate);
        }
        return makeCopier(this.original.iterateAxis(i, nodePredicate), virtualCopy, !AxisInfo.isSubtreeAxis[i]);
    }

    public VirtualCopier makeCopier(AxisIterator axisIterator, VirtualCopy virtualCopy, boolean z) {
        return new VirtualCopier(this, axisIterator, virtualCopy, z);
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public void setDropNamespaces(boolean z) {
        this.f102728e = z;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(final String str) {
        this.systemIdSupplier = new Supplier() { // from class: com.sunia.HTREnginev2.e5o
            @Override // java.util.function.Supplier
            public final Object get() {
                String m64593d;
                m64593d = VirtualCopy.m64593d(str);
                return m64593d;
            }
        };
    }

    public VirtualCopy wrap(NodeInfo nodeInfo) {
        VirtualCopy virtualCopy = new VirtualCopy(nodeInfo, this.root);
        virtualCopy.tree = this.tree;
        virtualCopy.systemIdSupplier = this.systemIdSupplier;
        virtualCopy.f102728e = this.f102728e;
        return virtualCopy;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public VirtualTreeInfo getTreeInfo() {
        return this.tree;
    }
}
