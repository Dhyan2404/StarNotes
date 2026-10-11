package net.p110sf.saxon.sapling;

import java.util.Iterator;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.NamespaceReducer;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.ma.trie.ImmutableList;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.Processor;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaplingDocument extends SaplingNode implements ActiveSource {

    /* renamed from: e */
    public String f101473e;

    /* renamed from: f */
    public ImmutableList<SaplingNode> f101474f = emptyNodeList();

    public SaplingDocument() {
    }

    /* renamed from: a */
    public final SaplingDocument m63800a() {
        SaplingDocument saplingDocument = new SaplingDocument(this.f101473e);
        saplingDocument.f101474f = this.f101474f;
        return saplingDocument;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        NamespaceReducer namespaceReducer = new NamespaceReducer(receiver);
        namespaceReducer.open();
        namespaceReducer.setSystemId(this.f101473e);
        namespaceReducer.startDocument(0);
        Iterator<SaplingNode> it2 = this.f101474f.reverse().iterator();
        while (it2.hasNext()) {
            it2.next().deliver(namespaceReducer, parseOptions);
        }
        namespaceReducer.endDocument();
        namespaceReducer.close();
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public int getNodeKind() {
        return 9;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f101473e;
    }

    public void send(Processor processor, Destination destination) throws SaxonApiException {
        try {
            deliver(destination.getReceiver(processor.getUnderlyingConfiguration().makePipelineConfiguration(), new SerializationProperties()), null);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void serialize(Serializer serializer) throws SaxonApiException {
        send(serializer.getProcessor(), serializer);
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        throw new UnsupportedOperationException();
    }

    public NodeInfo toNodeInfo(Configuration configuration) throws XPathException {
        Builder makeBuilder = configuration.getParseOptions().getModel().makeBuilder(configuration.makePipelineConfiguration());
        makeBuilder.open();
        deliver(makeBuilder, configuration.getParseOptions());
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

    public SaplingDocument withChild(SaplingNode... saplingNodeArr) {
        SaplingDocument m63800a = m63800a();
        for (SaplingNode saplingNode : saplingNodeArr) {
            int nodeKind = saplingNode.getNodeKind();
            if (nodeKind == 1 || nodeKind == 3 || nodeKind == 7 || nodeKind == 8) {
                m63800a.f101474f = m63800a.f101474f.prepend(saplingNode);
            } else if (nodeKind == 9) {
                throw new IllegalArgumentException("Cannot add document child to a document node");
            }
        }
        return m63800a;
    }

    public SaplingDocument(String str) {
        this.f101473e = str;
    }
}
