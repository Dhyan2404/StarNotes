package org.xmlresolver.cache;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.scribe.model.ParameterList;
import org.xml.sax.Locator;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryCatalog;
import org.xmlresolver.catalog.entry.EntryPublic;
import org.xmlresolver.catalog.entry.EntrySystem;
import org.xmlresolver.catalog.entry.EntryUri;

/* loaded from: classes16.dex */
public class CacheEntryCatalog extends EntryCatalog {

    /* renamed from: a */
    public final URI f116144a;
    public final ArrayList<CacheEntry> cached;

    /* renamed from: org.xmlresolver.cache.CacheEntryCatalog$a */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C20489a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f116145a;

        static {
            int[] iArr = new int[Entry.Type.values().length];
            f116145a = iArr;
            try {
                iArr[Entry.Type.URI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f116145a[Entry.Type.SYSTEM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f116145a[Entry.Type.PUBLIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public CacheEntryCatalog(ResolverConfiguration resolverConfiguration, URI uri, String str, boolean z) {
        super(resolverConfiguration, uri, str, z);
        this.cached = new ArrayList<>();
        this.f116144a = uri;
    }

    public static String xmlEscape(String str) {
        return str.replace(ParameterList.f115951c, "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace(CloudStorageConstants.SINGLE_QUOTES, "&apos;");
    }

    @Override // org.xmlresolver.catalog.entry.EntryCatalog
    public void add(Entry entry) {
        throw new IllegalStateException("Attempt to add entry to cache catalog");
    }

    public EntryPublic addPublic(URI uri, String str, String str2, long j) {
        if (str == null || str2 == null) {
            error("Invalid public entry (missing publicId or uri attribute)", new Object[0]);
            return null;
        }
        EntryPublic entryPublic = new EntryPublic(this.config, uri, null, str, str2, true);
        add(entryPublic, Long.valueOf(j));
        return entryPublic;
    }

    public EntrySystem addSystem(URI uri, String str, String str2, long j) {
        if (str == null || str2 == null) {
            error("Invalid system entry (missing systemId or uri attribute)", new Object[0]);
            return null;
        }
        EntrySystem entrySystem = new EntrySystem(this.config, uri, null, str, str2);
        add(entrySystem, Long.valueOf(j));
        return entrySystem;
    }

    public EntryUri addUri(URI uri, String str, String str2, String str3, String str4, long j) {
        if (str == null || str2 == null) {
            error("Invalid uri entry (missing name or uri attribute)", new Object[0]);
            return null;
        }
        EntryUri entryUri = new EntryUri(this.config, uri, null, str, str2, str3, str4);
        add(entryUri, Long.valueOf(j));
        return entryUri;
    }

    @Override // org.xmlresolver.catalog.entry.EntryCatalog
    public void error(String str, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f116144a);
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
        this.logger.log("cache", sb.toString(), new Object[0]);
    }

    public void expire(CacheEntry cacheEntry) {
        cacheEntry.expired = true;
        this.cached.remove(cacheEntry);
        super.remove(cacheEntry.entry);
    }

    public void flushCache(Pattern pattern, long j, long j2, File file) {
        long j3;
        boolean z;
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator<CacheEntry> it2 = this.cached.iterator();
        long j4 = 0;
        int i = 0;
        while (it2.hasNext()) {
            CacheEntry next = it2.next();
            if (pattern.matcher(next.uri.toString()).find()) {
                i++;
                long length = j4 + next.file.length();
                z = ((long) i) <= j && length <= j2;
                j3 = length;
            } else {
                j3 = j4;
                z = true;
            }
            int i2 = i;
            if (z) {
                arrayList2.add(next);
                arrayList.add(next.entry);
                if (!hashMap.containsKey(next.entry.getType())) {
                    hashMap.put(next.entry.getType(), new ArrayList());
                }
                ((ArrayList) hashMap.get(next.entry.getType())).add(next.entry);
            } else {
                this.logger.log("cache", "Expiring %s (%s)", next.file.getAbsolutePath(), next.uri);
                next.expired = true;
                File file2 = new File(next.entry.baseURI);
                try {
                    Files.move(file2.toPath(), new File(file, file2.getName()).toPath(), StandardCopyOption.REPLACE_EXISTING);
                } catch (IOException e) {
                    this.logger.log("error", "Attempt to expire cache entry failed: %s: %s", next.file.getAbsolutePath(), e.getMessage());
                }
            }
            i = i2;
            j4 = j3;
        }
        this.cached.clear();
        this.cached.addAll(arrayList2);
        this.entries.clear();
        this.entries.addAll(arrayList);
        this.typedEntries.clear();
        for (Entry.Type type : hashMap.keySet()) {
            this.typedEntries.put(type, (ArrayList) hashMap.get(type));
        }
    }

    public void writeCacheEntry(Entry entry, File file) throws IOException {
        PrintStream printStream = new PrintStream(new FileOutputStream(file));
        try {
            int i = C20489a.f116145a[entry.getType().ordinal()];
            if (i == 1) {
                EntryUri entryUri = (EntryUri) entry;
                printStream.println("<uri xmlns='urn:oasis:names:tc:entity:xmlns:xml:catalog'");
                printStream.println("     xmlns:xr='http://xmlresolver.org/ns/catalog'");
                printStream.println("     name='" + xmlEscape(entryUri.name) + CloudStorageConstants.SINGLE_QUOTES);
                printStream.println("     uri='" + xmlEscape(entryUri.uri.toString()) + CloudStorageConstants.SINGLE_QUOTES);
                if (entryUri.nature != null) {
                    printStream.println("     nature='" + xmlEscape(entryUri.nature) + CloudStorageConstants.SINGLE_QUOTES);
                }
                if (entryUri.purpose != null) {
                    printStream.println("     purpose='" + xmlEscape(entryUri.purpose) + CloudStorageConstants.SINGLE_QUOTES);
                }
            } else if (i == 2) {
                EntrySystem entrySystem = (EntrySystem) entry;
                printStream.println("<system xmlns='urn:oasis:names:tc:entity:xmlns:xml:catalog'");
                printStream.println("        xmlns:xr='http://xmlresolver.org/ns/catalog'");
                printStream.println("        systemId='" + xmlEscape(entrySystem.systemId) + CloudStorageConstants.SINGLE_QUOTES);
                printStream.println("        uri='" + xmlEscape(entrySystem.uri.toString()) + CloudStorageConstants.SINGLE_QUOTES);
            } else if (i != 3) {
                error("Attempt to cache unexpected entry type.", new Object[0]);
            } else {
                EntryPublic entryPublic = (EntryPublic) entry;
                printStream.println("<public xmlns='urn:oasis:names:tc:entity:xmlns:xml:catalog'");
                printStream.println("        xmlns:xr='http://xmlresolver.org/ns/catalog'");
                printStream.println("        publicId='" + xmlEscape(entryPublic.publicId) + CloudStorageConstants.SINGLE_QUOTES);
                printStream.println("        uri='" + xmlEscape(entryPublic.uri.toString()) + CloudStorageConstants.SINGLE_QUOTES);
            }
            for (String str : entry.getProperties().keySet()) {
                if (entry.getProperty(str) != null) {
                    printStream.println("     xr:" + str + "='" + xmlEscape(entry.getProperty(str)) + CloudStorageConstants.SINGLE_QUOTES);
                }
            }
            printStream.println(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
            printStream.close();
        } catch (Throwable th) {
            try {
                printStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void add(Entry entry, Long l) {
        int i = 0;
        while (i < this.cached.size() && this.cached.get(i).time <= l.longValue()) {
            i++;
        }
        int i2 = C20489a.f116145a[entry.getType().ordinal()];
        if (i2 == 1) {
            this.cached.add(i, new CacheEntry((EntryUri) entry, l.longValue()));
        } else if (i2 == 2) {
            this.cached.add(i, new CacheEntry((EntrySystem) entry, l.longValue()));
        } else if (i2 == 3) {
            this.cached.add(i, new CacheEntry((EntryPublic) entry, l.longValue()));
        } else {
            throw new IllegalArgumentException("Attempt to cache unknown entry type");
        }
        super.add(entry);
    }
}
