package net.p110sf.saxon.lib;

import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface SourceResolver {
    ActiveSource resolveSource(Source source, Configuration configuration) throws XPathException;
}
