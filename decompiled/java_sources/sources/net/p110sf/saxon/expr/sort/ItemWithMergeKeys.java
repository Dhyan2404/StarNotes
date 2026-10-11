package net.p110sf.saxon.expr.sort;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public class ItemWithMergeKeys {

    /* renamed from: a */
    public Item f100068a;

    /* renamed from: b */
    public List<AtomicValue> f100069b;

    /* renamed from: c */
    public String f100070c;

    public ItemWithMergeKeys(Item item, SortKeyDefinitionList sortKeyDefinitionList, String str, XPathContext xPathContext) throws XPathException {
        this.f100068a = item;
        this.f100070c = str;
        this.f100069b = new ArrayList(sortKeyDefinitionList.size());
        Iterator<SortKeyDefinition> it2 = sortKeyDefinitionList.iterator();
        while (it2.hasNext()) {
            this.f100069b.add((AtomicValue) it2.next().getSortKey().evaluateItem(xPathContext));
        }
    }
}
