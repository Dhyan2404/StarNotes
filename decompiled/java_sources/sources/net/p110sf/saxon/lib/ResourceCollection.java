package net.p110sf.saxon.lib;

import java.util.Iterator;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface ResourceCollection {
    String getCollectionURI();

    Iterator<String> getResourceURIs(XPathContext xPathContext) throws XPathException;

    Iterator<? extends Resource> getResources(XPathContext xPathContext) throws XPathException;

    boolean isStable(XPathContext xPathContext);
}
