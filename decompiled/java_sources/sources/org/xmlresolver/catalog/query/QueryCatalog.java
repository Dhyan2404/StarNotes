package org.xmlresolver.catalog.query;

import java.net.URI;
import java.util.ArrayList;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.EntryCatalog;

/* loaded from: classes16.dex */
public abstract class QueryCatalog extends QueryResult {
    public abstract QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog);

    @Override // org.xmlresolver.catalog.query.QueryResult
    public boolean query() {
        return true;
    }

    public QueryResult search(CatalogManager catalogManager) {
        ArrayList<URI> arrayList = new ArrayList<>(catalogManager.catalogs());
        while (!arrayList.isEmpty()) {
            boolean z = false;
            EntryCatalog loadCatalog = catalogManager.loadCatalog(arrayList.remove(0));
            QueryCatalog queryCatalog = this;
            while (!z) {
                QueryResult lookup = queryCatalog.lookup(catalogManager, loadCatalog);
                boolean resolved = lookup.resolved();
                arrayList = lookup.updatedCatalogSearchList(loadCatalog, arrayList);
                if (lookup.query()) {
                    queryCatalog = (QueryCatalog) lookup;
                    z = resolved;
                } else {
                    if (lookup.resolved()) {
                        return lookup;
                    }
                    z = true;
                }
            }
        }
        return QueryResult.EMPTY_RESULT;
    }
}
