package net.p110sf.saxon.lib;

import javax.xml.transform.Source;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface ActiveSource extends Source {
    void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException;
}
