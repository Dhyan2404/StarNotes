package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface CollectionFinder {
    ResourceCollection findCollection(XPathContext xPathContext, String str) throws XPathException;
}
