package net.p110sf.saxon.lib;

import java.io.Reader;
import java.net.URI;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface UnparsedTextURIResolver {
    Reader resolve(URI uri, String str, Configuration configuration) throws XPathException;
}
