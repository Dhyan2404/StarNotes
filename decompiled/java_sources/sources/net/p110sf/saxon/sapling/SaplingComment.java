package net.p110sf.saxon.sapling;

import java.util.Objects;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaplingComment extends SaplingNode {

    /* renamed from: e */
    public final String f101472e;

    public SaplingComment(String str) {
        Objects.requireNonNull(str);
        this.f101472e = str;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        receiver.comment(StringView.m63901of(this.f101472e), Loc.NONE, 0);
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public int getNodeKind() {
        return 8;
    }

    public String getStringValue() {
        return this.f101472e;
    }
}
