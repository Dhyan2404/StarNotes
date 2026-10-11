package net.p110sf.saxon.lib;

import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface ModuleURIResolver {
    StreamSource[] resolve(String str, String str2, String[] strArr) throws XPathException;
}
