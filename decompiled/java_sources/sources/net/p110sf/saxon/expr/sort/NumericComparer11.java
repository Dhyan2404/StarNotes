package net.p110sf.saxon.expr.sort;

import net.p110sf.saxon.value.StringToDouble11;

/* loaded from: classes11.dex */
public class NumericComparer11 extends NumericComparer {

    /* renamed from: b */
    public static final NumericComparer11 f100104b = new NumericComparer11();

    public NumericComparer11() {
        this.converter = StringToDouble11.getInstance();
    }

    public static NumericComparer getInstance() {
        return f100104b;
    }

    @Override // net.p110sf.saxon.expr.sort.NumericComparer, net.p110sf.saxon.expr.sort.AtomicComparer
    public String save() {
        return "NC11";
    }
}
