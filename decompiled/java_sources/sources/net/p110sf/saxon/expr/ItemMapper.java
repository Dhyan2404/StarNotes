package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ItemMapper implements ItemMappingFunction {

    /* renamed from: e */
    public final Lambda f99279e;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface Lambda {
        Item map(Item item) throws XPathException;
    }

    public ItemMapper(Lambda lambda) {
        this.f99279e = lambda;
    }

    /* renamed from: of */
    public static ItemMapper m62594of(Lambda lambda) {
        return new ItemMapper(lambda);
    }

    @Override // net.p110sf.saxon.expr.ItemMappingFunction
    public Item mapItem(Item item) throws XPathException {
        return this.f99279e.map(item);
    }
}
