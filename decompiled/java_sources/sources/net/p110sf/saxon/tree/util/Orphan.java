package net.p110sf.saxon.tree.util;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.MutableNodeInfo;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class Orphan implements MutableNodeInfo {

    /* renamed from: e */
    public short f102696e;

    /* renamed from: g */
    public UnicodeString f102698g;

    /* renamed from: j */
    public final GenericTreeInfo f102701j;

    /* renamed from: f */
    public NodeName f102697f = null;

    /* renamed from: h */
    public SchemaType f102699h = null;

    /* renamed from: i */
    public int f102700i = 0;

    public Orphan(Configuration configuration) {
        GenericTreeInfo genericTreeInfo = new GenericTreeInfo(configuration);
        this.f102701j = genericTreeInfo;
        genericTreeInfo.setRootNode(this);
    }

    /* renamed from: a */
    public final boolean m64579a(int i) {
        return ReceiverOption.contains(this.f102700i, i);
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void addAttribute(NodeName nodeName, SimpleType simpleType, String str, int i, boolean z) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void addNamespace(NamespaceBinding namespaceBinding, boolean z) {
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() throws XPathException {
        SchemaType schemaType;
        int nodeKind = getNodeKind();
        if (nodeKind != 3 && nodeKind != 13) {
            if (nodeKind == 7 || nodeKind == 8) {
                return new StringValue(this.f102698g);
            }
            if (nodeKind != 9) {
                SchemaType schemaType2 = this.f102699h;
                return (schemaType2 == null || schemaType2 == Untyped.getInstance() || (schemaType = this.f102699h) == BuiltInAtomicType.UNTYPED_ATOMIC) ? StringValue.makeUntypedAtomic(getUnicodeStringValue()) : schemaType.atomize(this);
            }
        }
        return StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }

    /* renamed from: b */
    public final void m64580b(int i, boolean z) {
        if (z) {
            this.f102700i = i | this.f102700i;
        } else {
            this.f102700i = (~i) & this.f102700i;
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        if (equals(nodeInfo)) {
            return 0;
        }
        return hashCode() < nodeInfo.hashCode() ? -1 : 1;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void delete() {
        this.f102696e = (short) -1;
    }

    @Override // net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return true;
    }

    public boolean equals(NodeInfo nodeInfo) {
        return this == nodeInfo;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append('Q');
        sb.append(hashCode());
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
        if (this.f102696e == 7) {
            return getSystemId();
        }
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getDisplayName() {
        NodeName nodeName = this.f102697f;
        return nodeName == null ? "" : nodeName.getDisplayName();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getFingerprint() {
        throw new UnsupportedOperationException();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        NodeName nodeName = this.f102697f;
        return nodeName == null ? "" : nodeName.getLocalPart();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int getNodeKind() {
        return this.f102696e;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        NodeName nodeName = this.f102697f;
        return nodeName == null ? "" : nodeName.getPrefix();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getPublicId() {
        return this.f102701j.getPublicId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        SchemaType schemaType = this.f102699h;
        if (schemaType == null) {
            short s = this.f102696e;
            if (s == 1) {
                return Untyped.getInstance();
            }
            if (s == 2) {
                return BuiltInAtomicType.UNTYPED_ATOMIC;
            }
        }
        return schemaType;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102701j.getSystemId();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.f102701j;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        NodeName nodeName = this.f102697f;
        return nodeName == null ? "" : nodeName.getURI();
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.f102698g;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return super.hashCode();
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void insertChildren(NodeInfo[] nodeInfoArr, boolean z, boolean z2) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void insertSiblings(NodeInfo[] nodeInfoArr, boolean z, boolean z2) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public boolean isDeleted() {
        return this.f102696e == -1;
    }

    public boolean isDisableOutputEscaping() {
        return m64579a(1);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        return m64579a(2048) || (this.f102696e == 2 && this.f102697f.equals(StandardNames.XML_ID_NAME));
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return m64579a(4096);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        switch (i) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                return EmptyIterator.ofNodes();
            case 1:
            case 5:
            case 12:
                return SingleNodeIterator.makeIterator(this);
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public Builder newBuilder() {
        throw new UnsupportedOperationException("Cannot create children for an Orphan node");
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void removeAttribute(NodeInfo nodeInfo) {
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void removeTypeAnnotation() {
        this.f102699h = BuiltInAtomicType.UNTYPED_ATOMIC;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void rename(NodeName nodeName, boolean z) {
        short s = this.f102696e;
        if (s == 2 || s == 7) {
            this.f102697f = nodeName;
        }
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replace(NodeInfo[] nodeInfoArr, boolean z) {
        throw new IllegalStateException("Cannot replace a parentless node");
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        this.f102698g = unicodeString;
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void setAttributes(AttributeMap attributeMap) {
        throw new UnsupportedOperationException();
    }

    public void setDisableOutputEscaping(boolean z) {
        m64580b(1, z);
    }

    public void setIsId(boolean z) {
        m64580b(2048, z);
    }

    public void setIsIdref(boolean z) {
        m64580b(4096, z);
    }

    public void setNodeKind(short s) {
        this.f102696e = s;
    }

    public void setNodeName(NodeName nodeName) {
        this.f102697f = nodeName;
    }

    public void setStringValue(UnicodeString unicodeString) {
        this.f102698g = unicodeString;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f102701j.setSystemId(str);
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void setTypeAnnotation(SchemaType schemaType) {
        this.f102699h = schemaType;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        switch (i) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                return EmptyIterator.ofNodes();
            case 1:
            case 5:
            case 12:
                return Navigator.filteredSingleton(this, nodePredicate);
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }
}
