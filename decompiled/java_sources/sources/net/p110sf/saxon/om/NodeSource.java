package net.p110sf.saxon.om;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Sender;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class NodeSource implements ActiveSource {

    /* renamed from: e */
    public final NodeInfo f100838e;

    /* renamed from: f */
    public String f100839f;

    public NodeSource(NodeInfo nodeInfo) {
        this.f100838e = nodeInfo;
        this.f100839f = nodeInfo.getSystemId();
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        Sender.sendDocumentInfo(this.f100838e, receiver, new Loc(getSystemId(), -1, -1));
    }

    public NodeInfo getNode() {
        return this.f100838e;
    }

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        String str = this.f100839f;
        return str == null ? this.f100838e.getSystemId() : str;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f100839f = str;
    }
}
