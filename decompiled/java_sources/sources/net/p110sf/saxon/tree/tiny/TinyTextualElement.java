package net.p110sf.saxon.tree.tiny;

import android.R;
import java.util.ArrayList;
import java.util.function.Function;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.event.CopyNamespaceSensitiveException;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.CopyOptions;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.tree.iter.PrependAxisIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class TinyTextualElement extends TinyElementImpl {

    /* renamed from: e */
    public TinyTextualElementText f102575e;

    public TinyTextualElement(TinyTree tinyTree, int i) {
        super(tinyTree, i);
        this.f102575e = null;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyElementImpl, net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        SchemaType schemaType = CopyOptions.includes(i, 4) ? getSchemaType() : Untyped.getInstance();
        if ((i & 4) != 0 && (i & 2) == 0) {
            try {
                checkNotNamespaceSensitiveElement(schemaType, this.nodeNr);
            } catch (CopyNamespaceSensitiveException e) {
                e.setErrorCode(receiver.getPipelineConfiguration().isXSLT() ? "XTTE0950" : "XQTY0086");
                throw e;
            }
        }
        Function<NodeInfo, Object> copyInformee = receiver.getPipelineConfiguration().getCopyInformee();
        if (copyInformee != null) {
            Object apply = copyInformee.apply(this);
            if (apply instanceof Location) {
                location = (Location) apply;
            }
        }
        receiver.startElement(NameOfNode.makeName(this), schemaType, EmptyAttributeMap.getInstance(), (i & 2) != 0 ? getAllNamespaces() : !getURI().isEmpty() ? NamespaceMap.m63391of(getPrefix(), getURI()) : NamespaceMap.emptyMap(), location, 0);
        receiver.characters(getUnicodeStringValue(), location, 0);
        receiver.endElement();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyElementImpl, net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        TinyNodeImpl parent = getParent();
        return parent instanceof TinyElementImpl ? parent.getAllNamespaces() : NamespaceMap.emptyMap();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyElementImpl
    public String getAttributeValue(int i) {
        return null;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyElementImpl, net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return NamespaceBinding.EMPTY_ARRAY;
    }

    public TinyTextualElementText getTextNode() {
        if (this.f102575e == null) {
            this.f102575e = new TinyTextualElementText(this);
        }
        return this.f102575e;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyParentNodeImpl, net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return TinyTextImpl.getStringValue(this.tree, this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyParentNodeImpl, net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return true;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl
    public boolean isAncestorOrSelf(TinyNodeImpl tinyNodeImpl) {
        return equals(tinyNodeImpl);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        if (i == 2) {
            return EmptyIterator.ofNodes();
        }
        if (i == 3 || i == 4) {
            return SingleNodeIterator.makeIterator(getTextNode());
        }
        if (i != 5) {
            return super.iterateAxis(i);
        }
        return new ArrayIterator.OfNodes(new NodeInfo[]{this, getTextNode()});
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyElementImpl, net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        return null;
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        if (i == 2) {
            return EmptyIterator.ofNodes();
        }
        if (i == 3 || i == 4) {
            return Navigator.filteredSingleton(getTextNode(), nodePredicate);
        }
        if (i != 5) {
            return super.iterateAxis(i, nodePredicate);
        }
        ArrayList arrayList = new ArrayList(2);
        if (nodePredicate.test(this)) {
            arrayList.add(this);
        }
        if (nodePredicate.test(getTextNode())) {
            arrayList.add(getTextNode());
        }
        return new NodeListIterator(arrayList);
    }

    /* loaded from: classes11.dex */
    public static class TinyTextualElementText implements NodeInfo, SourceLocator {

        /* renamed from: e */
        public final TinyTextualElement f102576e;

        public TinyTextualElementText(TinyTextualElement tinyTextualElement) {
            this.f102576e = tinyTextualElement;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
        public AtomicSequence atomize() throws XPathException {
            return StringValue.makeUntypedAtomic(getUnicodeStringValue());
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public int compareOrder(NodeInfo nodeInfo) {
            if (nodeInfo.equals(this)) {
                return 0;
            }
            if (nodeInfo.equals(getParent())) {
                return 1;
            }
            return getParent().compareOrder(nodeInfo);
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public void copy(Receiver receiver, int i, Location location) throws XPathException {
            receiver.characters(getUnicodeStringValue(), location, 0);
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public boolean equals(Object obj) {
            return (obj instanceof TinyTextualElementText) && getParent().equals(((TinyTextualElementText) obj).getParent());
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public void generateId(StringBuilder sb) {
            this.f102576e.generateId(sb);
            sb.append("T");
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
            return this.f102576e.getBaseURI();
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getColumnNumber() {
            return getParent().getColumnNumber();
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
            return null;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getDisplayName() {
            return "";
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public int getFingerprint() {
            return -1;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public int getLineNumber() {
            return getParent().getLineNumber();
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getLocalPart() {
            return "";
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public final int getNodeKind() {
            return 3;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
        public NodeInfo getParent() {
            return this.f102576e;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getPrefix() {
            return "";
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public NodeInfo getRoot() {
            return this.f102576e.getRoot();
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public SchemaType getSchemaType() {
            return null;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getSystemId() {
            return this.f102576e.getSystemId();
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public TreeInfo getTreeInfo() {
            return this.f102576e.getTreeInfo();
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getURI() {
            return "";
        }

        @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
        public UnicodeString getUnicodeStringValue() {
            return this.f102576e.getUnicodeStringValue();
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
            return getParent().hashCode() ^ R.attr.cacheColorHint;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public AxisIterator iterateAxis(int i) {
            switch (i) {
                case 0:
                    return this.f102576e.iterateAxis(1);
                case 1:
                    return new PrependAxisIterator(this, getParent().iterateAxis(1));
                case 2:
                case 3:
                case 4:
                case 7:
                case 8:
                case 11:
                    return EmptyIterator.ofNodes();
                case 5:
                case 12:
                    return SingleNodeIterator.makeIterator(this);
                case 6:
                    return new Navigator.FollowingEnumeration(this);
                case 9:
                    return SingleNodeIterator.makeIterator(getParent());
                case 10:
                    return new Navigator.PrecedingEnumeration(this, false);
                case 13:
                    return new Navigator.PrecedingEnumeration(this, true);
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

        @Override // net.p110sf.saxon.om.NodeInfo
        public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
            NodeTest nodeTestFromPredicate = Navigator.nodeTestFromPredicate(nodePredicate);
            switch (i) {
                case 0:
                    return getParent().iterateAxis(1, nodeTestFromPredicate);
                case 1:
                    return new Navigator.AxisFilter(new PrependAxisIterator(this, getParent().iterateAxis(1)), nodeTestFromPredicate);
                case 2:
                case 3:
                case 4:
                case 7:
                case 8:
                case 11:
                    return EmptyIterator.ofNodes();
                case 5:
                case 12:
                    return Navigator.filteredSingleton(this, nodeTestFromPredicate);
                case 6:
                    return new Navigator.AxisFilter(new Navigator.FollowingEnumeration(this), nodeTestFromPredicate);
                case 9:
                    return Navigator.filteredSingleton(getParent(), nodeTestFromPredicate);
                case 10:
                    return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, false), nodeTestFromPredicate);
                case 13:
                    return new Navigator.AxisFilter(new Navigator.PrecedingEnumeration(this, true), nodeTestFromPredicate);
                default:
                    throw new IllegalArgumentException("Unknown axis number " + i);
            }
        }
    }
}
