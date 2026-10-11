package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class TinyBuilderCondensed extends TinyBuilder {
    public IntHashMap<int[]> textValues;

    public TinyBuilderCondensed(PipelineConfiguration pipelineConfiguration) {
        super(pipelineConfiguration);
        this.textValues = new IntHashMap<>(100);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyBuilder, net.p110sf.saxon.event.Receiver
    public void endElement() throws XPathException {
        TinyTree tree = getTree();
        super.endElement();
        short s = tree.f102594m[tree.f102593l - 1];
        getCurrentDepth();
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyBuilder
    public String getAttValue(AttributeInfo attributeInfo) {
        return super.getAttValue(attributeInfo).intern();
    }
}
