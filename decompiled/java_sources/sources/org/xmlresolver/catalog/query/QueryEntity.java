package org.xmlresolver.catalog.query;

import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryEntity;
import org.xmlresolver.utils.PublicId;

/* loaded from: classes16.dex */
public class QueryEntity extends QueryCatalog {
    public final String entityName;
    public final String publicId;
    public final String systemId;

    public QueryEntity(String str, String str2, String str3) {
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
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.ENTITY).iterator();
        while (it2.hasNext()) {
            EntryEntity entryEntity = (EntryEntity) it2.next();
            if (entryEntity.name.equals(this.entityName)) {
                return new QueryResult(entryEntity.uri);
            }
        }
        return QueryResult.EMPTY_RESULT;
    }
}
