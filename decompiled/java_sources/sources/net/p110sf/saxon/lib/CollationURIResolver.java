package net.p110sf.saxon.lib;

import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface CollationURIResolver {
    StringCollator resolve(String str, Configuration configuration) throws XPathException;
}
