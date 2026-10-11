package net.p110sf.saxon.om;

import java.util.Arrays;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class StylesheetSpaceStrippingRule implements SpaceStrippingRule {

    /* renamed from: b */
    public static final int[] f100869b = {131, 132, 133, 138, 140, 142, 143, 153, 174, 178, 183, 184, 208, 212};

    /* renamed from: a */
    public final NamePool f100870a;

    public StylesheetSpaceStrippingRule(NamePool namePool) {
        this.f100870a = namePool;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public void export(ExpressionPresenter expressionPresenter) {
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) {
        int obtainFingerprint = nodeName.obtainFingerprint(this.f100870a);
        if (obtainFingerprint == 211) {
            return 1;
        }
        return Arrays.binarySearch(f100869b, obtainFingerprint) >= 0 ? 2 : 0;
    }

    @Override // net.p110sf.saxon.om.SpaceStrippingRule
    public ProxyReceiver makeStripper(Receiver receiver) {
        return new Stripper(this, receiver);
    }
}
