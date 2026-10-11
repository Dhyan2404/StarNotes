package net.p110sf.saxon.lib;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.resource.AbstractResourceCollection;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ResourceFactory {
    Resource makeResource(XPathContext xPathContext, AbstractResourceCollection.InputDetails inputDetails) throws XPathException;
}
