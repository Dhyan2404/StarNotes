package org.xmlresolver;

import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;

/* loaded from: classes16.dex */
public interface NamespaceResolver {
    Source resolveNamespace(String str, String str2, String str3) throws TransformerException;
}
