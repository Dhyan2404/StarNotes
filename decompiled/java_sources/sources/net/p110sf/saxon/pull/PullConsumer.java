package net.p110sf.saxon.pull;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PullConsumer {

    /* renamed from: a */
    public final PullProvider f100942a;

    public PullConsumer(PullProvider pullProvider) {
        this.f100942a = pullProvider;
    }

    public void consume() throws XPathException {
        do {
        } while (this.f100942a.next() != PullEvent.END_OF_INPUT);
    }
}
