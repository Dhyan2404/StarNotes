package org.apache.xmlbeans.impl.tool;

import com.sun.org.apache.xml.internal.resolver.CatalogManager;
import com.sun.org.apache.xml.internal.resolver.tools.CatalogResolver;
import org.apache.xmlbeans.impl.util.SuppressForbidden;
import org.xml.sax.EntityResolver;

@SuppressForbidden("class is available in Java 8 and multi-release version handles newer official package namespace")
/* loaded from: classes13.dex */
public class MavenPluginResolver {
    public static EntityResolver getResolver(String str) {
        if (str == null) {
            return null;
        }
        CatalogManager staticManager = CatalogManager.getStaticManager();
        staticManager.setCatalogFiles(str);
        return new CatalogResolver(staticManager);
    }
}
