package net.p110sf.saxon.s9api;

import java.net.URI;
import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceNormalizer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.TreeModel;
import net.p110sf.saxon.serialize.SerializationProperties;

/* loaded from: classes11.dex */
public class XdmDestination extends AbstractDestination {

    /* renamed from: f */
    public TreeModel f101403f = TreeModel.TINY_TREE;

    /* renamed from: g */
    public Builder f101404g;

    @Override // net.p110sf.saxon.s9api.Destination
    public void close() {
    }

    public URI getBaseURI() {
        return getDestinationBaseURI();
    }

    @Override // net.p110sf.saxon.s9api.Destination
    public Receiver getReceiver(PipelineConfiguration pipelineConfiguration, SerializationProperties serializationProperties) {
        TreeModel treeModel = this.f101403f;
        if (treeModel == null) {
            int treeModel2 = pipelineConfiguration.getParseOptions().getTreeModel();
            if (treeModel2 != -1) {
                treeModel = TreeModel.getTreeModel(treeModel2);
            }
            if (treeModel == null) {
                treeModel = TreeModel.TINY_TREE;
            }
        }
        this.f101404g = treeModel.makeBuilder(pipelineConfiguration);
        String aSCIIString = getBaseURI() == null ? null : getBaseURI().toASCIIString();
        if (aSCIIString != null) {
            this.f101404g.setUseEventLocation(false);
            this.f101404g.setBaseURI(aSCIIString);
        }
        SequenceNormalizer makeSequenceNormalizer = serializationProperties.makeSequenceNormalizer(this.f101404g);
        makeSequenceNormalizer.setSystemId(aSCIIString);
        makeSequenceNormalizer.onClose(this.helper.getListeners());
        return makeSequenceNormalizer;
    }

    public TreeModel getTreeModel() {
        return this.f101403f;
    }

    public XdmNode getXdmNode() {
        Builder builder = this.f101404g;
        if (builder == null) {
            throw new IllegalStateException("The document has not yet been built");
        }
        NodeInfo currentRoot = builder.getCurrentRoot();
        if (currentRoot == null) {
            return null;
        }
        return (XdmNode) XdmValue.wrap(currentRoot);
    }

    public void reset() {
        this.f101404g = null;
    }

    public void setBaseURI(URI uri) {
        if (!uri.isAbsolute()) {
            throw new IllegalArgumentException("Supplied base URI must be absolute");
        }
        setDestinationBaseURI(uri);
    }

    public void setTreeModel(TreeModel treeModel) {
        this.f101403f = treeModel;
    }
}
