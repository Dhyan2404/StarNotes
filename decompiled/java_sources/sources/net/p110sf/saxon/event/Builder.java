package net.p110sf.saxon.event;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.Timer;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.tiny.TinyDocumentImpl;

/* loaded from: classes11.dex */
public abstract class Builder implements Receiver {
    public static final int AXIOM_TREE = 5;
    public static final int DOMINO_TREE = 6;
    public static final int JDOM2_TREE = 4;
    public static final int JDOM_TREE = 3;
    public static final int LINKED_TREE = 0;
    public static final int MUTABLE_LINKED_TREE = 7;
    public static final int TINY_TREE = 1;
    public static final int TINY_TREE_CONDENSED = 2;
    public static final int UNSPECIFIED_TREE_MODEL = -1;
    protected String baseURI;
    protected Configuration config;
    protected NodeInfo currentRoot;

    /* renamed from: e */
    public long f98922e;
    protected boolean lineNumbering;
    protected NamePool namePool;
    protected boolean opened;
    protected PipelineConfiguration pipe;
    protected boolean started;
    protected String systemId;
    protected boolean timing;
    protected boolean uniformBaseURI;
    protected boolean useEventLocation;

    public Builder() {
        this.uniformBaseURI = true;
        this.lineNumbering = false;
        this.useEventLocation = true;
        this.started = false;
        this.timing = false;
        this.opened = false;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void close() throws XPathException {
        if (this.timing && this.opened) {
            long nanoTime = System.nanoTime();
            getConfiguration().getLogger().info("Tree built in " + Timer.showExecutionTimeNano(nanoTime - this.f98922e));
            NodeInfo nodeInfo = this.currentRoot;
            if (nodeInfo instanceof TinyDocumentImpl) {
                ((TinyDocumentImpl) nodeInfo).showSize();
            }
            this.f98922e = nanoTime;
        }
        this.opened = false;
    }

    public String getBaseURI() {
        return this.baseURI;
    }

    public BuilderMonitor getBuilderMonitor() {
        return null;
    }

    public Configuration getConfiguration() {
        return this.config;
    }

    public NodeInfo getCurrentRoot() {
        return this.currentRoot;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public PipelineConfiguration getPipelineConfiguration() {
        return this.pipe;
    }

    @Override // javax.xml.transform.Result
    public String getSystemId() {
        return this.systemId;
    }

    public boolean isTiming() {
        return this.timing;
    }

    public boolean isUseEventLocation() {
        return this.useEventLocation;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void open() {
        if (this.timing && !this.opened) {
            String systemId = getSystemId();
            if (systemId == null) {
                systemId = "(unknown systemId)";
            }
            getConfiguration().getLogger().info("Building tree for " + systemId + " using " + getClass());
            this.f98922e = System.nanoTime();
        }
        this.opened = true;
    }

    public void reset() {
        this.systemId = null;
        this.baseURI = null;
        this.currentRoot = null;
        this.lineNumbering = false;
        this.started = false;
        this.timing = false;
        this.opened = false;
    }

    public void setBaseURI(String str) {
        this.baseURI = str;
    }

    public void setLineNumbering(boolean z) {
        this.lineNumbering = z;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public void setPipelineConfiguration(PipelineConfiguration pipelineConfiguration) {
        this.pipe = pipelineConfiguration;
        Configuration configuration = pipelineConfiguration.getConfiguration();
        this.config = configuration;
        this.lineNumbering = this.lineNumbering || configuration.isLineNumbering();
        this.namePool = this.config.getNamePool();
    }

    @Override // javax.xml.transform.Result
    public void setSystemId(String str) {
        this.systemId = str;
    }

    public void setTiming(boolean z) {
        this.timing = z;
    }

    public void setUseEventLocation(boolean z) {
        this.useEventLocation = z;
    }

    @Override // net.p110sf.saxon.event.Receiver
    public boolean usesTypeAnnotations() {
        return true;
    }

    public Builder(PipelineConfiguration pipelineConfiguration) {
        this.uniformBaseURI = true;
        this.lineNumbering = false;
        this.useEventLocation = true;
        this.started = false;
        this.timing = false;
        this.opened = false;
        this.pipe = pipelineConfiguration;
        Configuration configuration = pipelineConfiguration.getConfiguration();
        this.config = configuration;
        this.lineNumbering = configuration.isLineNumbering();
        this.namePool = this.config.getNamePool();
    }
}
