package org.xmlresolver.catalog.query;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.ResolverFeature;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryDelegateSystem;
import org.xmlresolver.catalog.entry.EntryRewriteSystem;
import org.xmlresolver.catalog.entry.EntrySystem;
import org.xmlresolver.catalog.entry.EntrySystemSuffix;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class QuerySystem extends QueryCatalog {
    public final String systemId;

    public QuerySystem(String str) {
        this.systemId = str;
    }

    @Override // org.xmlresolver.catalog.query.QueryCatalog
    public QueryResult lookup(CatalogManager catalogManager, EntryCatalog entryCatalog) {
        String normalizedForComparison = catalogManager.normalizedForComparison(this.systemId);
        String lowerCase = System.getProperty("os.name").toLowerCase();
        boolean z = lowerCase.contains("windows") || lowerCase.contains(CloudStorageConstants.MAC_TAG);
        String lowerCase2 = normalizedForComparison.toLowerCase();
        Iterator<Entry> it2 = entryCatalog.entries(Entry.Type.SYSTEM).iterator();
        while (it2.hasNext()) {
            EntrySystem entrySystem = (EntrySystem) it2.next();
            String normalizedForComparison2 = catalogManager.normalizedForComparison(entrySystem.systemId);
            if (normalizedForComparison2.equals(normalizedForComparison) || (z && normalizedForComparison2.equalsIgnoreCase(normalizedForComparison))) {
                return new QueryResult(entrySystem.uri);
            }
        }
        Iterator<Entry> it3 = entryCatalog.entries(Entry.Type.REWRITE_SYSTEM).iterator();
        EntrySystemSuffix entrySystemSuffix = null;
        EntryRewriteSystem entryRewriteSystem = null;
        String str = null;
        while (it3.hasNext()) {
            EntryRewriteSystem entryRewriteSystem2 = (EntryRewriteSystem) it3.next();
            String normalizedForComparison3 = catalogManager.normalizedForComparison(entryRewriteSystem2.systemIdStart);
            if (normalizedForComparison.startsWith(normalizedForComparison3) || (z && lowerCase2.startsWith(normalizedForComparison3.toLowerCase()))) {
                if (entryRewriteSystem == null || normalizedForComparison3.length() > str.length()) {
                    entryRewriteSystem = entryRewriteSystem2;
                    str = normalizedForComparison3;
                }
            }
        }
        if (entryRewriteSystem != null) {
            return new QueryResult(URIUtils.resolve(entryRewriteSystem.rewritePrefix, normalizedForComparison.substring(str.length())));
        }
        Iterator<Entry> it4 = entryCatalog.entries(Entry.Type.SYSTEM_SUFFIX).iterator();
        String str2 = null;
        while (it4.hasNext()) {
            EntrySystemSuffix entrySystemSuffix2 = (EntrySystemSuffix) it4.next();
            String normalizedForComparison4 = catalogManager.normalizedForComparison(entrySystemSuffix2.systemIdSuffix);
            if (normalizedForComparison.endsWith(normalizedForComparison4) || (z && lowerCase2.endsWith(normalizedForComparison4.toLowerCase()))) {
                if (entrySystemSuffix == null || normalizedForComparison4.length() > str2.length()) {
                    entrySystemSuffix = entrySystemSuffix2;
                    str2 = normalizedForComparison4;
                }
            }
        }
        if (entrySystemSuffix != null) {
            return new QueryResult(entrySystemSuffix.uri);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Entry> it5 = entryCatalog.entries(Entry.Type.DELEGATE_SYSTEM).iterator();
        while (it5.hasNext()) {
            EntryDelegateSystem entryDelegateSystem = (EntryDelegateSystem) it5.next();
            String normalizedForComparison5 = catalogManager.normalizedForComparison(entryDelegateSystem.systemIdStart);
            if (normalizedForComparison.startsWith(normalizedForComparison5) || (z && lowerCase2.startsWith(normalizedForComparison5.toLowerCase()))) {
                int i = 0;
                while (i < arrayList.size() && normalizedForComparison5.length() <= catalogManager.normalizedForComparison(((EntryDelegateSystem) arrayList.get(i)).systemIdStart).length()) {
                    i++;
                }
                arrayList.add(i, entryDelegateSystem);
            }
        }
        if (arrayList.isEmpty()) {
            return ((Boolean) catalogManager.getResolverConfiguration().getFeature(ResolverFeature.URI_FOR_SYSTEM)).booleanValue() ? new QueryUri(this.systemId).lookup(catalogManager, entryCatalog) : QueryResult.EMPTY_RESULT;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it6 = arrayList.iterator();
        while (it6.hasNext()) {
            arrayList2.add(((EntryDelegateSystem) it6.next()).catalog);
        }
        return new QueryDelegateSystem(this.systemId, arrayList2);
    }
}
