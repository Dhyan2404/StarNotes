package net.p110sf.saxon.sapling;

import java.util.Objects;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SaplingText extends SaplingNode {

    /* renamed from: e */
    public final String f101481e;

    public SaplingText(String str) {
        Objects.requireNonNull(str);
        this.f101481e = str;
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        receiver.characters(StringView.m63901of(this.f101481e), Loc.NONE, 0);
    }

    @Override // net.p110sf.saxon.sapling.SaplingNode
    public int getNodeKind() {
        return 3;
    }

    public String getStringValue() {
        return this.f101481e;
    }
}
