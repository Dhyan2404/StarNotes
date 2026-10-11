package net.p110sf.saxon.sapling;

import java.util.Objects;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaplingProcessingInstruction extends SaplingNode {

    /* renamed from: e */
    public final String f101479e;

    /* renamed from: f */
    public final String f101480f;

    public SaplingProcessingInstruction(String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        this.f101479e = str;
        this.f101480f = str2;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        receiver.processingInstruction(this.f101479e, StringView.m63901of(this.f101480f), Loc.NONE, 0);
    }

    public String getName() {
        return this.f101479e;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public int getNodeKind() {
        return 7;
    }

    public String getStringValue() {
        return this.f101480f;
    }
}
