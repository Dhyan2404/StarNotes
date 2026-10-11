package net.p110sf.saxon.tree.linked;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.CopyOptions;
import net.p110sf.saxon.om.MutableDocumentInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.om.TreeInfo;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.iter.NodeListIterator;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public final class DocumentImpl extends ParentNodeImpl implements TreeInfo, MutableDocumentInfo {

    /* renamed from: y */
    public static final /* synthetic */ boolean f102494y = false;

    /* renamed from: j */
    public ElementImpl f102495j;

    /* renamed from: k */
    public HashMap<String, NodeInfo> f102496k;

    /* renamed from: l */
    public long f102497l;

    /* renamed from: m */
    public String f102498m;

    /* renamed from: n */
    public HashMap<String, String[]> f102499n;

    /* renamed from: o */
    public Set<ElementImpl> f102500o;

    /* renamed from: p */
    public Set<ElementImpl> f102501p;

    /* renamed from: q */
    public IntHashMap<List<NodeInfo>> f102502q;

    /* renamed from: r */
    public HashMap<String, Object> f102503r;

    /* renamed from: s */
    public Configuration f102504s;

    /* renamed from: t */
    public LineNumberMap f102505t;

    /* renamed from: v */
    public boolean f102507v;

    /* renamed from: w */
    public boolean f102508w;

    /* renamed from: u */
    public SystemIdMap f102506u = new SystemIdMap();

    /* renamed from: x */
    public SpaceStrippingRule f102509x = NoElementsSpaceStrippingRule.getInstance();

    public DocumentImpl() {
        setRawParent(null);
    }

    public void addNilledElement(ElementImpl elementImpl) {
        if (this.f102500o == null) {
            this.f102500o = new HashSet();
        }
        this.f102500o.add(elementImpl);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.startDocument(CopyOptions.getStartDocumentProperties(i));
        Iterator<String> unparsedEntityNames = getUnparsedEntityNames();
        while (unparsedEntityNames.hasNext()) {
            String next = unparsedEntityNames.next();
            String[] unparsedEntity = getUnparsedEntity(next);
            receiver.setUnparsedEntity(next, unparsedEntity[0], unparsedEntity[1]);
        }
        for (NodeImpl firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            firstChild.copy(receiver, i, location);
        }
        receiver.endDocument();
    }

    public void deIndex(NodeImpl nodeImpl) {
        if (!(nodeImpl instanceof ElementImpl)) {
            if ((nodeImpl instanceof AttributeImpl) && nodeImpl.isId()) {
                m64521e(nodeImpl.getStringValue());
                return;
            }
            return;
        }
        IntHashMap<List<NodeInfo>> intHashMap = this.f102502q;
        if (intHashMap != null) {
            List<NodeInfo> list = intHashMap.get(nodeImpl.getFingerprint());
            if (list == null) {
                return;
            } else {
                list.remove(nodeImpl);
            }
        }
        if (nodeImpl.isId()) {
            m64521e(nodeImpl.getStringValue());
        }
    }

    /* renamed from: e */
    public void m64521e(String str) {
        String trim = Whitespace.trim(str);
        HashMap<String, NodeInfo> hashMap = this.f102496k;
        if (hashMap != null) {
            hashMap.remove(trim);
        }
    }

    /* renamed from: f */
    public AxisIterator m64522f(int i) {
        if (this.f102502q == null) {
            this.f102502q = new IntHashMap<>(500);
        }
        IntHashMap<List<NodeInfo>> intHashMap = this.f102502q;
        List<NodeInfo> list = intHashMap.get(i);
        if (list == null) {
            list = new ArrayList<>(500);
            NodeImpl nextInDocument = getNextInDocument(this);
            while (nextInDocument != null) {
                if (nextInDocument.getNodeKind() == 1 && nextInDocument.getFingerprint() == i) {
                    list.add(nextInDocument);
                }
                nextInDocument = nextInDocument.getNextInDocument(this);
            }
            intHashMap.put(i, list);
        }
        return new NodeListIterator(list);
    }

    /* renamed from: g */
    public int m64523g(int i) {
        LineNumberMap lineNumberMap = this.f102505t;
        if (lineNumberMap == null || i < 0) {
            return -1;
        }
        return lineNumberMap.getColumnNumber(i);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        sb.append('d');
        sb.append(this.f102497l);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        String str = this.f102498m;
        return str != null ? str : getSystemId();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public Configuration getConfiguration() {
        return this.f102504s;
    }

    public ElementImpl getDocumentElement() {
        return this.f102495j;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public long getDocumentNumber() {
        return this.f102497l;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        return 0;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NamePool getNamePool() {
        return this.f102504s.getNamePool();
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.tree.util.SteppingNode
    public final NodeImpl getNextSibling() {
        return null;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 9;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public DocumentImpl getPhysicalRoot() {
        return this;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.tree.util.SteppingNode
    public final NodeImpl getPreviousSibling() {
        return null;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        return this;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public NodeInfo getRootNode() {
        return this;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        ElementImpl elementImpl = this.f102495j;
        return (elementImpl == null || elementImpl.getSchemaType() == Untyped.getInstance()) ? Untyped.getInstance() : AnyType.getInstance();
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public SpaceStrippingRule getSpaceStrippingRule() {
        return this.f102509x;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public String getSystemId() {
        return this.f102506u.getSystemId(getRawSequenceNumber());
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public String[] getUnparsedEntity(String str) {
        HashMap<String, String[]> hashMap = this.f102499n;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public Iterator<String> getUnparsedEntityNames() {
        HashMap<String, String[]> hashMap = this.f102499n;
        return hashMap == null ? Collections.emptyList().iterator() : hashMap.keySet().iterator();
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public Object getUserData(String str) {
        HashMap<String, Object> hashMap = this.f102503r;
        if (hashMap == null) {
            return null;
        }
        return hashMap.get(str);
    }

    public void graftLocationMap(DocumentImpl documentImpl) {
        this.f102506u = documentImpl.f102506u;
        this.f102505t = documentImpl.f102505t;
    }

    /* renamed from: h */
    public int m64524h(int i) {
        LineNumberMap lineNumberMap = this.f102505t;
        if (lineNumberMap == null || i < 0) {
            return -1;
        }
        return lineNumberMap.getLineNumber(i);
    }

    /* renamed from: i */
    public String m64525i(int i) {
        return this.f102506u.getSystemId(i);
    }

    public boolean isImaginary() {
        return this.f102507v;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public boolean isMutable() {
        return this.f102508w;
    }

    public boolean isTopWithinEntity(ElementImpl elementImpl) {
        Set<ElementImpl> set = this.f102501p;
        return set != null && set.contains(elementImpl);
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public boolean isTyped() {
        ElementImpl elementImpl = this.f102495j;
        return (elementImpl == null || elementImpl.getSchemaType() == Untyped.getInstance()) ? false : true;
    }

    /* renamed from: j */
    public final void m64526j() {
        if (this.f102496k != null) {
            return;
        }
        this.f102496k = new HashMap<>(256);
        NodeImpl nodeImpl = this;
        while (nodeImpl != null) {
            if (nodeImpl.getNodeKind() == 1) {
                ElementImpl elementImpl = (ElementImpl) nodeImpl;
                if (elementImpl.isId()) {
                    m64528l(elementImpl, Whitespace.trim(elementImpl.getStringValue()));
                }
                for (AttributeInfo attributeInfo : elementImpl.attributes()) {
                    if (attributeInfo.isId() && NameChecker.isValidNCName(Whitespace.trim(attributeInfo.getValue()))) {
                        m64528l(elementImpl, Whitespace.trim(attributeInfo.getValue()));
                    }
                }
            }
            nodeImpl = nodeImpl.getNextInDocument(this);
        }
    }

    /* renamed from: k */
    public boolean m64527k(ElementImpl elementImpl) {
        Set<ElementImpl> set = this.f102500o;
        return set != null && set.contains(elementImpl);
    }

    /* renamed from: l */
    public void m64528l(NodeInfo nodeInfo, String str) {
        if (this.f102496k == null) {
            this.f102496k = new HashMap<>(256);
        }
        this.f102496k.putIfAbsent(str, nodeInfo);
    }

    /* renamed from: m */
    public void m64529m(int i, int i2, int i3) {
        LineNumberMap lineNumberMap = this.f102505t;
        if (lineNumberMap == null || i < 0) {
            return;
        }
        lineNumberMap.setLineAndColumn(i, i2, i3);
    }

    public void markTopWithinEntity(ElementImpl elementImpl) {
        if (this.f102501p == null) {
            this.f102501p = new HashSet();
        }
        this.f102501p.add(elementImpl);
    }

    /* renamed from: n */
    public void m64530n(int i, String str) {
        if (str == null) {
            str = "";
        }
        this.f102506u.setSystemId(i, str);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public Builder newBuilder() {
        LinkedTreeBuilder linkedTreeBuilder = new LinkedTreeBuilder(this.f102504s.makePipelineConfiguration());
        linkedTreeBuilder.setAllocateSequenceNumbers(false);
        return linkedTreeBuilder;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        throw new UnsupportedOperationException("Cannot replace the value of a document node");
    }

    @Override // net.p110sf.saxon.om.MutableDocumentInfo
    public void resetIndexes() {
        this.f102496k = null;
        this.f102502q = null;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public NodeInfo selectID(String str, boolean z) {
        if (this.f102496k == null) {
            m64526j();
        }
        NodeInfo nodeInfo = this.f102496k.get(str);
        return (nodeInfo != null && z && nodeInfo.isId() && nodeInfo.getUnicodeStringValue().equals(str)) ? nodeInfo.getParent() : nodeInfo;
    }

    public void setBaseURI(String str) {
        this.f102498m = str;
    }

    public void setConfiguration(Configuration configuration) {
        this.f102504s = configuration;
        this.f102497l = configuration.getDocumentNumberAllocator().allocateDocumentNumber();
    }

    public void setDocumentElement(ElementImpl elementImpl) {
        this.f102495j = elementImpl;
    }

    public void setImaginary(boolean z) {
        this.f102507v = z;
    }

    public void setLineNumbering() {
        LineNumberMap lineNumberMap = new LineNumberMap();
        this.f102505t = lineNumberMap;
        lineNumberMap.setLineAndColumn(getRawSequenceNumber(), 0, -1);
    }

    public void setMutable(boolean z) {
        this.f102508w = z;
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public void setSpaceStrippingRule(SpaceStrippingRule spaceStrippingRule) {
        this.f102509x = spaceStrippingRule;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        if (str == null) {
            str = "";
        }
        this.f102506u.setSystemId(getRawSequenceNumber(), str);
    }

    public void setUnparsedEntity(String str, String str2, String str3) {
        if (this.f102499n == null) {
            this.f102499n = new HashMap<>(10);
        }
        this.f102499n.put(str, new String[]{str2, str3});
    }

    @Override // net.p110sf.saxon.om.TreeInfo
    public void setUserData(String str, Object obj) {
        if (this.f102503r == null) {
            this.f102503r = new HashMap<>(4);
        }
        if (obj == null) {
            this.f102503r.remove(str);
        } else {
            this.f102503r.put(str, obj);
        }
    }
}
