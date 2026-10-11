package org.xmlresolver.catalog.query;

import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryDoctype;
import org.xmlresolver.utils.PublicId;

/* loaded from: classes16.dex */
public class QueryDoctype extends QueryCatalog {
    public final String entityName;
    public final String publicId;
    public final String systemId;

    public QueryDoctype(String str, String str2, String str3) {
        this.entityName = str;
        this.systemId = str2;
        this.publicId = str3 == null ? null : PublicId.normalize(str3);
    }

    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        QueryResult lookup = new QueryPublic(this.systemId, this.publicId).lookup(catalogManager, entryCatalog);
        if (lookup.resolved()) {
            return lookup;
        }
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.DOCTYPE).iterator();
        while (it2.hasNext()) {
            EntryDoctype entryDoctype = (EntryDoctype) it2.next();
            if (entryDoctype.name.equals(this.entityName)) {
                return new QueryResult(entryDoctype.uri);
            }
        }
        return QueryResult.EMPTY_RESULT;
    }
}
