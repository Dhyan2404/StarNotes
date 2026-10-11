package net.p110sf.saxon.tree.linked;

import com.miui.penengine.p015e.C6997f;
import com.sunia.HTREnginev2.C14703yg;
import com.sunia.HTREnginev2.tqo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Predicate;
import net.p110sf.saxon.event.CopyNamespaceSensitiveException;
import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeSelector;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;
import net.p110sf.saxon.tree.linked.ElementImpl;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.AnyType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.BuiltInListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class ElementImpl extends ParentNodeImpl implements NamespaceResolver {

    /* renamed from: j */
    public NodeName f102510j;

    /* renamed from: k */
    public SchemaType f102511k = Untyped.getInstance();

    /* renamed from: m */
    public NamespaceMap f102513m = NamespaceMap.emptyMap();

    /* renamed from: l */
    public AttributeMap f102512l = EmptyAttributeMap.getInstance();

    public static boolean isIdRefNode(NodeImpl nodeImpl) {
        SchemaType schemaType = nodeImpl.getSchemaType();
        try {
            if (schemaType.isIdRefType()) {
                if (schemaType != BuiltInAtomicType.IDREF && schemaType != BuiltInListType.IDREFS) {
                    Iterator<AtomicValue> it2 = nodeImpl.atomize().iterator();
                    while (it2.hasNext()) {
                        if (it2.next().getItemType().isIdRefType()) {
                        }
                    }
                }
                return true;
            }
        } catch (XPathException | MissingComponentException unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ boolean m64532j(NodeInfo nodeInfo) {
        return getPhysicalRoot().isTopWithinEntity((ElementImpl) nodeInfo);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void addAttribute(NodeName nodeName, SimpleType simpleType, String str, int i, boolean z) {
        DocumentImpl physicalRoot;
        setAttributes(m64537k().add(new AttributeInfo(nodeName, simpleType, str, Loc.NONE, 0)));
        if (!nodeName.hasURI("")) {
            NamespaceBinding namespaceBinding = nodeName.getNamespaceBinding();
            String uRIForPrefix = getURIForPrefix(namespaceBinding.getPrefix(), false);
            if (uRIForPrefix == null) {
                addNamespace(namespaceBinding, z);
            } else if (!uRIForPrefix.equals(namespaceBinding.getURI())) {
                throw new IllegalStateException("Namespace binding of new name conflicts with existing namespace binding");
            }
        }
        if (!ReceiverOption.contains(i, 2048) || (physicalRoot = getPhysicalRoot()) == null) {
            return;
        }
        physicalRoot.m64528l(this, Whitespace.trim(str));
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void addNamespace(NamespaceBinding namespaceBinding, boolean z) {
        if (!namespaceBinding.getURI().isEmpty()) {
            String uri = this.f102513m.getURI(namespaceBinding.getPrefix());
            if (uri != null) {
                if (!uri.equals(namespaceBinding.getURI())) {
                    throw new IllegalArgumentException("New namespace conflicts with existing namespace binding");
                }
                return;
            }
            NamespaceMap namespaceMap = this.f102513m;
            NamespaceMap put = namespaceMap.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
            this.f102513m = put;
            if (!z || put == namespaceMap) {
                return;
            }
            Iterator<? extends NodeInfo> it2 = children(NodeKindTest.ELEMENT).iterator();
            while (it2.hasNext()) {
                ((ElementImpl) it2.next()).m64535h(namespaceBinding, namespaceMap, this.f102513m);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot add a namespace undeclaration");
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public AttributeMap attributes() {
        return this.f102512l;
    }

    public void checkNotNamespaceSensitiveElement(SchemaType schemaType) throws XPathException {
        if ((schemaType instanceof SimpleType) && ((SimpleType) schemaType).isNamespaceSensitive()) {
            if (schemaType.isAtomicType()) {
                throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
            }
            Iterator<AtomicValue> it2 = atomize().iterator();
            while (it2.hasNext()) {
                if (it2.next().getPrimitiveType().isNamespaceSensitive()) {
                    throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e1 A[LOOP:1: B:52:0x00df->B:53:0x00e1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0038  */
    @Override // net.p110sf.saxon.om.NodeInfo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void copy(net.p110sf.saxon.event.Receiver r19, int r20, net.p110sf.saxon.s9api.Location r21) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.tree.linked.ElementImpl.copy(net.sf.saxon.event.Receiver, int, net.sf.saxon.s9api.Location):void");
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void delete() {
        DocumentImpl physicalRoot = getPhysicalRoot();
        super.delete();
        if (physicalRoot == null) {
            return;
        }
        AxisIterator iterateAxis = iterateAxis(5, NodeKindTest.ELEMENT);
        while (true) {
            ElementImpl elementImpl = (ElementImpl) iterateAxis.next();
            for (AttributeInfo attributeInfo : this.f102512l) {
                if (attributeInfo.isId()) {
                    physicalRoot.m64521e(attributeInfo.getValue());
                }
            }
            if (elementImpl == null) {
                return;
            } else {
                physicalRoot.deIndex(elementImpl);
            }
        }
    }

    /* renamed from: f */
    public final void m64533f(SimpleType simpleType, AttributeInfo attributeInfo) throws XPathException {
        if (simpleType.isNamespaceSensitive()) {
            if (simpleType.isAtomicType()) {
                throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
            }
            Iterator<AtomicValue> it2 = simpleType.getTypedValue(attributeInfo.getXdmStringValue().getUnicodeStringValue(), this.f102513m, getConfiguration().getConversionRules()).iterator();
            while (it2.hasNext()) {
                if (it2.next().getPrimitiveType().isNamespaceSensitive()) {
                    throw new CopyNamespaceSensitiveException("Cannot copy QName or NOTATION values without copying namespaces");
                }
            }
        }
    }

    public void fixupInsertedNamespaces(boolean z) {
        if (getRawParent().getNodeKind() == 9) {
            return;
        }
        NamespaceMap namespaceMap = ((ElementImpl) getRawParent()).f102513m;
        if (z) {
            m64534g(namespaceMap);
        }
    }

    /* renamed from: g */
    public final void m64534g(NamespaceMap namespaceMap) {
        NamespaceMap namespaceMap2 = this.f102513m;
        Iterator<NamespaceBinding> it2 = namespaceMap.iterator();
        while (it2.hasNext()) {
            NamespaceBinding next = it2.next();
            if (namespaceMap2.getURI(next.getPrefix()) == null) {
                namespaceMap2 = namespaceMap2.put(next.getPrefix(), next.getURI());
            } else {
                namespaceMap = namespaceMap.remove(next.getPrefix());
            }
        }
        this.f102513m = namespaceMap2;
        Iterator<? extends NodeInfo> it3 = children(NodeSelector.m63449of(new tqo(ElementImpl.class))).iterator();
        while (it3.hasNext()) {
            ((ElementImpl) it3.next()).m64534g(namespaceMap);
        }
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public void generateId(StringBuilder sb) {
        int rawSequenceNumber = getRawSequenceNumber();
        if (rawSequenceNumber >= 0) {
            getPhysicalRoot().generateId(sb);
            sb.append("e");
            sb.append(rawSequenceNumber);
        } else {
            getRawParent().generateId(sb);
            sb.append(C6997f.f39671c);
            sb.append(getSiblingPosition());
        }
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceMap getAllNamespaces() {
        return this.f102513m;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getAttributeValue(String str, String str2) {
        AttributeMap attributeMap = this.f102512l;
        if (attributeMap == null) {
            return null;
        }
        return attributeMap.getValue(str, str2);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public String getBaseURI() {
        return Navigator.getBaseURI(this, new Predicate() { // from class: com.sunia.HTREnginev2.umf
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m64532j;
                m64532j = ElementImpl.this.m64532j((NodeInfo) obj);
                return m64532j;
            }
        });
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getColumnNumber() {
        DocumentImpl physicalRoot = getPhysicalRoot();
        if (physicalRoot == null) {
            return -1;
        }
        return physicalRoot.m64523g(getRawSequenceNumber());
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public NamespaceBinding[] getDeclaredNamespaces(NamespaceBinding[] namespaceBindingArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<NamespaceBinding> it2 = this.f102513m.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        return (NamespaceBinding[]) arrayList.toArray(NamespaceBinding.EMPTY_ARRAY);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public int getLineNumber() {
        DocumentImpl physicalRoot = getPhysicalRoot();
        if (physicalRoot == null) {
            return -1;
        }
        return physicalRoot.m64524h(getRawSequenceNumber());
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 1;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl
    public NodeName getNodeName() {
        return this.f102510j;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public NodeInfo getRoot() {
        ParentNodeImpl rawParent = getRawParent();
        return rawParent != null ? ((rawParent instanceof DocumentImpl) && ((DocumentImpl) rawParent).isImaginary()) ? this : rawParent.getRoot() : this;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo
    public SchemaType getSchemaType() {
        return this.f102511k;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.s9api.Location, javax.xml.transform.SourceLocator
    public final String getSystemId() {
        DocumentImpl physicalRoot = getPhysicalRoot();
        if (physicalRoot == null) {
            return null;
        }
        return physicalRoot.m64525i(getRawSequenceNumber());
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public String getURIForPrefix(String str, boolean z) {
        return str.isEmpty() ? z ? this.f102513m.getDefaultNamespace() : "" : this.f102513m.getURI(str);
    }

    /* renamed from: h */
    public final void m64535h(NamespaceBinding namespaceBinding, NamespaceMap namespaceMap, NamespaceMap namespaceMap2) {
        NamespaceMap namespaceMap3 = this.f102513m;
        if (namespaceMap3.getURIForPrefix(namespaceBinding.getPrefix(), false) == null) {
            NamespaceMap namespaceMap4 = this.f102513m;
            if (namespaceMap4 == namespaceMap) {
                this.f102513m = namespaceMap2;
            } else {
                this.f102513m = namespaceMap4.put(namespaceBinding.getPrefix(), namespaceBinding.getURI());
            }
            Iterator<? extends NodeInfo> it2 = children(NodeKindTest.ELEMENT).iterator();
            while (it2.hasNext()) {
                ((ElementImpl) it2.next()).m64535h(namespaceBinding, namespaceMap3, this.f102513m);
            }
        }
    }

    /* renamed from: i */
    public AxisIterator m64536i(NodeTest nodeTest) {
        AttributeMap attributeMap = this.f102512l;
        return attributeMap instanceof AttributeMapWithIdentity ? new Navigator.AxisFilter(((AttributeMapWithIdentity) attributeMap).iterateAttributes(this), nodeTest) : new C14703yg(this, nodeTest);
    }

    public void initialise(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NodeInfo nodeInfo, int i) {
        this.f102510j = nodeName;
        this.f102511k = schemaType;
        setRawParent((ParentNodeImpl) nodeInfo);
        setRawSequenceNumber(i);
        this.f102512l = attributeMap;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isId() {
        try {
            SchemaType schemaType = getSchemaType();
            if (schemaType.getFingerprint() != 560) {
                if (!schemaType.isIdType()) {
                    return false;
                }
                if (!NameChecker.isValidNCName(getUnicodeStringValue().codePoints())) {
                    return false;
                }
            }
            return true;
        } catch (MissingComponentException unused) {
            return false;
        }
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isIdref() {
        return isIdRefNode(this);
    }

    public boolean isInScopeNamespace(String str) {
        Iterator<NamespaceBinding> it2 = this.f102513m.iterator();
        while (it2.hasNext()) {
            if (it2.next().getURI().equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public boolean isNilled() {
        return getPhysicalRoot().m64527k(this);
    }

    @Override // net.p110sf.saxon.om.NamespaceResolver
    public Iterator<String> iteratePrefixes() {
        return this.f102513m.iteratePrefixes();
    }

    /* renamed from: k */
    public final AttributeMapWithIdentity m64537k() {
        if (attributes() instanceof AttributeMapWithIdentity) {
            return (AttributeMapWithIdentity) attributes();
        }
        AttributeMapWithIdentity attributeMapWithIdentity = new AttributeMapWithIdentity(attributes().asList());
        setAttributes(attributeMapWithIdentity);
        return attributeMapWithIdentity;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void removeAttribute(NodeInfo nodeInfo) {
        if (nodeInfo instanceof AttributeImpl) {
            AttributeImpl attributeImpl = (AttributeImpl) nodeInfo;
            int siblingPosition = attributeImpl.getSiblingPosition();
            AttributeInfo itemAt = attributes().itemAt(siblingPosition);
            setAttributes(m64537k().remove(siblingPosition));
            if (siblingPosition >= 0 && itemAt.isId()) {
                getPhysicalRoot().m64521e(itemAt.getValue());
            }
            attributeImpl.setRawParent(null);
        }
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void removeNamespace(String str) {
        Objects.requireNonNull(str);
        if (str.equals(getPrefix())) {
            throw new IllegalStateException("Cannot remove binding of namespace prefix used on the element name");
        }
        Iterator<AttributeInfo> it2 = this.f102512l.iterator();
        while (it2.hasNext()) {
            if (it2.next().getNodeName().getPrefix().equals(str)) {
                throw new IllegalStateException("Cannot remove binding of namespace prefix used on an existing attribute name");
            }
        }
        this.f102513m = this.f102513m.remove(str);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void removeTypeAnnotation() {
        if (getSchemaType() != Untyped.getInstance()) {
            this.f102511k = AnyType.getInstance();
            getRawParent().removeTypeAnnotation();
        }
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void rename(NodeName nodeName, boolean z) {
        String prefix = nodeName.getPrefix();
        String uri = nodeName.getURI();
        NamespaceBinding namespaceBinding = new NamespaceBinding(prefix, uri);
        String uRIForPrefix = getURIForPrefix(prefix, true);
        if (uRIForPrefix == null) {
            uRIForPrefix = "";
        }
        if (!uRIForPrefix.equals(uri)) {
            if (!uRIForPrefix.isEmpty()) {
                throw new IllegalArgumentException("Namespace binding of new name conflicts with existing namespace binding");
            }
            addNamespace(namespaceBinding, z);
        }
        this.f102510j = nodeName;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void replaceStringValue(UnicodeString unicodeString) {
        if (unicodeString.isEmpty()) {
            setChildren(null);
            return;
        }
        TextImpl textImpl = new TextImpl(unicodeString);
        textImpl.setRawParent(this);
        setChildren(textImpl);
    }

    public void setAttributeInfo(int i, AttributeInfo attributeInfo) {
        setAttributes(m64537k().set(i, attributeInfo));
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void setAttributes(AttributeMap attributeMap) {
        this.f102512l = attributeMap;
    }

    public void setLocation(String str, int i, int i2) {
        DocumentImpl physicalRoot = getRawParent().getPhysicalRoot();
        physicalRoot.m64529m(getRawSequenceNumber(), i, i2);
        physicalRoot.m64530n(getRawSequenceNumber(), str);
    }

    public void setNamespaceMap(NamespaceMap namespaceMap) {
        this.f102513m = namespaceMap;
    }

    public void setNilled() {
        getPhysicalRoot().addNilledElement(this);
    }

    public void setNodeName(NodeName nodeName) {
        this.f102510j = nodeName;
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.NodeInfo, javax.xml.transform.Source
    public void setSystemId(String str) {
        getPhysicalRoot().m64530n(getRawSequenceNumber(), str);
    }

    @Override // net.p110sf.saxon.tree.linked.NodeImpl, net.p110sf.saxon.om.MutableNodeInfo
    public void setTypeAnnotation(SchemaType schemaType) {
        this.f102511k = schemaType;
    }

    @Override // net.p110sf.saxon.om.MutableNodeInfo
    public void addNamespace(String str, String str2) {
        String uri = this.f102513m.getURI(str);
        if (uri == null) {
            this.f102513m = this.f102513m.put(str, str2);
        } else if (!uri.equals(str2)) {
            throw new IllegalStateException("New namespace binding conflicts with existing namespace binding");
        }
    }
}
