package org.xmlresolver.catalog.query;

import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.xmlresolver.catalog.entry.EntryCatalog;

/* loaded from: classes16.dex */
public class QueryDelegatePublic extends QueryPublic {
    protected final List<URI> catalogs;

    public QueryDelegatePublic(String str, String str2, List<URI> list) {
        super(str, str2);
        this.catalogs = list;
    }

    @Override // org.xmlresolver.catalog.query.QueryResult
    public boolean resolved() {
        return true;
    }

    @Override // org.xmlresolver.catalog.query.QueryResult
    public ArrayList<URI> updatedCatalogSearchList(EntryCatalog entryCatalog, ArrayList<URI> arrayList) {
        return new ArrayList<>(this.catalogs);
    }
}
