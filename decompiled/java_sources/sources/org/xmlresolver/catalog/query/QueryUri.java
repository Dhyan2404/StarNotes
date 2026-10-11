package org.xmlresolver.catalog.query;

import java.util.ArrayList;
import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryDelegateUri;
import org.xmlresolver.catalog.entry.EntryRewriteUri;
import org.xmlresolver.catalog.entry.EntryUri;
import org.xmlresolver.catalog.entry.EntryUriSuffix;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class QueryUri extends QueryCatalog {
    public final String nature;
    public final String purpose;
    public final String uri;

    public QueryUri(String str, String str2, String str3) {
        this.uri = str;
        this.nature = str2;
        this.purpose = str3;
    }

    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        String str;
        String str2;
        String normalizedForComparison = catalogManager.normalizedForComparison(this.uri);
        String normalizedForComparison2 = catalogManager.normalizedForComparison(this.nature);
        String normalizedForComparison3 = catalogManager.normalizedForComparison(this.purpose);
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.URI).iterator();
        while (it2.hasNext()) {
            EntryUri entryUri = (EntryUri) it2.next();
            if (normalizedForComparison.equals(catalogManager.normalizedForComparison(entryUri.name)) && (this.nature == null || (str2 = entryUri.nature) == null || normalizedForComparison2.equals(catalogManager.normalizedForComparison(str2)))) {
                if (this.purpose == null || (str = entryUri.purpose) == null || normalizedForComparison3.equals(catalogManager.normalizedForComparison(str))) {
                    return new QueryResult(entryUri.uri);
                }
            }
        }
        Iterator<Entry> it3 = entryCatalog.entries(Entry.Type.REWRITE_URI).iterator();
        EntryUriSuffix entryUriSuffix = null;
        EntryRewriteUri entryRewriteUri = null;
        String str3 = null;
        while (it3.hasNext()) {
            EntryRewriteUri entryRewriteUri2 = (EntryRewriteUri) it3.next();
            String normalizedForComparison4 = catalogManager.normalizedForComparison(entryRewriteUri2.uriStart);
            if (normalizedForComparison.startsWith(normalizedForComparison4) && (entryRewriteUri == null || normalizedForComparison4.length() > str3.length())) {
                entryRewriteUri = entryRewriteUri2;
                str3 = normalizedForComparison4;
            }
        }
        if (entryRewriteUri != null) {
            return new QueryResult(URIUtils.resolve(entryRewriteUri.rewritePrefix, normalizedForComparison.substring(str3.length())));
        }
        Iterator<Entry> it4 = entryCatalog.entries(Entry.Type.URI_SUFFIX).iterator();
        String str4 = null;
        while (it4.hasNext()) {
            EntryUriSuffix entryUriSuffix2 = (EntryUriSuffix) it4.next();
            String normalizedForComparison5 = catalogManager.normalizedForComparison(entryUriSuffix2.uriSuffix);
            if (normalizedForComparison.endsWith(normalizedForComparison5) && (entryUriSuffix == null || normalizedForComparison5.length() > str4.length())) {
                entryUriSuffix = entryUriSuffix2;
                str4 = normalizedForComparison5;
            }
        }
        if (entryUriSuffix != null) {
            return new QueryResult(entryUriSuffix.uri);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Entry> it5 = entryCatalog.entries(Entry.Type.DELEGATE_URI).iterator();
        while (it5.hasNext()) {
            EntryDelegateUri entryDelegateUri = (EntryDelegateUri) it5.next();
            String normalizedForComparison6 = catalogManager.normalizedForComparison(entryDelegateUri.uriStart);
            if (normalizedForComparison.startsWith(normalizedForComparison6)) {
                int i = 0;
                while (i < arrayList.size() && normalizedForComparison6.length() <= catalogManager.normalizedForComparison(((EntryDelegateUri) arrayList.get(i)).uriStart).length()) {
                    i++;
                }
                arrayList.add(i, entryDelegateUri);
            }
        }
        if (arrayList.isEmpty()) {
            return QueryResult.EMPTY_RESULT;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it6 = arrayList.iterator();
        while (it6.hasNext()) {
            arrayList2.add(((EntryDelegateUri) it6.next()).catalog);
        }
        return new QueryDelegateUri(this.uri, this.nature, this.purpose, arrayList2);
    }

    public QueryUri(String str) {
        this.uri = str;
        this.nature = null;
        this.purpose = null;
    }
}
