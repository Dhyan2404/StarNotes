package org.xmlresolver.catalog.entry;

import java.net.URI;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import org.xml.sax.Locator;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;

/* loaded from: classes16.dex */
public class EntryCatalog extends Entry {
    protected static final ArrayList<Entry> none = new ArrayList<>();
    protected final ArrayList<Entry> entries;
    protected Locator locator;
    public final boolean preferPublic;
    protected final HashMap<Entry.Type, ArrayList<Entry>> typedEntries;

    public EntryCatalog(ResolverConfiguration resolverConfiguration, URI uri, String str, boolean z) {
        super(resolverConfiguration, uri, str);
        this.entries = new ArrayList<>();
        this.typedEntries = new HashMap<>();
        this.locator = null;
        this.preferPublic = z;
    }

    public synchronized void add(Entry entry) {
        this.entries.add(entry);
        if (!this.typedEntries.containsKey(entry.getType())) {
            this.typedEntries.put(entry.getType(), new ArrayList<>());
        }
        this.typedEntries.get(entry.getType()).add(entry);
    }

    public EntryDelegatePublic addDelegatePublic(URI uri, String str, String str2, String str3, boolean z) {
        if (str2 == null || str3 == null) {
            error("Invalid delegatePublic entry (missing publicIdStartString or catalog attribute)", new Object[0]);
            return null;
        }
        EntryDelegatePublic entryDelegatePublic = new EntryDelegatePublic(this.config, uri, str, str2, str3, z);
        add(entryDelegatePublic);
        return entryDelegatePublic;
    }

    public EntryDelegateSystem addDelegateSystem(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid delegateSystem entry (missing systemIdStartString or catalog attribute)", new Object[0]);
            return null;
        }
        EntryDelegateSystem entryDelegateSystem = new EntryDelegateSystem(this.config, uri, str, str2, str3);
        add(entryDelegateSystem);
        return entryDelegateSystem;
    }

    public EntryDelegateUri addDelegateUri(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid delegateURI entry (missing uriStartString or catalog attribute)", new Object[0]);
            return null;
        }
        EntryDelegateUri entryDelegateUri = new EntryDelegateUri(this.config, uri, str, str2, str3);
        add(entryDelegateUri);
        return entryDelegateUri;
    }

    public EntryDoctype addDoctype(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid doctype entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryDoctype entryDoctype = new EntryDoctype(this.config, uri, str, str2, str3);
        add(entryDoctype);
        return entryDoctype;
    }

    public EntryDocument addDocument(URI uri, String str, String str2) {
        if (str2 == null) {
            error("Invalid document entry (missing uri attribute)", new Object[0]);
            return null;
        }
        EntryDocument entryDocument = new EntryDocument(this.config, uri, str, str2);
        add(entryDocument);
        return entryDocument;
    }

    public EntryDtddecl addDtdDecl(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid dtddecl entry (missing publicId or uri attribute)", new Object[0]);
            return null;
        }
        EntryDtddecl entryDtddecl = new EntryDtddecl(this.config, uri, str, str2, str3);
        add(entryDtddecl);
        return entryDtddecl;
    }

    public EntryEntity addEntity(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid entity entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryEntity entryEntity = new EntryEntity(this.config, uri, str, str2, str3);
        add(entryEntity);
        return entryEntity;
    }

    public EntryGroup addGroup(URI uri, String str, boolean z) {
        EntryGroup entryGroup = new EntryGroup(this.config, uri, str, z);
        add(entryGroup);
        return entryGroup;
    }

    public EntryLinktype addLinktype(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid linktype entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryLinktype entryLinktype = new EntryLinktype(this.config, uri, str, str2, str3);
        add(entryLinktype);
        return entryLinktype;
    }

    public EntryNextCatalog addNextCatalog(URI uri, String str, String str2) {
        if (str2 == null) {
            error("Invalid nextCatalog entry (missing catalog attribute)", new Object[0]);
            return null;
        }
        EntryNextCatalog entryNextCatalog = new EntryNextCatalog(this.config, uri, str, str2);
        add(entryNextCatalog);
        return entryNextCatalog;
    }

    public EntryNotation addNotation(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid notation entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryNotation entryNotation = new EntryNotation(this.config, uri, str, str2, str3);
        add(entryNotation);
        return entryNotation;
    }

    public EntryPublic addPublic(URI uri, String str, String str2, String str3, boolean z) {
        if (str2 == null || str3 == null) {
            error("Invalid public entry (missing publicId or uri attribute)", new Object[0]);
            return null;
        }
        EntryPublic entryPublic = new EntryPublic(this.config, uri, str, str2, str3, z);
        add(entryPublic);
        return entryPublic;
    }

    public EntryRewriteSystem addRewriteSystem(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid rewriteSystem entry (missing systemIdStartString or prefix attribute)", new Object[0]);
            return null;
        }
        EntryRewriteSystem entryRewriteSystem = new EntryRewriteSystem(this.config, uri, str, str2, str3);
        add(entryRewriteSystem);
        return entryRewriteSystem;
    }

    public EntryRewriteUri addRewriteUri(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid rewriteURI entry (missing uriStartString or prefix attribute)", new Object[0]);
            return null;
        }
        EntryRewriteUri entryRewriteUri = new EntryRewriteUri(this.config, uri, str, str2, str3);
        add(entryRewriteUri);
        return entryRewriteUri;
    }

    public EntrySgmldecl addSgmlDecl(URI uri, String str, String str2) {
        if (str2 == null) {
            error("Invalid sgmldecl entry (uri attribute)", new Object[0]);
            return null;
        }
        EntrySgmldecl entrySgmldecl = new EntrySgmldecl(this.config, uri, str, str2);
        add(entrySgmldecl);
        return entrySgmldecl;
    }

    public EntrySystem addSystem(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid system entry (missing systemId or uri attribute)", new Object[0]);
            return null;
        }
        EntrySystem entrySystem = new EntrySystem(this.config, uri, str, str2, str3);
        add(entrySystem);
        return entrySystem;
    }

    public EntrySystemSuffix addSystemSuffix(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid systemSuffix entry (missing systemIdSuffix or uri attribute)", new Object[0]);
            return null;
        }
        EntrySystemSuffix entrySystemSuffix = new EntrySystemSuffix(this.config, uri, str, str2, str3);
        add(entrySystemSuffix);
        return entrySystemSuffix;
    }

    public EntryUri addUri(URI uri, String str, String str2, String str3, String str4, String str5) {
        if (str2 == null || str3 == null) {
            error("Invalid uri entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryUri entryUri = new EntryUri(this.config, uri, str, str2, str3, str4, str5);
        add(entryUri);
        return entryUri;
    }

    public EntryUriSuffix addUriSuffix(URI uri, String str, String str2, String str3) {
        if (str2 == null || str3 == null) {
            error("Invalid uriSuffix entry (missing uriStartString or uri attribute)", new Object[0]);
            return null;
        }
        EntryUriSuffix entryUriSuffix = new EntryUriSuffix(this.config, uri, str, str2, str3);
        add(entryUriSuffix);
        return entryUriSuffix;
    }

    public synchronized List<Entry> entries() {
        return this.entries;
    }

    public void error(String str, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.baseURI);
        Locator locator = this.locator;
        if (locator != null && locator.getLineNumber() > 0) {
            sb.append(":");
            sb.append(this.locator.getLineNumber());
            if (this.locator.getColumnNumber() > 0) {
                sb.append(":");
                sb.append(this.locator.getColumnNumber());
            }
        }
        sb.append(":");
        new Formatter(sb).format(str, objArr);
        this.logger.log("error", sb.toString(), new Object[0]);
    }

    @Override // org.xmlresolver.catalog.entry.Entry
    public Entry.Type getType() {
        return Entry.Type.CATALOG;
    }

    public synchronized void remove(Entry entry) {
        this.entries.remove(entry);
        if (this.typedEntries.containsKey(entry.getType())) {
            this.typedEntries.get(entry.getType()).remove(entry);
        }
    }

    public void setLocator(Locator locator) {
        this.locator = locator;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("catalog prefer=");
        sb.append(this.preferPublic ? "public" : "system");
        return sb.toString();
    }

    public synchronized List<Entry> entries(Entry.Type type) {
        return this.typedEntries.getOrDefault(type, none);
    }
}
