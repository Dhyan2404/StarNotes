package net.p110sf.saxon.om;

import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public interface SpaceStrippingRule {
    void export(ExpressionPresenter expressionPresenter) throws XPathException;

    int isSpacePreserving(NodeName nodeName, SchemaType schemaType) throws XPathException;

    ProxyReceiver makeStripper(Receiver receiver);
}
