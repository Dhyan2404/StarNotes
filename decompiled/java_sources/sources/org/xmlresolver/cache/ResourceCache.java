package org.xmlresolver.cache;

import androidx.appcompat.widget.ActivityChooserModel;
import com.caverock.androidsvg.SVGParser;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.galaxy.note.utils.LogcatGenerator;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.cookie.ClientCookie;
import org.jsoup.nodes.DocumentType;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlresolver.CatalogManager;
import org.xmlresolver.ResolverConfiguration;
import org.xmlresolver.ResolverConstants;
import org.xmlresolver.ResourceConnection;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryPublic;
import org.xmlresolver.catalog.entry.EntrySystem;
import org.xmlresolver.catalog.entry.EntryUri;
import org.xmlresolver.utils.PublicId;
import org.xmlresolver.utils.URIUtils;

/* loaded from: classes16.dex */
public class ResourceCache extends CatalogManager {
    public static final long cacheSize = 1000;
    public static final long cacheSpace = 10240000;
    public static final String defaultPattern = ".*";
    public static final long deleteWait = 604800;
    public static final String[] excludedPatterns = {"^file:", "^jar:file:", "^classpath:", "^path:"};
    public static final long maxAge = -1;

    /* renamed from: a */
    public boolean f116154a;

    /* renamed from: b */
    public File f116155b;

    /* renamed from: c */
    public File f116156c;

    /* renamed from: d */
    public File f116157d;

    /* renamed from: e */
    public File f116158e;

    /* renamed from: f */
    public final ResolverConfiguration f116159f;

    /* renamed from: g */
    public final ArrayList<CacheInfo> f116160g;

    /* renamed from: h */
    public CacheParser f116161h;

    /* renamed from: i */
    public CacheEntryCatalog f116162i;

    /* renamed from: j */
    public CacheInfo f116163j;

    /* renamed from: k */
    public String f116164k;

    /* renamed from: org.xmlresolver.cache.ResourceCache$a */
    /* loaded from: classes16.dex */
    public class C20490a extends DefaultHandler {

        /* renamed from: e */
        public final long f116165e;

        /* renamed from: f */
        public final long f116166f;

        /* renamed from: g */
        public final long f116167g;

        /* renamed from: h */
        public final long f116168h;

        /* renamed from: i */
        public boolean f116169i = false;

        /* renamed from: j */
        public int f116170j = 0;

        public C20490a(long j, long j2, long j3, long j4) {
            this.f116165e = j;
            this.f116166f = j2;
            this.f116167g = j3;
            this.f116168h = j4;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            this.f116170j--;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            if (this.f116170j == 0) {
                boolean z = ResolverConstants.XMLRESOURCE_EXT_NS.equals(str) && "cache-control".equals(str2);
                this.f116169i = z;
                if (z) {
                    ResourceCache.this.f116164k = attributes.getValue("", "version");
                    ResourceCache.this.f116163j = new CacheInfo(ResourceCache.defaultPattern, true, ResourceCache.this.f116161h.parseTimeLong(attributes.getValue("", "delete-wait"), this.f116165e), ResourceCache.this.f116161h.parseLong(attributes.getValue("", "size"), this.f116166f), ResourceCache.this.f116161h.parseSizeLong(attributes.getValue("", "space"), this.f116167g), ResourceCache.this.f116161h.parseTimeLong(attributes.getValue("", ClientCookie.MAX_AGE_ATTR), this.f116168h));
                }
            }
            if (this.f116169i && this.f116170j == 1 && ResolverConstants.XMLRESOURCE_EXT_NS.equals(str)) {
                long parseTimeLong = ResourceCache.this.f116161h.parseTimeLong(attributes.getValue("", "delete-wait"), this.f116165e);
                long parseLong = ResourceCache.this.f116161h.parseLong(attributes.getValue("", "size"), this.f116166f);
                long parseSizeLong = ResourceCache.this.f116161h.parseSizeLong(attributes.getValue("", "space"), this.f116167g);
                long parseTimeLong2 = ResourceCache.this.f116161h.parseTimeLong(attributes.getValue("", ClientCookie.MAX_AGE_ATTR), this.f116168h);
                String value = attributes.getValue("", "uri");
                str2.hashCode();
                if (str2.equals("no-cache")) {
                    if (value != null) {
                        ResourceCache.this.f116160g.add(new CacheInfo(value, false, parseTimeLong, parseLong, parseSizeLong, parseTimeLong2));
                    }
                } else if (!str2.equals("cache")) {
                    ((CatalogManager) ResourceCache.this).logger.log("error", "Unexpected element in cache control file: %s", str2);
                } else if (value != null) {
                    ResourceCache.this.f116160g.add(new CacheInfo(value, true, parseTimeLong, parseLong, parseSizeLong, parseTimeLong2));
                }
            }
            this.f116170j++;
        }
    }

    /* renamed from: org.xmlresolver.cache.ResourceCache$b */
    /* loaded from: classes16.dex */
    public class C20491b {

        /* renamed from: a */
        public RandomAccessFile f116172a;

        /* renamed from: b */
        public FileChannel f116173b;

        /* renamed from: c */
        public FileLock f116174c;

        public C20491b() {
            this.f116172a = null;
            this.f116173b = null;
            this.f116174c = null;
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(new File(ResourceCache.this.f116155b.toString() + "/lock"), "rw");
                this.f116172a = randomAccessFile;
                FileChannel channel = randomAccessFile.getChannel();
                this.f116173b = channel;
                this.f116174c = channel.tryLock();
            } catch (IOException | OverlappingFileLockException unused) {
            }
        }

        /* renamed from: a */
        public void m72013a() throws IOException {
            while (this.f116174c == null) {
                try {
                    this.f116174c = this.f116173b.lock();
                } catch (OverlappingFileLockException unused) {
                    try {
                        Thread.sleep(500L);
                    } catch (InterruptedException unused2) {
                    }
                }
            }
        }

        /* renamed from: b */
        public boolean m72014b() {
            return this.f116174c != null;
        }

        /* renamed from: c */
        public void m72015c() {
            try {
                this.f116174c.release();
                this.f116172a.close();
                this.f116174c = null;
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: org.xmlresolver.cache.ResourceCache$c */
    /* loaded from: classes16.dex */
    public class C20492c extends DefaultHandler {

        /* renamed from: e */
        public boolean f116176e = false;

        /* renamed from: f */
        public URI f116177f;

        public C20492c(URI uri) {
            this.f116177f = uri;
        }

        /* renamed from: a */
        public void m72016a(URI uri) {
            this.f116177f = uri;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startDocument() {
            this.f116176e = true;
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            long parseLong;
            File file;
            Entry addPublic;
            if (!"urn:oasis:names:tc:entity:xmlns:xml:catalog".equals(str)) {
                this.f116176e = false;
                return;
            }
            if (!"catalog".equals(str2) && this.f116176e) {
                this.f116176e = false;
                String value = attributes.getValue("", "name");
                String value2 = attributes.getValue("", "uri");
                String value3 = attributes.getValue(ResolverConstants.XMLRESOURCE_EXT_NS, "time");
                if (value3 != null) {
                    try {
                        parseLong = Long.parseLong(value3);
                    } catch (NumberFormatException unused) {
                        ((CatalogManager) ResourceCache.this).logger.log("error", "Bad numeric value in cache file: %s", value3);
                        return;
                    }
                } else {
                    parseLong = -1;
                }
                long j = parseLong;
                try {
                    File file2 = new File(URIUtils.newURI(value2).getPath());
                    if (!file2.exists()) {
                        ((CatalogManager) ResourceCache.this).logger.log("cache", "Cached resource disappeared: %s", value2);
                        return;
                    }
                    str2.hashCode();
                    char c = 65535;
                    switch (str2.hashCode()) {
                        case -977423767:
                            if (str2.equals("public")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -887328209:
                            if (str2.equals("system")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 116076:
                            if (str2.equals("uri")) {
                                c = 2;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            file = file2;
                            addPublic = ResourceCache.this.f116162i.addPublic(this.f116177f, attributes.getValue("", DocumentType.f114074q), value2, j);
                            break;
                        case 1:
                            file = file2;
                            addPublic = ResourceCache.this.f116162i.addSystem(this.f116177f, attributes.getValue("", DocumentType.f114075r), value2, j);
                            break;
                        case 2:
                            file = file2;
                            addPublic = ResourceCache.this.f116162i.addUri(this.f116177f, value, value2, attributes.getValue("", "nature"), attributes.getValue("", AccountVerifyPurpose.KEY_PURPOSE), j);
                            break;
                        default:
                            ((CatalogManager) ResourceCache.this).logger.log("cache", "Unexpected cache entry: " + str2, new Object[0]);
                            return;
                    }
                    for (int i = 0; i < attributes.getLength(); i++) {
                        if (ResolverConstants.XMLRESOURCE_EXT_NS.equals(attributes.getURI(i))) {
                            addPublic.setProperty(attributes.getLocalName(i), attributes.getValue(i));
                        }
                    }
                    addPublic.setProperty("filesize", "" + file.length());
                    addPublic.setProperty("filemodified", "" + file.lastModified());
                } catch (URISyntaxException unused2) {
                    ((CatalogManager) ResourceCache.this).logger.log("error", "Cached URI is invalid: %s", value2);
                }
            }
        }
    }

    public ResourceCache(ResolverConfiguration resolverConfiguration) {
        super(resolverConfiguration);
        this.f116154a = false;
        this.f116155b = null;
        this.f116156c = null;
        this.f116157d = null;
        this.f116158e = null;
        this.f116160g = new ArrayList<>();
        this.f116161h = null;
        this.f116162i = null;
        this.f116163j = null;
        this.f116164k = null;
        this.f116159f = resolverConfiguration;
        reset();
    }

    public CacheInfo addCacheInfo(String str, boolean z) {
        return addCacheInfo(str, z, deleteWait, 1000L, cacheSpace, -1L);
    }

    public boolean cacheURI(String str) {
        m72008u();
        if (this.f116155b == null) {
            return false;
        }
        String uri = URIUtils.cwd().resolve(str).toString();
        CacheInfo cacheInfo = null;
        for (int i = 0; cacheInfo == null && i < this.f116160g.size(); i++) {
            CacheInfo cacheInfo2 = this.f116160g.get(i);
            if (cacheInfo2.uriPattern.matcher(uri).find()) {
                cacheInfo = cacheInfo2;
            }
        }
        if (cacheInfo == null) {
            cacheInfo = this.f116163j;
        }
        this.logger.log("cache", "Cache cacheURI: %s (%s)", Boolean.valueOf(cacheInfo.cache), uri);
        return cacheInfo.cache;
    }

    public CacheEntry cachedNamespaceUri(URI uri, String str, String str2) {
        CacheEntry m72005r = m72005r(uri, str, str2);
        if ((m72005r != null && !m72005r.expired) || !cacheURI(uri.toString())) {
            return m72005r;
        }
        try {
            ResourceConnection resourceConnection = new ResourceConnection(this.resolverConfiguration, uri.toString());
            return (resourceConnection.getStream() == null || resourceConnection.getStatusCode() != 200) ? m72005r : m72001n(resourceConnection, str, str2);
        } catch (NoClassDefFoundError unused) {
            this.logger.log("error", "Apache HTTP library classes apparently unavailable, not attempting to cache", new Object[0]);
            return null;
        }
    }

    public CacheEntry cachedSystem(URI uri, String str) {
        CacheEntry m72006s = m72006s(uri);
        if ((m72006s != null && !m72006s.expired) || !cacheURI(uri.toString())) {
            return m72006s;
        }
        try {
            ResourceConnection resourceConnection = new ResourceConnection(this.resolverConfiguration, uri.toString());
            return (resourceConnection.getStatusCode() != 200 || resourceConnection.getStream() == null) ? m72006s : m72002o(resourceConnection, str);
        } catch (NoClassDefFoundError unused) {
            this.logger.log("error", "Apache HTTP library classes apparently unavailable, not attempting to cache", new Object[0]);
            return null;
        }
    }

    public CacheEntry cachedUri(URI uri) {
        return cachedNamespaceUri(uri, null, null);
    }

    public String directory() {
        File file = this.f116155b;
        if (file == null) {
            return null;
        }
        return file.getAbsolutePath();
    }

    public List<CacheEntry> entries() {
        m72008u();
        return new ArrayList(this.f116162i.cached);
    }

    public boolean expired(URI uri) {
        CacheEntry cacheEntry;
        if (uri == null) {
            return false;
        }
        String property = System.getProperty("xmlresolver.offline");
        if (property != null && !"false".equals(property) && !"0".equals(property) && !SVGParser.f16048t.equals(property)) {
            return false;
        }
        m72008u();
        if (this.f116155b == null) {
            return true;
        }
        Iterator<CacheEntry> it2 = this.f116162i.cached.iterator();
        while (true) {
            if (!it2.hasNext()) {
                cacheEntry = null;
                break;
            }
            cacheEntry = it2.next();
            if (uri.equals(cacheEntry.file.toURI())) {
                break;
            }
        }
        if (cacheEntry == null) {
            return true;
        }
        CacheInfo cacheInfo = null;
        for (int i = 0; cacheInfo == null && i < this.f116160g.size(); i++) {
            CacheInfo cacheInfo2 = this.f116160g.get(i);
            if (cacheInfo2.uriPattern.matcher(cacheEntry.uri.toString()).find()) {
                cacheInfo = cacheInfo2;
            }
        }
        if (cacheInfo == null) {
            cacheInfo = this.f116163j;
        }
        if (!cacheInfo.cache) {
            m72007t(new CacheInfo(cacheInfo.pattern, false, deleteWait, 0L, 0L, 0L));
            return true;
        }
        Iterator<CacheEntry> it3 = this.f116162i.cached.iterator();
        int i2 = 0;
        long j = 0;
        while (it3.hasNext()) {
            CacheEntry next = it3.next();
            if (next.entry.getType() != Entry.Type.PUBLIC && !next.expired && cacheInfo.uriPattern.matcher(next.uri.toString()).find()) {
                i2++;
                j += next.file.length();
            }
        }
        if (i2 > cacheInfo.cacheSize || j > cacheInfo.cacheSpace) {
            this.logger.log("cache", "Too many cache entries, or cache size too large: expiring oldest entries", new Object[0]);
            m72007t(cacheInfo);
        }
        if (cacheEntry.expired) {
            return true;
        }
        long j2 = cacheEntry.time;
        String etag = cacheEntry.etag();
        ResourceConnection resourceConnection = new ResourceConnection(this.resolverConfiguration, cacheEntry.uri.toASCIIString(), true);
        resourceConnection.close();
        String etag2 = resourceConnection.getEtag();
        long lastModified = resourceConnection.getLastModified();
        String str = "".equals(etag2) ? null : etag2;
        if (lastModified < 0 && (str == null || etag == null)) {
            long j3 = cacheInfo.maxAge;
            if (j3 >= 0) {
                long time = new Date().getTime() - (j3 * 1000);
                if (j3 == 0 || j2 < time) {
                    return true;
                }
            }
            lastModified = resourceConnection.getDate();
        }
        if (resourceConnection.getStatusCode() != 200) {
            this.logger.log("cache", "Not expired: %s (HTTP %d)", cacheEntry.uri, Integer.valueOf(resourceConnection.getStatusCode()));
            return false;
        }
        boolean z = (str == null || etag == null || str.equals(etag)) ? false : true;
        if (lastModified < 0) {
            if (z) {
                this.logger.log("cache", "Expired: %s (no last-modified header, etags differ)", cacheEntry.uri);
                return true;
            }
            this.logger.log("cache", "Not expired: %s (no last-modified header, etags identical)", cacheEntry.uri);
            return false;
        }
        if (lastModified <= j2 && !z) {
            this.logger.log("cache", "Not expired: %s", cacheEntry.uri);
            return false;
        }
        this.logger.log("cache", "Expired: %s", cacheEntry.uri);
        this.f116162i.expire(cacheEntry);
        return true;
    }

    public CacheInfo getCacheInfo(String str) {
        if (str == null) {
            return null;
        }
        Iterator<CacheInfo> it2 = this.f116160g.iterator();
        while (it2.hasNext()) {
            CacheInfo next = it2.next();
            if (str.equals(next.pattern)) {
                return next;
            }
        }
        return null;
    }

    public List<CacheInfo> getCacheInfoList() {
        return new ArrayList(this.f116160g);
    }

    public CacheInfo getDefaultCacheInfo() {
        return this.f116163j;
    }

    @Override // org.xmlresolver.CatalogManager
    public URI lookupNamespaceURI(String str, String str2, String str3) {
        m72008u();
        if (this.f116155b == null) {
            return null;
        }
        URI lookupNamespaceURI = super.lookupNamespaceURI(str, str2, str3);
        if (expired(lookupNamespaceURI)) {
            return null;
        }
        return lookupNamespaceURI;
    }

    @Override // org.xmlresolver.CatalogManager, org.xmlresolver.XMLCatalogResolver
    public URI lookupPublic(String str, String str2) {
        m72008u();
        if (this.f116155b == null) {
            return null;
        }
        URI lookupPublic = super.lookupPublic(str, str2);
        if (expired(lookupPublic)) {
            return null;
        }
        return lookupPublic;
    }

    @Override // org.xmlresolver.CatalogManager, org.xmlresolver.XMLCatalogResolver
    public URI lookupSystem(String str) {
        m72008u();
        if (this.f116155b == null) {
            return null;
        }
        URI lookupSystem = super.lookupSystem(str);
        if (expired(lookupSystem)) {
            return null;
        }
        return lookupSystem;
    }

    @Override // org.xmlresolver.CatalogManager, org.xmlresolver.XMLCatalogResolver
    public URI lookupURI(String str) {
        m72008u();
        if (this.f116155b == null) {
            return null;
        }
        URI lookupURI = super.lookupURI(str);
        if (expired(lookupURI)) {
            return null;
        }
        return lookupURI;
    }

    /* renamed from: n */
    public final CacheEntry m72001n(ResourceConnection resourceConnection, String str, String str2) {
        URI uri;
        File file;
        File file2;
        File file3;
        String absolutePath;
        long time;
        m72008u();
        if (this.f116155b == null) {
            this.logger.log("cache", "Attempting to cache URI, but no cache is available", new Object[0]);
            return null;
        }
        C20491b c20491b = new C20491b();
        try {
            c20491b.m72013a();
            URI uri2 = resourceConnection.getUri();
            if (str == null && str2 == null) {
                this.logger.log("cache", "Caching resource for uri: %s", uri2);
            } else {
                this.logger.log("cache", "Caching resource for namespace: %s (nature: %s, purpose: %s)", uri2, str, str2);
            }
            String contentType = resourceConnection.getContentType();
            InputStream stream = resourceConnection.getStream();
            try {
                try {
                    try {
                        String m72003p = m72003p(uri2);
                        file2 = new File(this.f116157d, m72003p + ActivityChooserModel.f1436y);
                        File file4 = new File(this.f116156c, m72003p + m72009v(uri2, contentType));
                        try {
                            m72011x(stream, file4);
                            stream.close();
                            absolutePath = file4.getAbsolutePath();
                            time = new Date().getTime();
                            file3 = file4;
                            uri = uri2;
                        } catch (IOException unused) {
                            file3 = file4;
                            uri = uri2;
                        }
                    } catch (NoSuchAlgorithmException unused2) {
                        uri = uri2;
                    }
                } catch (IOException unused3) {
                    uri = uri2;
                    file = null;
                }
                try {
                    EntryUri addUri = this.f116162i.addUri(file2.toURI(), uri2.toString(), absolutePath, str, str2, time);
                    addUri.setProperty(CouchFieldKey.KEY_CONTENT_TYPE, contentType);
                    addUri.setProperty("time", "" + time);
                    String uri3 = resourceConnection.getRedirect() != null ? resourceConnection.getRedirect().toString() : null;
                    if (uri3 != null) {
                        addUri.setProperty("redir", uri3);
                    }
                    String etag = resourceConnection.getEtag();
                    if (etag != null) {
                        addUri.setProperty(BreakpointSQLiteKey.ETAG, etag);
                    }
                    addUri.setProperty("filesize", "" + file3.length());
                    addUri.setProperty("filemodified", "" + file3.lastModified());
                    this.f116162i.writeCacheEntry(addUri, file2);
                } catch (IOException unused4) {
                    file = file3;
                    this.logger.log("error", "Failed to cache resource '%s' to '%s'", uri, file.getAbsolutePath());
                    c20491b.m72015c();
                    return m72005r(uri, str, str2);
                } catch (NoSuchAlgorithmException unused5) {
                    this.logger.log("cache", "Failed to obtain SHA-256 digest?", new Object[0]);
                    c20491b.m72015c();
                    return m72005r(uri, str, str2);
                }
                c20491b.m72015c();
                return m72005r(uri, str, str2);
            } catch (Throwable th) {
                c20491b.m72015c();
                throw th;
            }
        } catch (IOException unused6) {
            return null;
        }
    }

    /* renamed from: o */
    public final synchronized CacheEntry m72002o(ResourceConnection resourceConnection, String str) {
        File file;
        File file2;
        File file3;
        m72008u();
        if (this.f116155b == null) {
            this.logger.log("cache", "Attempting to cache system ID, but no cache is available", new Object[0]);
            return null;
        }
        C20491b c20491b = new C20491b();
        try {
            c20491b.m72013a();
            URI uri = resourceConnection.getUri();
            String contentType = resourceConnection.getContentType();
            InputStream stream = resourceConnection.getStream();
            this.logger.log("cache", "Caching systemId: %s", uri);
            try {
                try {
                    try {
                        String m72003p = m72003p(uri);
                        file2 = new File(this.f116157d, m72003p + ActivityChooserModel.f1436y);
                        file3 = new File(this.f116156c, m72003p + m72009v(uri, contentType));
                    } catch (NoSuchAlgorithmException unused) {
                        this.logger.log("cache", "Failed to obtain SHA-256 digest?", new Object[0]);
                    }
                } catch (IOException unused2) {
                    file = null;
                }
                try {
                    m72011x(stream, file3);
                    stream.close();
                    String absolutePath = file3.getAbsolutePath();
                    long time = new Date().getTime();
                    EntrySystem addSystem = this.f116162i.addSystem(file2.toURI(), uri.toString(), absolutePath, time);
                    addSystem.setProperty(CouchFieldKey.KEY_CONTENT_TYPE, contentType);
                    addSystem.setProperty("time", "" + time);
                    String uri2 = resourceConnection.getRedirect() != null ? resourceConnection.getRedirect().toString() : null;
                    if (uri2 != null) {
                        addSystem.setProperty("redir", uri2);
                    }
                    String etag = resourceConnection.getEtag();
                    if (etag != null) {
                        addSystem.setProperty(BreakpointSQLiteKey.ETAG, etag);
                    }
                    addSystem.setProperty("filesize", "" + file3.length());
                    addSystem.setProperty("filemodified", "" + file3.lastModified());
                    this.f116162i.writeCacheEntry(addSystem, file2);
                    if (str != null) {
                        String m72003p2 = m72003p(PublicId.encodeURN(str));
                        File file4 = new File(this.f116157d, m72003p2 + ActivityChooserModel.f1436y);
                        EntryPublic addPublic = this.f116162i.addPublic(file4.toURI(), str, absolutePath, time);
                        addPublic.setProperty(CouchFieldKey.KEY_CONTENT_TYPE, contentType);
                        addPublic.setProperty("time", "" + time);
                        String uri3 = resourceConnection.getRedirect() != null ? resourceConnection.getRedirect().toString() : null;
                        if (uri3 != null) {
                            addPublic.setProperty("redir", uri3);
                        }
                        String etag2 = resourceConnection.getEtag();
                        if (etag2 != null) {
                            addPublic.setProperty(BreakpointSQLiteKey.ETAG, etag2);
                        }
                        addPublic.setProperty("filesize", "" + file3.length());
                        addPublic.setProperty("filemodified", "" + file3.lastModified());
                        this.f116162i.writeCacheEntry(addPublic, file4);
                    }
                } catch (IOException unused3) {
                    file = file3;
                    this.logger.log("error", "Failed to cache resource '%s' to '%s'", uri, file.getAbsolutePath());
                    return m72006s(uri);
                }
                return m72006s(uri);
            } finally {
                c20491b.m72015c();
            }
        } catch (IOException unused4) {
            this.logger.log("error", "Failed to obtain directory lock to cache resource: %s", resourceConnection.getUri());
            return null;
        }
    }

    /* renamed from: p */
    public final String m72003p(URI uri) throws NoSuchAlgorithmException {
        byte[] digest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(uri.toASCIIString().getBytes(StandardCharsets.UTF_8));
        StringBuilder sb = new StringBuilder(digest.length * 2);
        for (byte b : digest) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: q */
    public final void m72004q() {
        long j;
        File[] fileArr;
        boolean z;
        long time = new Date().getTime();
        File file = new File(this.f116155b, "cleanup");
        int i = 0;
        if (file.exists()) {
            j = time - file.lastModified();
        } else {
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file));
                outputStreamWriter.write("The timestamp on this file indicates when the cache was last pruned.\n");
                outputStreamWriter.close();
                j = 86400001;
            } catch (IOException | SecurityException unused) {
                this.logger.log("cache", "Failed to create cache cleanup file" + file.getAbsolutePath(), new Object[0]);
                return;
            }
        }
        if (j > 86400000) {
            this.logger.log("cache", "Cleaning up expired cache entries", new Object[0]);
            File[] listFiles = this.f116158e.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (time - file2.lastModified() > 604800000) {
                        this.logger.log("cache", "Deleting expired entry: %s", file2.getName());
                        if (!file2.delete()) {
                            this.logger.log("cache", "Failed to delete expired cache entry: " + file2.getAbsolutePath(), new Object[0]);
                        }
                    }
                }
            }
            File[] listFiles2 = this.f116156c.listFiles();
            if (listFiles2 != null) {
                int length = listFiles2.length;
                int i2 = 0;
                while (i2 < length) {
                    File file3 = listFiles2[i2];
                    String name = file3.getName();
                    String substring = name.substring(i, name.lastIndexOf("."));
                    if (!new File(this.f116157d, substring + ActivityChooserModel.f1436y).exists()) {
                        if (!new File(this.f116158e, substring + ActivityChooserModel.f1436y).exists()) {
                            this.logger.log("cache", "Deleting expired data: %s", file3.getName());
                            if (!file3.delete()) {
                                this.logger.log("cache", "Failed to delete expired cache entry: " + file3.getAbsolutePath(), new Object[0]);
                            }
                        }
                    }
                    i2++;
                    i = 0;
                }
            }
            File[] listFiles3 = this.f116157d.listFiles();
            if (listFiles3 != null) {
                int length2 = listFiles3.length;
                int i3 = 0;
                while (i3 < length2) {
                    File file4 = listFiles3[i3];
                    String name2 = file4.getName();
                    String substring2 = name2.substring(0, name2.lastIndexOf("."));
                    File[] listFiles4 = this.f116156c.listFiles();
                    if (listFiles4 != null) {
                        z = false;
                        int i4 = 0;
                        while (!z && i4 < listFiles4.length) {
                            String name3 = listFiles4[i4].getName();
                            z = name3.substring(0, name3.lastIndexOf(".")).equals(substring2);
                            i4++;
                            listFiles3 = listFiles3;
                        }
                        fileArr = listFiles3;
                    } else {
                        fileArr = listFiles3;
                        z = false;
                    }
                    if (!z) {
                        this.logger.log("cache", "Deleting dangling entry: %s", file4.getName());
                        if (!file4.delete()) {
                            this.logger.log("cache", "Failed to delete expired cache entry: " + file4.getAbsolutePath(), new Object[0]);
                        }
                    }
                    i3++;
                    listFiles3 = fileArr;
                }
            }
            if (file.setLastModified(time)) {
                return;
            }
            this.logger.log("cache", "Failed to update last modified time of cache cleanup file", new Object[0]);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        r2 = r2.purpose;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0046, code lost:
    
        if (r2 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
    
        if (r7.equals(r2) == false) goto L41;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.xmlresolver.cache.CacheEntry m72005r(java.net.URI r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            r4.m72008u()
            java.io.File r1 = r4.f116155b
            if (r1 != 0) goto Lc
            return r0
        Lc:
            org.xmlresolver.cache.CacheEntryCatalog r4 = r4.f116162i
            java.util.ArrayList<org.xmlresolver.cache.CacheEntry> r4 = r4.cached
            java.util.Iterator r4 = r4.iterator()
        L14:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L4f
            java.lang.Object r1 = r4.next()
            org.xmlresolver.cache.CacheEntry r1 = (org.xmlresolver.cache.CacheEntry) r1
            org.xmlresolver.catalog.entry.Entry r2 = r1.entry
            org.xmlresolver.catalog.entry.Entry$Type r2 = r2.getType()
            org.xmlresolver.catalog.entry.Entry$Type r3 = org.xmlresolver.catalog.entry.Entry.Type.URI
            if (r2 != r3) goto L14
            java.net.URI r2 = r1.uri
            boolean r2 = r5.equals(r2)
            if (r2 == 0) goto L14
            org.xmlresolver.catalog.entry.Entry r2 = r1.entry
            org.xmlresolver.catalog.entry.EntryUri r2 = (org.xmlresolver.catalog.entry.EntryUri) r2
            if (r6 == 0) goto L42
            java.lang.String r3 = r2.nature
            if (r3 == 0) goto L42
            boolean r3 = r6.equals(r3)
            if (r3 == 0) goto L14
        L42:
            if (r7 == 0) goto L4e
            java.lang.String r2 = r2.purpose
            if (r2 == 0) goto L4e
            boolean r2 = r7.equals(r2)
            if (r2 == 0) goto L14
        L4e:
            return r1
        L4f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xmlresolver.cache.ResourceCache.m72005r(java.net.URI, java.lang.String, java.lang.String):org.xmlresolver.cache.CacheEntry");
    }

    public void removeCacheInfo(String str) {
        m72010w(str, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void reset() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xmlresolver.cache.ResourceCache.reset():void");
    }

    /* renamed from: s */
    public final CacheEntry m72006s(URI uri) {
        if (uri == null) {
            return null;
        }
        m72008u();
        if (this.f116155b == null) {
            return null;
        }
        Iterator<CacheEntry> it2 = this.f116162i.cached.iterator();
        while (it2.hasNext()) {
            CacheEntry next = it2.next();
            if (next.entry.getType() == Entry.Type.SYSTEM && uri.equals(next.uri)) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: t */
    public final void m72007t(CacheInfo cacheInfo) {
        C20491b c20491b = new C20491b();
        try {
            c20491b.m72013a();
            this.f116162i.flushCache(cacheInfo.uriPattern, cacheInfo.cacheSize, cacheInfo.cacheSpace, this.f116158e);
            c20491b.m72015c();
        } catch (IOException unused) {
            this.logger.log("error", "Failed to obtain lock to expire cache", new Object[0]);
        }
    }

    /* renamed from: u */
    public final synchronized void m72008u() {
        if (this.f116154a) {
            return;
        }
        this.f116154a = true;
        if (this.f116155b == null) {
            return;
        }
        this.f116162i = new CacheEntryCatalog(this.resolverConfiguration, this.f116155b.toURI(), null, true);
        this.f116156c = new File(this.f116155b, "data");
        this.f116157d = new File(this.f116155b, "entry");
        this.f116158e = new File(this.f116155b, "expired");
        if ((!this.f116156c.exists() && !this.f116156c.mkdir()) || ((!this.f116157d.exists() && !this.f116157d.mkdir()) || (!this.f116158e.exists() && !this.f116158e.mkdir()))) {
            this.logger.log("cache", "Failed to setup data, entry, and expired directories in cache", new Object[0]);
            this.f116155b = null;
            return;
        }
        C20491b c20491b = new C20491b();
        try {
            c20491b.m72013a();
            m72004q();
            SAXParserFactory newInstance = SAXParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            newInstance.setValidating(false);
            newInstance.setXIncludeAware(false);
            C20492c c20492c = new C20492c(this.f116157d.toURI());
            File[] listFiles = this.f116157d.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (file.canRead()) {
                        try {
                            SAXParser newSAXParser = newInstance.newSAXParser();
                            InputSource inputSource = new InputSource(file.toURI().toASCIIString());
                            c20492c.m72016a(file.toURI());
                            newSAXParser.parse(inputSource, c20492c);
                        } catch (IOException | ParserConfigurationException | SAXException e) {
                            this.logger.log("cache", "Failed to read cache entry: " + file.toURI() + ": " + e.getMessage(), new Object[0]);
                        }
                    }
                }
            }
            c20491b.m72015c();
        } catch (IOException e2) {
            this.logger.log("cache", "Failed to obtain lock on cache: " + e2.getMessage(), new Object[0]);
        }
    }

    /* renamed from: v */
    public final String m72009v(URI uri, String str) {
        String aSCIIString = uri.toASCIIString();
        int lastIndexOf = aSCIIString.lastIndexOf(".");
        if (lastIndexOf > 0) {
            String substring = aSCIIString.substring(lastIndexOf);
            if (substring.length() <= 5) {
                return substring;
            }
        }
        return str == null ? ".bin" : "application/xml-dtd".equals(str) ? ".dtd" : str.contains("application/xml") ? ActivityChooserModel.f1436y : (str.contains("text/html") || str.contains("application/html+xml")) ? ".html" : str.contains("text/plain") ? uri.toString().endsWith(".dtd") ? ".dtd" : LogcatGenerator.OUTPUT_FILE_TXT_EXTENSION : ".bin";
    }

    /* renamed from: w */
    public final void m72010w(String str, boolean z) {
        CacheInfo cacheInfo = getCacheInfo(str);
        while (cacheInfo != null) {
            this.f116160g.remove(cacheInfo);
            cacheInfo = getCacheInfo(str);
        }
        if (z) {
            m72012y();
        }
    }

    /* renamed from: x */
    public final void m72011x(InputStream inputStream, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[8192];
        int read = inputStream.read(bArr);
        while (read > 0) {
            fileOutputStream.write(bArr, 0, read);
            read = inputStream.read(bArr);
        }
        fileOutputStream.close();
    }

    /* renamed from: y */
    public final void m72012y() {
        if (this.f116155b == null) {
            return;
        }
        File file = new File(this.f116155b, "control.xml");
        try {
            PrintStream printStream = new PrintStream(Files.newOutputStream(file.toPath(), new OpenOption[0]));
            printStream.println("<cache-control version='2' xmlns='http://xmlresolver.org/ns/catalog'>");
            Iterator<CacheInfo> it2 = this.f116160g.iterator();
            while (it2.hasNext()) {
                CacheInfo next = it2.next();
                if (next.cache) {
                    printStream.print("<cache ");
                } else {
                    printStream.print("<no-cache ");
                }
                printStream.print("uri='" + CacheEntryCatalog.xmlEscape(next.pattern) + CloudStorageConstants.SINGLE_QUOTES);
                printStream.print(" delete-wait='" + next.deleteWait + CloudStorageConstants.SINGLE_QUOTES);
                printStream.print(" size='" + next.cacheSize + CloudStorageConstants.SINGLE_QUOTES);
                printStream.print(" space='" + next.cacheSpace + CloudStorageConstants.SINGLE_QUOTES);
                printStream.println(" max-age='" + next.maxAge + "'/>");
            }
            printStream.println("</cache-control>\n");
            printStream.close();
        } catch (IOException | SecurityException e) {
            this.logger.log("cache", "Failed to write cache control file: %s: %s", file.getAbsolutePath(), e.getMessage());
        }
    }

    public CacheInfo addCacheInfo(String str, boolean z, long j, long j2, long j3, long j4) {
        CacheInfo cacheInfo = new CacheInfo(str, z, j, j2, j3, j4);
        m72010w(str, false);
        this.f116160g.add(cacheInfo);
        m72012y();
        return cacheInfo;
    }
}
