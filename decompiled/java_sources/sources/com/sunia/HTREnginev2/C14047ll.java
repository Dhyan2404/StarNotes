package com.sunia.HTREnginev2;

import java.util.stream.Stream;
import net.p110sf.saxon.s9api.Axis;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.streams.Step;

/* renamed from: com.sunia.HTREnginev2.ll */
/* loaded from: classes11.dex */
public class C14047ll extends Step<XdmNode> {

    /* renamed from: e */
    public final Axis f76562e;

    public C14047ll(Axis axis) {
        this.f76562e = axis;
    }

    @Override // java.util.function.Function
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Stream<? extends XdmNode> apply(XdmItem xdmItem) {
        return xdmItem instanceof XdmNode ? ((XdmNode) xdmItem).axisIterator(this.f76562e).stream() : Stream.empty();
    }
}
