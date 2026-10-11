package net.p110sf.saxon.pull;

import java.util.List;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.om.AttributeMap;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NamespaceBinding;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class PullFilter implements PullProvider {

    /* renamed from: a */
    public final PullProvider f100943a;

    /* renamed from: b */
    public PipelineConfiguration f100944b;
    protected PullEvent currentEvent;

    public PullFilter(PullProvider pullProvider) {
        this.f100943a = pullProvider;
        if (pullProvider.getPipelineConfiguration() != null) {
            setPipelineConfiguration(pullProvider.getPipelineConfiguration());
        }
        this.currentEvent = pullProvider.current();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public void close() {
        this.f100943a.close();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent current() {
        return this.currentEvent;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public AtomicValue getAtomicValue() {
        return this.f100943a.getAtomicValue();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public AttributeMap getAttributes() throws XPathException {
        return this.f100943a.getAttributes();
    }

    public final NamePool getNamePool() {
        return getPipelineConfiguration().getConfiguration().getNamePool();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public NamespaceBinding[] getNamespaceDeclarations() throws XPathException {
        return this.f100943a.getNamespaceDeclarations();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public NodeName getNodeName() {
        return this.f100943a.getNodeName();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PipelineConfiguration getPipelineConfiguration() {
        return this.f100944b;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public SchemaType getSchemaType() {
        return this.f100943a.getSchemaType();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public Location getSourceLocator() {
        return this.f100943a.getSourceLocator();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public UnicodeString getStringValue() throws XPathException {
        return this.f100943a.getStringValue();
    }

    public PullProvider getUnderlyingProvider() {
        return this.f100943a;
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public List<UnparsedEntity> getUnparsedEntities() {
        return this.f100943a.getUnparsedEntities();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent next() throws XPathException {
        return this.f100943a.next();
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.f100944b = pipelineConfiguration;
        this.f100943a.setPipelineConfiguration(pipelineConfiguration);
    }

    @Override // net.p110sf.saxon.pull.PullProvider
    public PullEvent skipToMatchingEnd() throws XPathException {
        return this.f100943a.skipToMatchingEnd();
    }
}
