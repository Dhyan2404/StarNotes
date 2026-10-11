package net.p110sf.saxon.event;

import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class EventSource implements ActiveSource {

    /* renamed from: e */
    public String f98990e;

    @Override // net.p110sf.saxon.lib.ActiveSource
    public abstract void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException;

    @Override // javax.xml.transform.Source
    public String getSystemId() {
        return this.f98990e;
    }

    @Override // javax.xml.transform.Source
    public void setSystemId(String str) {
        this.f98990e = str;
    }
}
