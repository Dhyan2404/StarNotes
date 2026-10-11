package net.p110sf.saxon.om;

import net.p110sf.saxon.event.IgnorableWhitespaceStripper;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.ComplexType;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.Untyped;

/* loaded from: classes11.dex */
public class IgnorableSpaceStrippingRule implements SpaceStrippingRule {

    /* renamed from: a */
    public static final IgnorableSpaceStrippingRule f100799a = new IgnorableSpaceStrippingRule();

    public static IgnorableSpaceStrippingRule getInstance() {
        return f100799a;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public void export(ExpressionPresenter expressionPresenter) {
        expressionPresenter.startElement("strip.ignorable");
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) {
        if (schemaType == Untyped.getInstance() || !schemaType.isComplexType()) {
            return 1;
        }
        ComplexType complexType = (ComplexType) schemaType;
        return (complexType.isSimpleContent() || complexType.isMixedContent()) ? 1 : 2;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public ProxyReceiver makeStripper(Receiver receiver) {
        return new IgnorableWhitespaceStripper(receiver);
    }
}
