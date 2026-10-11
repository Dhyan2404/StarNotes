package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SequenceMapper implements MappingFunction {

    /* renamed from: e */
    public final Lambda f99367e;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface Lambda {
        SequenceIterator map(Item item) throws XPathException;
    }

    public SequenceMapper(Lambda lambda) {
        this.f99367e = lambda;
    }

    /* renamed from: of */
    public static SequenceMapper m62631of(Lambda lambda) {
        return new SequenceMapper(lambda);
    }

    @Override // net.p110sf.saxon.expr.MappingFunction
    public SequenceIterator map(Item item) throws XPathException {
        return this.f99367e.map(item);
    }
}
