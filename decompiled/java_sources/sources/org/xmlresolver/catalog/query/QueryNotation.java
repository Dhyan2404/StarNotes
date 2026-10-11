package org.xmlresolver.catalog.query;

import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryNotation;
import org.xmlresolver.utils.PublicId;

/* loaded from: classes16.dex */
public class QueryNotation extends QueryCatalog {
    public final String notationName;
    public final String publicId;
    public final String systemId;

    public QueryNotation(String str, String str2, String str3) {
        this.notationName = str;
        this.systemId = str2;
        this.publicId = str3 == null ? null : PublicId.normalize(str3);
    }

    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        QueryResult lookup = new QueryPublic(this.systemId, this.publicId).lookup(catalogManager, entryCatalog);
        if (lookup.resolved()) {
            return lookup;
        }
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.NOTATION).iterator();
        while (it2.hasNext()) {
            EntryNotation entryNotation = (EntryNotation) it2.next();
            if (entryNotation.name.equals(this.notationName)) {
                return new QueryResult(entryNotation.uri);
            }
        }
        return QueryResult.EMPTY_RESULT;
    }
}
