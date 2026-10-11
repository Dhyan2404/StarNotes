package net.p110sf.saxon.event;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.tree.iter.EmptyIterator;
import net.p110sf.saxon.tree.iter.ListIterator;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceExtent;

/* loaded from: classes11.dex */
public final class SequenceCollector extends SequenceWriter {

    /* renamed from: h */
    public List<Item> f99096h;

    public SequenceCollector(PipelineConfiguration pipelineConfiguration) {
        this(pipelineConfiguration, 50);
    }

    public static Outputter allocateSequenceOutputter(XPathContext xPathContext, HostLanguage hostLanguage) {
        PipelineConfiguration makePipelineConfiguration = xPathContext.getController().makePipelineConfiguration();
        makePipelineConfiguration.setHostLanguage(hostLanguage);
        return new ComplexContentOutputter(new SequenceCollector(makePipelineConfiguration, 20));
    }

    public Item getFirstItem() {
        if (this.f99096h.isEmpty()) {
            return null;
        }
        return this.f99096h.get(0);
    }

    public List<Item> getList() {
        return this.f99096h;
    }

    public Sequence getSequence() {
        int size = this.f99096h.size();
        return size != 0 ? size != 1 ? new SequenceExtent.C18571Of(this.f99096h) : this.f99096h.get(0) : EmptySequence.getInstance();
    }

    public SequenceIterator iterate() {
        return this.f99096h.isEmpty() ? EmptyIterator.emptyIterator() : new ListIterator.C18538Of(this.f99096h);
    }

    public void reset() {
        this.f99096h = new ArrayList(Math.min(this.f99096h.size() + 10, 50));
    }

    @Override // net.p110sf.saxon.event.SequenceWriter
    public void write(Item item) {
        this.f99096h.add(item);
    }

    public SequenceCollector(PipelineConfiguration pipelineConfiguration, int i) {
        super(pipelineConfiguration);
        this.f99096h = new ArrayList(i);
    }
}
