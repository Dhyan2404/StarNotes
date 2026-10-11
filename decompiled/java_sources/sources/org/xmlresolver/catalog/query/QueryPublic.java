package org.xmlresolver.catalog.query;

import java.util.ArrayList;
import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryDelegatePublic;
import org.xmlresolver.catalog.entry.EntryPublic;

/* loaded from: classes16.dex */
public class QueryPublic extends QueryCatalog {
    public final String publicId;
    public final String systemId;

    public QueryPublic(String str, String str2) {
        this.systemId = str;
        this.publicId = str2;
    }

    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        String str = this.systemId;
        if (str != null) {
            QueryResult lookup = new QuerySystem(str).lookup(catalogManager, entryCatalog);
            if (lookup.resolved()) {
                return lookup;
            }
        }
        if (this.publicId != null) {
            Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.PUBLIC).iterator();
            while (it2.hasNext()) {
                EntryPublic entryPublic = (EntryPublic) it2.next();
                if (entryPublic.preferPublic || this.systemId == null) {
                    if (entryPublic.publicId.equals(this.publicId)) {
                        return new QueryResult(entryPublic.uri);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Entry> it3 = entryCatalog.entries(Entry.Type.DELEGATE_PUBLIC).iterator();
            while (it3.hasNext()) {
                EntryDelegatePublic entryDelegatePublic = (EntryDelegatePublic) it3.next();
                if (entryDelegatePublic.preferPublic || this.systemId == null) {
                    if (this.publicId.startsWith(entryDelegatePublic.publicIdStart)) {
                        int i = 0;
                        while (i < arrayList.size() && entryDelegatePublic.publicIdStart.length() <= ((EntryDelegatePublic) arrayList.get(i)).publicIdStart.length()) {
                            i++;
                        }
                        arrayList.add(i, entryDelegatePublic);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    arrayList2.add(((EntryDelegatePublic) it4.next()).catalog);
                }
                return new QueryDelegatePublic(this.systemId, this.publicId, arrayList2);
            }
        }
        return QueryResult.EMPTY_RESULT;
    }
}
