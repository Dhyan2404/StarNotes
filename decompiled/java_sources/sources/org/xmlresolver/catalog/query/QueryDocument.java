package org.xmlresolver.catalog.query;

import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryDocument;

/* loaded from: classes16.dex */
public class QueryDocument extends QueryCatalog {
    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.DOCUMENT).iterator();
        return it2.hasNext() ? new QueryResult(((EntryDocument) it2.next()).uri) : QueryResult.EMPTY_RESULT;
    }
}
