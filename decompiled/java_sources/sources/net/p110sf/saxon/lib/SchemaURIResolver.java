package net.p110sf.saxon.lib;

import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface SchemaURIResolver {
    Source[] resolve(String str, String str2, String[] strArr) throws XPathException;

    void setConfiguration(Configuration configuration);
}
