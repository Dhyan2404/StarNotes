package org.xmlresolver.catalog.query;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryNextCatalog;

/* loaded from: classes16.dex */
public class QueryResult {
    public static final QueryResult EMPTY_RESULT = new QueryResult();
    public static final QueryResult FINAL_RESULT = new QueryResult(null);

    /* renamed from: a */
    public final boolean f116180a;

    /* renamed from: b */
    public URI f116181b;

    public QueryResult() {
        this.f116181b = null;
        this.f116180a = false;
    }

    public boolean query() {
        return false;
    }

    public boolean resolved() {
        return this.f116180a;
    }

    public ArrayList<URI> updatedCatalogSearchList(EntryCatalog entryCatalog, ArrayList<URI> arrayList) {
        ArrayList<URI> arrayList2 = new ArrayList<>();
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.NEXT_CATALOG).iterator();
        while (it2.hasNext()) {
            arrayList2.add(((EntryNextCatalog) it2.next()).catalog);
        }
        arrayList2.addAll(arrayList);
        return arrayList2;
    }

    public URI uri() {
        return this.f116181b;
    }

    public QueryResult(URI uri) {
        this.f116180a = true;
        this.f116181b = uri;
    }
}
