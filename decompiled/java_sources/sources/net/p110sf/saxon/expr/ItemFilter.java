package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class ItemFilter implements ItemMappingFunction {

    /* renamed from: e */
    public final Lambda f99278e;

    @FunctionalInterface
    /* loaded from: classes11.dex */
    public interface Lambda {
        boolean test(Item item) throws XPathException;
    }

    public ItemFilter(Lambda lambda) {
        this.f99278e = lambda;
    }

    /* renamed from: of */
    public static ItemFilter m62593of(Lambda lambda) {
        return new ItemFilter(lambda);
    }

    @Override // net.p110sf.saxon.expr.ItemMappingFunction
    public Item mapItem(Item item) throws XPathException {
        if (this.f99278e.test(item)) {
            return item;
        }
        return null;
    }
}
