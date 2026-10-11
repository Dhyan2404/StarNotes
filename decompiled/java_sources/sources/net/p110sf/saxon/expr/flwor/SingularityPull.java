package net.p110sf.saxon.expr.flwor;

import net.p110sf.saxon.expr.XPathContext;

/* loaded from: classes11.dex */
public class SingularityPull extends TuplePull {

    /* renamed from: a */
    public boolean f99554a = false;

    @Override // net.p110sf.saxon.expr.flwor.TuplePull
    public boolean nextTuple(XPathContext xPathContext) {
        if (this.f99554a) {
            return false;
        }
        this.f99554a = true;
        return true;
    }
}
