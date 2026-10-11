package net.p110sf.saxon.pull;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class PullPushCopier {

    /* renamed from: a */
    public final PullProvider f100945a;

    /* renamed from: b */
    public final Receiver f100946b;

    public PullPushCopier(PullProvider pullProvider, Receiver receiver) {
        this.f100946b = receiver;
        this.f100945a = pullProvider;
    }

    public void append() throws XPathException {
        new PullConsumer(new PullPushTee(this.f100945a, this.f100946b)).consume();
    }

    public void copy() throws XPathException {
        this.f100946b.open();
        new PullConsumer(new PullPushTee(this.f100945a, this.f100946b)).consume();
        this.f100946b.close();
    }
}
