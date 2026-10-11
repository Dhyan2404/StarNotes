package net.p110sf.saxon.event;

import net.p110sf.saxon.om.NodeInfo;

/* loaded from: classes11.dex */
public abstract class BuilderMonitor extends ProxyReceiver {
    public BuilderMonitor(Receiver receiver) {
        super(receiver);
    }

    public abstract NodeInfo getMarkedNode();

    public abstract void markNextNode(int i);
}
