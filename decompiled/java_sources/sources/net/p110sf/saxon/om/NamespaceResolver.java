package net.p110sf.saxon.om;

import java.util.Iterator;

/* loaded from: classes11.dex */
public interface NamespaceResolver {
    String getURIForPrefix(String str, boolean z);

    Iterator<String> iteratePrefixes();
}
