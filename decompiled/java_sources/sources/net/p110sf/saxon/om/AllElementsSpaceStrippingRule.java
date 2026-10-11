package net.p110sf.saxon.om;

import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class AllElementsSpaceStrippingRule implements SpaceStrippingRule {

    /* renamed from: a */
    public static final AllElementsSpaceStrippingRule f100752a = new AllElementsSpaceStrippingRule();

    public static AllElementsSpaceStrippingRule getInstance() {
        return f100752a;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("strip.all");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) {
        return 0;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public ProxyReceiver makeStripper(Receiver receiver) {
        return new Stripper(this, receiver);
    }
}
