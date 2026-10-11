package net.p110sf.saxon.query;

import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.event.ComplexContentOutputter;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceReceiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.KeyValuePair;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NameOfNode;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NamespaceBindingSet;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NoNamespaceName;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SingletonAttributeMap;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.Untyped;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class SequenceWrapper extends SequenceReceiver {
    public static final String RESULT_NS = QueryResult.RESULT_NS;

    /* renamed from: e */
    public final ComplexContentOutputter f101030e;

    /* renamed from: f */
    public int f101031f;

    /* renamed from: g */
    public FingerprintedQName f101032g;

    /* renamed from: h */
    public FingerprintedQName f101033h;

    /* renamed from: i */
    public FingerprintedQName f101034i;

    /* renamed from: j */
    public FingerprintedQName f101035j;

    /* renamed from: k */
    public FingerprintedQName f101036k;

    /* renamed from: l */
    public FingerprintedQName f101037l;

    /* renamed from: m */
    public FingerprintedQName f101038m;

    /* renamed from: n */
    public FingerprintedQName f101039n;

    /* renamed from: o */
    public FingerprintedQName f101040o;

    /* renamed from: p */
    public FingerprintedQName f101041p;

    /* renamed from: q */
    public FingerprintedQName f101042q;

    /* renamed from: r */
    public FingerprintedQName f101043r;

    /* renamed from: s */
    public FingerprintedQName f101044s;

    /* renamed from: t */
    public FingerprintedQName f101045t;

    /* renamed from: u */
    public FingerprintedQName f101046u;

    /* renamed from: v */
    public FingerprintedQName f101047v;

    /* renamed from: w */
    public FingerprintedQName f101048w;

    /* renamed from: x */
    public NamespaceMap f101049x;

    public SequenceWrapper(Receiver receiver) {
        super(receiver.getPipelineConfiguration());
        this.f101031f = 0;
        this.f101030e = new ComplexContentOutputter(receiver);
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62486h(Item item, Location location, int i) throws XPathException {
        if (item instanceof AtomicValue) {
            NamePool namePool = getNamePool();
            this.f101030e.startElement(this.f101039n, Untyped.getInstance(), Loc.NONE, 0);
            StructuredQName structuredQName = ((AtomicValue) item).getItemType().getStructuredQName();
            String prefix = structuredQName.getPrefix();
            String localPart = structuredQName.getLocalPart();
            String uri = structuredQName.getURI();
            if (prefix.isEmpty() && (prefix = namePool.suggestPrefixForURI(uri)) == null) {
                prefix = "p" + uri.hashCode();
            }
            this.f101030e.namespace(prefix, uri, 0);
            this.f101030e.attribute(this.f101048w, BuiltInAtomicType.UNTYPED_ATOMIC, prefix + ':' + localPart, location, 0);
            this.f101030e.startContent();
            this.f101030e.characters(item.getUnicodeStringValue(), location, 0);
            this.f101030e.endElement();
            return;
        }
        if (item instanceof NodeInfo) {
            NodeInfo nodeInfo = (NodeInfo) item;
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeKind == 2) {
                m63490c(NameOfNode.makeName(nodeInfo), (SimpleType) nodeInfo.getSchemaType(), nodeInfo.getStringValue(), Loc.NONE, 0);
                return;
            } else if (nodeKind == 13) {
                m63492e(new NamespaceBinding(nodeInfo.getLocalPart(), nodeInfo.getStringValue()), 0);
                return;
            } else {
                nodeInfo.copy(this, 6, location);
                return;
            }
        }
        if (item instanceof MapItem) {
            ComplexContentOutputter destination = getDestination();
            destination.startElement(this.f101041p, Untyped.getInstance(), location, 0);
            for (KeyValuePair keyValuePair : ((MapItem) item).keyValuePairs()) {
                destination.startElement(this.f101042q, Untyped.getInstance(), location, 0);
                destination.startElement(this.f101043r, Untyped.getInstance(), location, 0);
                append(keyValuePair.key);
                destination.endElement();
                destination.startElement(this.f101044s, Untyped.getInstance(), location, 0);
                SequenceIterator iterate = keyValuePair.value.iterate();
                while (true) {
                    Item next = iterate.next();
                    if (next != null) {
                        append(next);
                    }
                }
                destination.endElement();
                destination.endElement();
            }
            destination.endElement();
            return;
        }
        if (item instanceof ArrayItem) {
            this.f101030e.startElement(this.f101045t, Untyped.getInstance(), Loc.NONE, 0);
            this.f101030e.startContent();
            for (GroundedValue groundedValue : ((ArrayItem) item).members()) {
                this.f101030e.startElement(this.f101046u, Untyped.getInstance(), Loc.NONE, 0);
                SequenceIterator iterate2 = groundedValue.iterate();
                while (true) {
                    Item next2 = iterate2.next();
                    if (next2 != null) {
                        append(next2);
                    }
                }
                this.f101030e.endElement();
            }
            this.f101030e.endElement();
            return;
        }
        if (item instanceof Function) {
            this.f101030e.startElement(this.f101040o, Untyped.getInstance(), Loc.NONE, 0);
            this.f101030e.startContent();
            this.f101030e.characters(StringView.m63901of(((Function) item).getDescription()), location, 0);
            this.f101030e.endElement();
            return;
        }
        if (item.getGenre() == Genre.EXTERNAL) {
            Object object = ((ObjectValue) item).getObject();
            this.f101030e.startElement(this.f101047v, Untyped.getInstance(), Loc.NONE, 0);
            this.f101030e.attribute(new NoNamespaceName("class"), BuiltInAtomicType.UNTYPED_ATOMIC, object.getClass().getName(), Loc.NONE, 0);
            this.f101030e.startContent();
            this.f101030e.characters(StringView.m63901of(object.toString()), location, 0);
            this.f101030e.endElement();
        }
    }

    /* renamed from: c */
    public final void m63490c(NodeName nodeName, SimpleType simpleType, CharSequence charSequence, Location location, int i) throws XPathException {
        SingletonAttributeMap m63409of = SingletonAttributeMap.m63409of(new AttributeInfo(nodeName, simpleType, charSequence.toString(), location, i));
        NamespaceMap emptyMap = NamespaceMap.emptyMap();
        if (!nodeName.hasURI("")) {
            emptyMap = emptyMap.put(nodeName.getPrefix(), nodeName.getURI());
        }
        this.f101030e.startElement(this.f101034i, Untyped.getInstance(), m63409of, emptyMap, Loc.NONE, 0);
        this.f101030e.startContent();
        this.f101030e.endElement();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void characters(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101031f != 0) {
            this.f101030e.characters(unicodeString, location, i);
            return;
        }
        m63493f(this.f101035j);
        this.f101030e.characters(unicodeString, location, i);
        m63491d();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        m63491d();
        this.f101030e.endDocument();
        this.f101030e.close();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void comment(UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101031f != 0) {
            this.f101030e.comment(unicodeString, location, i);
            return;
        }
        m63493f(this.f101036k);
        this.f101030e.comment(unicodeString, location, i);
        m63491d();
    }

    /* renamed from: d */
    public final void m63491d() throws XPathException {
        this.f101030e.endElement();
    }

    /* renamed from: e */
    public final void m63492e(NamespaceBindingSet namespaceBindingSet, int i) throws XPathException {
        this.f101030e.startElement(this.f101038m, Untyped.getInstance(), EmptyAttributeMap.getInstance(), NamespaceMap.emptyMap().addAll(namespaceBindingSet), Loc.NONE, 0);
        this.f101030e.startContent();
        this.f101030e.endElement();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endDocument() throws XPathException {
        m63491d();
        this.f101031f--;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        this.f101030e.endElement();
        int i = this.f101031f - 1;
        this.f101031f = i;
        if (i == 0) {
            m63491d();
        }
    }

    /* renamed from: f */
    public final void m63493f(NodeName nodeName) throws XPathException {
        this.f101030e.startElement(nodeName, Untyped.getInstance(), Loc.NONE, 0);
        this.f101030e.namespace("xs", "http://www.w3.org/2001/XMLSchema", 0);
        this.f101030e.namespace("xsi", "http://www.w3.org/2001/XMLSchema-instance", 0);
        this.f101030e.startContent();
    }

    public ComplexContentOutputter getDestination() {
        return this.f101030e;
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    public void open() throws XPathException {
        String str = RESULT_NS;
        FingerprintedQName fingerprintedQName = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "sequence");
        this.f101032g = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "document");
        this.f101033h = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "element");
        this.f101034i = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "attribute");
        this.f101035j = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "text");
        this.f101036k = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "comment");
        this.f101037l = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, Constants.ELEMNAME_PI_STRING);
        this.f101038m = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, Constants.ATTRNAME_NAMESPACE);
        this.f101039n = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "atomic-value");
        this.f101040o = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        this.f101045t = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "array");
        this.f101046u = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "array-member");
        this.f101041p = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, Constant.MAP_TAG);
        this.f101042q = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "map-entry");
        this.f101043r = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "map-key");
        this.f101044s = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "map-value");
        this.f101047v = new FingerprintedQName(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, str, "external-object");
        this.f101048w = new FingerprintedQName("xsi", "http://www.w3.org/2001/XMLSchema-instance", "type");
        this.f101030e.open();
        this.f101030e.startDocument(0);
        m63493f(fingerprintedQName);
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void processingInstruction(String str, UnicodeString unicodeString, Location location, int i) throws XPathException {
        if (this.f101031f != 0) {
            this.f101030e.processingInstruction(str, unicodeString, location, i);
            return;
        }
        m63493f(this.f101037l);
        this.f101030e.processingInstruction(str, unicodeString, location, i);
        m63491d();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startDocument(int i) throws XPathException {
        m63493f(this.f101032g);
        this.f101031f++;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void startElement(NodeName nodeName, SchemaType schemaType, AttributeMap attributeMap, NamespaceMap namespaceMap, Location location, int i) throws XPathException {
        int i2 = this.f101031f;
        this.f101031f = i2 + 1;
        if (i2 == 0) {
            m63493f(this.f101033h);
        }
        this.f101030e.startElement(nodeName, schemaType, location, i);
        for (AttributeInfo attributeInfo : attributeMap) {
            this.f101030e.attribute(attributeInfo.getNodeName(), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
        }
        this.f101030e.startContent();
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }
}
