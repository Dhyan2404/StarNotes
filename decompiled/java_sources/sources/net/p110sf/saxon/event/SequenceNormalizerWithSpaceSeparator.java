package net.p110sf.saxon.event;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SequenceNormalizerWithSpaceSeparator extends SequenceNormalizer {
    public SequenceNormalizerWithSpaceSeparator(Receiver receiver) {
        super(receiver);
    }

    @Override // net.p110sf.saxon.event.ProxyReceiver, net.p110sf.saxon.event.SequenceReceiver, net.p110sf.saxon.event.Receiver
    /* renamed from: append */
    public void m62516b(Item item, Location location, int i) throws XPathException {
        decompose(item, location, i);
    }

    @Override // net.p110sf.saxon.event.SequenceReceiver
    public String getErrorCodeForDecomposingFunctionItems() {
        return "SENR0001";
    }
}
