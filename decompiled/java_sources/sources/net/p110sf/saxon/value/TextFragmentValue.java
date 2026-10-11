package net.p110sf.saxon.value;

import com.sunia.HTREnginev2.gon;
import java.util.Collections;
import java.util.Iterator;
import javax.xml.transform.SourceLocator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.GenericTreeInfo;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.pattern.NodePredicate;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.ArrayIterator;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.SingleNodeIterator;
import net.p110sf.saxon.tree.linked.DocumentImpl;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public final class TextFragmentValue implements NodeInfo, SourceLocator {

    /* renamed from: e */
    public final UnicodeString f102927e;

    /* renamed from: f */
    public final String f102928f;

    /* renamed from: g */
    public String f102929g;

    /* renamed from: h */
    public final GenericTreeInfo f102930h;

    /* renamed from: i */
    public C18573a f102931i = null;

    public TextFragmentValue(Configuration configuration, UnicodeString unicodeString, String str) {
        this.f102927e = unicodeString;
        this.f102928f = str;
        GenericTreeInfo genericTreeInfo = new GenericTreeInfo(configuration);
        this.f102930h = genericTreeInfo;
        genericTreeInfo.setRootNode(this);
    }

    public static NodeInfo makeTextFragment(Configuration configuration, UnicodeString unicodeString, String str) {
        if (unicodeString.length() != 0) {
            return new TextFragmentValue(configuration, unicodeString, str);
        }
        DocumentImpl documentImpl = new DocumentImpl();
        documentImpl.setSystemId(str);
        documentImpl.setBaseURI(str);
        documentImpl.setConfiguration(configuration);
        return documentImpl;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public AtomicSequence atomize() {
        return StringValue.makeUntypedAtomic(this.f102927e);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int compareOrder(NodeInfo nodeInfo) {
        return this == nodeInfo ? 0 : -1;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.characters(this.f102927e, location, 0);
    }

    /* renamed from: d */
    public final C18573a m64681d() {
        if (this.f102931i == null) {
            this.f102931i = new C18573a(this);
        }
        return this.f102931i;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append(gon.f71287n);
        sb.append(this.f102930h.getDocumentNumber());
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
        return this.f102928f;
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

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getLocalPart() {
        return "";
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 9;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.tree.util.SteppingNode
    public NodeInfo getParent() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getPrefix() {
        return "";
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this;
    }

    public NodeInfo getRootNode() {
        return this;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return Untyped.getInstance();
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102929g;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public TreeInfo getTreeInfo() {
        return this.f102930h;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public String getURI() {
        return "";
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return this.f102927e;
    }

    public String[] getUnparsedEntity(String str) {
        return null;
    }

    public Iterator<String> getUnparsedEntityNames() {
        return Collections.emptyIterator();
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        return this.f102927e.length() != 0;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean hasFingerprint() {
        return true;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public int hashCode() {
        return System.identityHashCode(this);
    }

    public boolean isTyped() {
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i) {
        switch (i) {
            case 0:
            case 2:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                return EmptyIterator.ofNodes();
            case 1:
            case 12:
                return SingleNodeIterator.makeIterator(this);
            case 3:
            case 4:
                return SingleNodeIterator.makeIterator(m64681d());
            case 5:
                return new ArrayIterator.OfNodes(new NodeInfo[]{this, m64681d()});
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }

    @Override // net.p110sf.saxon.s9api.Location
    public Location saveLocation() {
        return this;
    }

    public NodeInfo selectID(String str, boolean z) {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f102929g = str;
    }

    /* renamed from: net.sf.saxon.value.TextFragmentValue$a */
    /* loaded from: classes11.dex */
    public static class C18573a implements NodeInfo, SourceLocator {

        /* renamed from: e */
        public final TextFragmentValue f102932e;

        public C18573a(TextFragmentValue textFragmentValue) {
            this.f102932e = textFragmentValue;
        }

        /* renamed from: a */
        public boolean m64682a(NodeInfo nodeInfo) {
            return this == nodeInfo;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
        public AtomicSequence atomize() throws XPathException {
            return StringValue.makeUntypedAtomic(this.f102932e.f102927e);
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public int compareOrder(NodeInfo nodeInfo) {
            return this == nodeInfo ? 0 : 1;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public void copy(Receiver receiver, int i, Location location) throws XPathException {
            receiver.characters(this.f102932e.f102927e, location, 0);
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public void generateId(StringBuilder sb) {
            sb.append(gon.f71287n);
            sb.append(this.f102932e.f102930h.getDocumentNumber());
            sb.append("t1");
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
            return this.f102932e.f102928f;
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
            return this.f102932e;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getPrefix() {
            return "";
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public NodeInfo getRoot() {
            return this.f102932e;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public SchemaType getSchemaType() {
            return null;
        }

        @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
        public String getSystemId() {
            return null;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public TreeInfo getTreeInfo() {
            return this.f102932e.f102930h;
        }

        @Override // net.p110sf.saxon.om.NodeInfo
        public String getURI() {
            return "";
        }

        @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
        public UnicodeString getUnicodeStringValue() {
            return this.f102932e.f102927e;
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
        public AxisIterator iterateAxis(int i) {
            switch (i) {
                case 0:
                case 9:
                case 13:
                    return SingleNodeIterator.makeIterator(this.f102932e);
                case 1:
                    return new ArrayIterator.OfNodes(new NodeInfo[]{this, this.f102932e});
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                    return EmptyIterator.ofNodes();
                case 5:
                case 12:
                    return SingleNodeIterator.makeIterator(this);
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
            switch (i) {
                case 0:
                case 9:
                case 13:
                    return Navigator.filteredSingleton(this.f102932e, nodePredicate);
                case 1:
                    boolean test = nodePredicate.test(this.f102932e);
                    boolean test2 = nodePredicate.test(this);
                    if (test && test2) {
                        return new ArrayIterator.OfNodes(new NodeInfo[]{this, this.f102932e});
                    }
                    if (test) {
                        return SingleNodeIterator.makeIterator(this.f102932e);
                    }
                    if (test2) {
                        return SingleNodeIterator.makeIterator(this);
                    }
                    return EmptyIterator.ofNodes();
                case 2:
                case 3:
                case 4:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                    return EmptyIterator.ofNodes();
                case 5:
                case 12:
                    return Navigator.filteredSingleton(this, nodePredicate);
                default:
                    throw new IllegalArgumentException("Unknown axis number " + i);
            }
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public AxisIterator iterateAxis(int i, NodePredicate nodePredicate) {
        switch (i) {
            case 0:
            case 2:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
                return EmptyIterator.ofNodes();
            case 1:
            case 12:
                return Navigator.filteredSingleton(this, nodePredicate);
            case 3:
            case 4:
                return Navigator.filteredSingleton(m64681d(), nodePredicate);
            case 5:
                boolean test = nodePredicate.test(this);
                C18573a m64681d = m64681d();
                boolean test2 = nodePredicate.test(m64681d);
                if (test) {
                    if (test2) {
                        return new ArrayIterator.OfNodes(new NodeInfo[]{this, m64681d});
                    }
                    return SingleNodeIterator.makeIterator(this);
                }
                if (test2) {
                    return SingleNodeIterator.makeIterator(m64681d);
                }
                return EmptyIterator.ofNodes();
            default:
                throw new IllegalArgumentException("Unknown axis number " + i);
        }
    }
}
