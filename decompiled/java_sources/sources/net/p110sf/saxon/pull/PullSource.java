package net.p110sf.saxon.pull;

import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PullSource implements ActiveSource {

    /* renamed from: e */
    public String f100951e;

    /* renamed from: f */
    public final PullProvider f100952f;

    public PullSource(PullProvider pullProvider) {
        this.f100952f = pullProvider;
        if (pullProvider.getSourceLocator() != null) {
            this.f100951e = pullProvider.getSourceLocator().getSystemId();
        }
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        if (parseOptions.isXIncludeAware()) {
            throw new XPathException("XInclude processing is not supported with a pull parser");
        }
        Receiver makeValidator = Sender.makeValidator(receiver, getSystemId(), parseOptions);
        PullProvider pullProvider = getPullProvider();
        pullProvider.setPipelineConfiguration(pipelineConfiguration);
        makeValidator.setPipelineConfiguration(pipelineConfiguration);
        try {
            new PullPushCopier(pullProvider, makeValidator).copy();
        } finally {
            if (parseOptions.isPleaseCloseAfterUse()) {
                pullProvider.close();
            }
        }
    }

    public PullProvider getPullProvider() {
        return this.f100952f;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f100951e;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f100951e = str;
    }
}
