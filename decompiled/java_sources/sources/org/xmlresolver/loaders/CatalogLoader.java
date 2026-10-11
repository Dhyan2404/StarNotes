package org.xmlresolver.loaders;

import java.net.URI;
import org.xml.sax.InputSource;
import org.xmlresolver.catalog.entry.EntryCatalog;

/* loaded from: classes16.dex */
public interface CatalogLoader {
    boolean getArchivedCatalogs();

    boolean getPreferPublic();

    EntryCatalog loadCatalog(URI uri);

    EntryCatalog loadCatalog(URI uri, InputSource inputSource);

    void setArchivedCatalogs(boolean z);

    void setPreferPublic(boolean z);
}
