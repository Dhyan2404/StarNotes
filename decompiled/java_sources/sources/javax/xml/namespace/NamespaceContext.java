package javax.xml.namespace;

import java.util.Iterator;

/* loaded from: classes5.dex */
public interface NamespaceContext {
    String getNamespaceURI(String str);

    String getPrefix(String str);

    Iterator getPrefixes(String str);
}
