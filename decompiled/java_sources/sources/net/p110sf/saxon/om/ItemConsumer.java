package net.p110sf.saxon.om;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ItemConsumer<T extends Item> {
    void accept(T t) throws XPathException;
}
