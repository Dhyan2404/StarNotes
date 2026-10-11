package net.p110sf.saxon.event;

import java.util.HashSet;
import java.util.function.Supplier;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.TypeCheckingFilter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.util.Orphan;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public class TypeCheckingFilter extends ProxyOutputter {

    /* renamed from: f */
    public ItemType f99139f;

    /* renamed from: g */
    public int f99140g;

    /* renamed from: h */
    public RoleDiagnostic f99141h;

    /* renamed from: i */
    public Location f99142i;

    /* renamed from: j */
    public int f99143j;

    /* renamed from: k */
    public int f99144k;

    /* renamed from: l */
    public final HashSet<Long> f99145l;

    /* renamed from: m */
    public final TypeHierarchy f99146m;

    public TypeCheckingFilter(Outputter outputter) {
        super(outputter);
        this.f99143j = 0;
        this.f99144k = 0;
        this.f99145l = new HashSet<>(10);
        this.f99146m = getConfiguration().getTypeHierarchy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ NodeInfo m62530g(short s, NodeName nodeName, SchemaType schemaType, UnicodeString unicodeString) {
        Orphan orphan = new Orphan(getPipelineConfiguration().getConfiguration());
        orphan.setNodeKind(s);
        if (nodeName != null) {
            orphan.setNodeName(nodeName);
        }
        orphan.setTypeAnnotation(schemaType);
        orphan.setStringValue(unicodeString);
        return orphan;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62486h(Item item, Location location, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(location);
            }
            m62533d(item, location);
        }
        getNextOutputter().m62486h(item, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void attribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(location);
            }
            m62534e(new CombinedNodeTest(new NameTest(2, nodeName, getConfiguration().getNamePool()), 23, new ContentTypeTest(2, simpleType, getConfiguration(), false)), m62536h((short) 2, nodeName, simpleType, StringView.tidy(str)), location);
        }
        getNextOutputter().attribute(nodeName, simpleType, str, location, i);
    }

    /* renamed from: b */
    public final void m62531b(Location location) throws XPathException {
        if (Cardinality.allowsMany(this.f99140g)) {
            return;
        }
        XPathException xPathException = new XPathException("A sequence of more than one item is not allowed as the " + this.f99141h.getMessage());
        String errorCode = this.f99141h.getErrorCode();
        xPathException.setErrorCode(errorCode);
        if (!"XPDY0050".equals(errorCode)) {
            xPathException.setIsTypeError(true);
        }
        if (location == null || location == Loc.NONE) {
            xPathException.setLocator(this.f99142i);
            throw xPathException;
        }
        xPathException.setLocator(location);
        throw xPathException;
    }

    /* renamed from: c */
    public final void m62532c(NodeName nodeName, SchemaType schemaType, Location location) throws XPathException {
        Configuration configuration = getConfiguration();
        NamePool namePool = configuration.getNamePool();
        if (this.f99144k == 0) {
            int i = this.f99143j + 1;
            this.f99143j = i;
            if (i == 1) {
                m62534e(new CombinedNodeTest(new NameTest(1, nodeName, namePool), 23, new ContentTypeTest(1, schemaType, configuration, false)), m62536h((short) 1, nodeName, schemaType, EmptyUnicodeString.getInstance()), location);
            } else {
                if (i == 2) {
                    m62531b(location);
                }
                long obtainFingerprint = (nodeName.obtainFingerprint(namePool) << 32) | schemaType.getFingerprint();
                if (!this.f99145l.contains(Long.valueOf(obtainFingerprint))) {
                    m62534e(new CombinedNodeTest(new NameTest(1, nodeName, namePool), 23, new ContentTypeTest(1, schemaType, configuration, false)), m62536h((short) 1, nodeName, schemaType, EmptyUnicodeString.getInstance()), location);
                    this.f99145l.add(Long.valueOf(obtainFingerprint));
                }
            }
        }
        this.f99144k++;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(location);
            }
            m62534e(NodeKindTest.TEXT, m62536h((short) 3, null, null, unicodeString.tidy()), location);
        }
        getNextOutputter().characters(unicodeString, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        finalCheck();
        super.close();
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(location);
            }
            m62534e(NodeKindTest.COMMENT, m62536h((short) 8, null, null, unicodeString.tidy()), location);
        }
        getNextOutputter().comment(unicodeString, location, i);
    }

    /* renamed from: d */
    public final void m62533d(Item item, Location location) throws XPathException {
        if (this.f99139f.matches(item, this.f99146m)) {
            return;
        }
        m62537i(null, item, location);
    }

    /* renamed from: e */
    public final void m62534e(ItemType itemType, Supplier<? extends Item> supplier, Location location) throws XPathException {
        if (this.f99146m.isSubType(itemType, this.f99139f)) {
            return;
        }
        m62537i(itemType, supplier.get(), location);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        this.f99144k--;
        getNextOutputter().endDocument();
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f99144k--;
        getNextOutputter().endElement();
    }

    /* renamed from: f */
    public final void m62535f(ItemType itemType, Location location) throws XPathException {
        if (this.f99146m.isSubType(itemType, this.f99139f)) {
            return;
        }
        m62537i(itemType, null, location);
    }

    public void finalCheck() throws XPathException {
        if (this.f99143j != 0 || Cardinality.allowsZero(this.f99140g)) {
            return;
        }
        XPathException xPathException = new XPathException("An empty sequence is not allowed as the " + this.f99141h.getMessage());
        String errorCode = this.f99141h.getErrorCode();
        xPathException.setErrorCode(errorCode);
        if ("XPDY0050".equals(errorCode)) {
            throw xPathException;
        }
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    /* renamed from: h */
    public final Supplier<NodeInfo> m62536h(final short s, final NodeName nodeName, final SchemaType schemaType, final UnicodeString unicodeString) {
        return new Supplier() { // from class: com.sunia.HTREnginev2.ton
            @Override // java.util.function.Supplier
            public final Object get() {
                NodeInfo m62530g;
                m62530g = TypeCheckingFilter.this.m62530g(s, nodeName, schemaType, unicodeString);
                return m62530g;
            }
        };
    }

    /* renamed from: i */
    public final void m62537i(ItemType itemType, Item item, Location location) throws XPathException {
        String composeErrorMessage = item == null ? this.f99141h.composeErrorMessage(this.f99139f, itemType) : this.f99141h.composeErrorMessage(this.f99139f, item, this.f99146m);
        String errorCode = this.f99141h.getErrorCode();
        XPathException xPathException = new XPathException(composeErrorMessage);
        xPathException.setErrorCode(errorCode);
        if (!"XPDY0050".equals(errorCode)) {
            xPathException.setIsTypeError(true);
        }
        if (location == null) {
            xPathException.setLocation(this.f99142i);
            throw xPathException;
        }
        xPathException.setLocation(location.saveLocation());
        throw xPathException;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void namespace(String str, String str2, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(Loc.NONE);
            }
            m62535f(NodeKindTest.NAMESPACE, Loc.NONE);
        }
        getNextOutputter().namespace(str, str2, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(location);
            }
            m62534e(NodeKindTest.PROCESSING_INSTRUCTION, m62536h((short) 7, new NoNamespaceName(str), null, unicodeString.tidy()), location);
        }
        getNextOutputter().processingInstruction(str, unicodeString, location, i);
    }

    public void setRequiredType(ItemType itemType, int i, RoleDiagnostic roleDiagnostic, Location location) {
        this.f99139f = itemType;
        this.f99140g = i;
        this.f99141h = roleDiagnostic;
        this.f99142i = location;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        if (this.f99144k == 0) {
            int i2 = this.f99143j + 1;
            this.f99143j = i2;
            if (i2 == 2) {
                m62531b(Loc.NONE);
            }
            m62534e(NodeKindTest.DOCUMENT, m62536h((short) 9, null, null, EmptyUnicodeString.getInstance()), Loc.NONE);
        }
        this.f99144k++;
        getNextOutputter().startDocument(i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter
    public void startElement(NodeName nodeName, SchemaType schemaType, Location location, int i) throws XPathException {
        m62532c(nodeName, schemaType, location);
        getNextOutputter().startElement(nodeName, schemaType, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        m62532c(nodeName, schemaType, location);
        getNextOutputter().startElement(nodeName, schemaType, attributeMap, namespaceMap, location, i);
    }

    @Override // net.p110sf.saxon.event.ProxyOutputter, net.p110sf.saxon.event.Outputter, net.p110sf.saxon.event.Receiver
    public void append(Item item) throws XPathException {
        if (this.f99144k == 0) {
            int i = this.f99143j + 1;
            this.f99143j = i;
            if (i == 2) {
                m62531b(Loc.NONE);
            }
            m62533d(item, Loc.NONE);
        }
        getNextOutputter().append(item);
    }
}
