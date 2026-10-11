package net.p110sf.saxon.sapling;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import java.util.Objects;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.ma.trie.ImmutableHashTrieMap;
import net.p110sf.saxon.ma.trie.ImmutableList;
import net.p110sf.saxon.ma.trie.ImmutableMap;
import net.p110sf.saxon.ma.trie.TrieKVP;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.EmptyAttributeMap;
import net.p110sf.saxon.om.FingerprintedQName;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceMap;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class SaplingElement extends SaplingNode {

    /* renamed from: e */
    public final StructuredQName f101475e;

    /* renamed from: f */
    public ImmutableList<SaplingNode> f101476f;

    /* renamed from: g */
    public ImmutableMap<StructuredQName, String> f101477g;

    /* renamed from: h */
    public NamespaceMap f101478h;

    public SaplingElement(String str) {
        this.f101477g = m63801b();
        this.f101478h = NamespaceMap.emptyMap();
        Objects.requireNonNull(str);
        this.f101476f = emptyNodeList();
        this.f101475e = StructuredQName.fromEQName(str);
    }

    /* renamed from: b */
    public static ImmutableMap<StructuredQName, String> m63801b() {
        return ImmutableHashTrieMap.empty();
    }

    /* renamed from: a */
    public final SaplingElement m63802a() {
        SaplingElement saplingElement = new SaplingElement(this.f101475e);
        saplingElement.f101476f = this.f101476f;
        saplingElement.f101477g = this.f101477g;
        saplingElement.f101478h = this.f101478h;
        return saplingElement;
    }

    /* renamed from: c */
    public final SaplingElement m63803c(StructuredQName structuredQName, String str) {
        SaplingElement m63802a = m63802a();
        m63802a.f101477g = m63802a.f101477g.put(structuredQName, str);
        return m63802a;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        NamePool namePool = receiver.getPipelineConfiguration().getConfiguration().getNamePool();
        NamespaceMap namespaceMap = this.f101478h;
        if (!this.f101475e.getURI().isEmpty()) {
            namespaceMap = namespaceMap.put(this.f101475e.getPrefix(), this.f101475e.getURI());
        }
        EmptyAttributeMap emptyAttributeMap = EmptyAttributeMap.getInstance();
        NamespaceMap namespaceMap2 = namespaceMap;
        AttributeMap attributeMap = emptyAttributeMap;
        for (TrieKVP<StructuredQName, String> trieKVP : this.f101477g) {
            StructuredQName key = trieKVP.getKey();
            attributeMap = attributeMap.put(new AttributeInfo(new FingerprintedQName(key, namePool), BuiltInAtomicType.UNTYPED_ATOMIC, trieKVP.getValue(), Loc.NONE, 0));
            if (!key.getURI().isEmpty()) {
                namespaceMap2 = namespaceMap2.put(key.getPrefix(), key.getURI());
            }
        }
        receiver.startElement(new FingerprintedQName(this.f101475e, namePool), Untyped.getInstance(), attributeMap, namespaceMap2, Loc.NONE, 0);
        Iterator<SaplingNode> it2 = this.f101476f.reverse().iterator();
        while (it2.hasNext()) {
            it2.next().deliver(receiver, null);
        }
        receiver.endElement();
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public int getNodeKind() {
        return 1;
    }

    public NodeInfo toNodeInfo(Configuration configuration) throws XPathException {
        Builder makeBuilder = configuration.getParseOptions().getModel().makeBuilder(configuration.makePipelineConfiguration());
        makeBuilder.open();
        deliver(makeBuilder, null);
        makeBuilder.close();
        return makeBuilder.getCurrentRoot();
    }

    public XdmNode toXdmNode(Processor processor) throws SaxonApiException {
        try {
            return (XdmNode) XdmValue.wrap(toNodeInfo(processor.getUnderlyingConfiguration()));
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public SaplingElement withAttr(String str, String str2) {
        return m63803c(new StructuredQName("", "", str), str2);
    }

    public SaplingElement withChild(SaplingNode... saplingNodeArr) {
        SaplingElement m63802a = m63802a();
        for (SaplingNode saplingNode : saplingNodeArr) {
            int nodeKind = saplingNode.getNodeKind();
            if (nodeKind == 1 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8) {
                m63802a.f101476f = m63802a.f101476f.prepend(saplingNode);
            } else if (nodeKind == 9) {
                throw new IllegalArgumentException("Cannot add document node as a child of an element node");
            }
        }
        return m63802a;
    }

    public SaplingElement withNamespace(String str, String str2) {
        if (str2.isEmpty()) {
            if (str.isEmpty()) {
                return this;
            }
            throw new IllegalArgumentException("Cannot bind non-empty prefix to empty URI");
        }
        String uri = this.f101478h.getURI(str);
        if (uri == null) {
            SaplingElement m63802a = m63802a();
            m63802a.f101478h = this.f101478h.put(str, str2);
            return m63802a;
        }
        if (uri.equals(str2)) {
            return this;
        }
        throw new IllegalStateException("Inconsistent namespace bindings for prefix '" + str + CloudStorageConstants.SINGLE_QUOTES);
    }

    public SaplingElement withText(String str) {
        return withChild(new SaplingText(str));
    }

    public SaplingElement withAttr(QName qName, String str) {
        StructuredQName structuredQName = qName.getStructuredQName();
        if (structuredQName.getPrefix().isEmpty() && !structuredQName.getURI().isEmpty()) {
            throw new IllegalArgumentException("An attribute whose name is in a namespace must have a prefix");
        }
        withNamespace(structuredQName.getPrefix(), structuredQName.getURI());
        return m63803c(structuredQName, str);
    }

    public SaplingElement(QName qName) {
        this.f101477g = m63801b();
        this.f101478h = NamespaceMap.emptyMap();
        Objects.requireNonNull(qName);
        this.f101476f = emptyNodeList();
        StructuredQName structuredQName = qName.getStructuredQName();
        this.f101475e = structuredQName;
        if (!structuredQName.getPrefix().isEmpty() && structuredQName.getURI().isEmpty()) {
            throw new IllegalArgumentException("No namespace URI for prefixed element name: " + qName);
        }
        this.f101478h = NamespaceMap.m63391of(structuredQName.getPrefix(), structuredQName.getURI());
    }

    public SaplingElement(StructuredQName structuredQName) {
        this.f101477g = m63801b();
        this.f101478h = NamespaceMap.emptyMap();
        this.f101475e = structuredQName;
        this.f101476f = emptyNodeList();
    }
}
