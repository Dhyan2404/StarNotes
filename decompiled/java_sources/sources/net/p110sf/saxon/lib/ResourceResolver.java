package net.p110sf.saxon.lib;

import javax.xml.transform.Source;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ResourceResolver {
    Source resolve(ResourceRequest resourceRequest) throws XPathException;
}
