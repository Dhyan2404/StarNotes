package net.p110sf.saxon.query;

import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class QueryLibrary extends QueryModule {
    public QueryLibrary(StaticQueryContext staticQueryContext) throws XPathException {
        super(staticQueryContext);
    }

    public abstract void link(QueryModule queryModule) throws XPathException;
}
