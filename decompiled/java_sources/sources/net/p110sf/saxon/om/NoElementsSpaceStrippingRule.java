package net.p110sf.saxon.om;

import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class NoElementsSpaceStrippingRule implements SpaceStrippingRule {

    /* renamed from: a */
    public static final NoElementsSpaceStrippingRule f100835a = new NoElementsSpaceStrippingRule();

    public static NoElementsSpaceStrippingRule getInstance() {
        return f100835a;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("strip.none");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) {
        return 1;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public ProxyReceiver makeStripper(Receiver receiver) {
        return null;
    }
}
