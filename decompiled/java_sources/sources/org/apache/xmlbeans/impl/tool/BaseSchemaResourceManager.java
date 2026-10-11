package org.apache.xmlbeans.impl.tool;

import com.google.android.material.motion.MotionUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.IOUtil;
import org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemaEntry;
import org.apache.xmlbeans.impl.p119xb.xsdownload.DownloadedSchemasDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.tool.SchemaImportResolver;
import org.apache.xmlbeans.impl.util.HexBin;

/* loaded from: classes13.dex */
public abstract class BaseSchemaResourceManager extends SchemaImportResolver {
    private static final String USER_AGENT = "XMLBeans/" + XmlBeans.getVersion() + " (" + XmlBeans.getTitle() + MotionUtils.f31762d;
    private String _defaultCopyDirectory;
    private DownloadedSchemasDocument _importsDoc;
    private final Map<String, SchemaResource> _resourceForFilename = new HashMap();
    private final Map<String, SchemaResource> _resourceForURL = new HashMap();
    private final Map<String, SchemaResource> _resourceForNamespace = new HashMap();
    private final Map<String, SchemaResource> _resourceForDigest = new HashMap();
    private final Map<DownloadedSchemaEntry, SchemaResource> _resourceForCacheEntry = new HashMap();
    private Set<SchemaResource> _redownloadSet = new HashSet();

    /* loaded from: classes13.dex */
    public class SchemaResource implements SchemaImportResolver.SchemaResource {
        DownloadedSchemaEntry _cacheEntry;

        public SchemaResource(DownloadedSchemaEntry downloadedSchemaEntry) {
            this._cacheEntry = downloadedSchemaEntry;
        }

        public void addSchemaLocation(String str) {
            this._cacheEntry.addSchemaLocation(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SchemaResource) {
                return getFilename().equals(((SchemaResource) obj).getFilename());
            }
            return false;
        }

        public String getFilename() {
            return this._cacheEntry.getFilename();
        }

        @Override // org.apache.xmlbeans.impl.tool.SchemaImportResolver.SchemaResource
        public String getNamespace() {
            return this._cacheEntry.getNamespace();
        }

        @Override // org.apache.xmlbeans.impl.tool.SchemaImportResolver.SchemaResource
        public SchemaDocument.Schema getSchema() {
            if (!BaseSchemaResourceManager.this.fileExists(getFilename())) {
                BaseSchemaResourceManager.this.redownloadResource(this);
            }
            try {
                return SchemaDocument.Factory.parse(BaseSchemaResourceManager.this.inputStreamForFile(getFilename())).getSchema();
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // org.apache.xmlbeans.impl.tool.SchemaImportResolver.SchemaResource
        public String getSchemaLocation() {
            if (this._cacheEntry.sizeOfSchemaLocationArray() > 0) {
                return this._cacheEntry.getSchemaLocationArray(0);
            }
            return null;
        }

        public String[] getSchemaLocationArray() {
            return this._cacheEntry.getSchemaLocationArray();
        }

        public String getSha1() {
            return this._cacheEntry.getSha1();
        }

        public int hashCode() {
            return getFilename().hashCode();
        }

        public void setFilename(String str) {
            this._cacheEntry.setFilename(str);
        }

        public void setNamespace(String str) {
            this._cacheEntry.setNamespace(str);
        }
    }

    private DownloadedSchemaEntry addNewEntry() {
        return this._importsDoc.getDownloadedSchemas().addNewEntry();
    }

    private SchemaResource copyOrIdentifyDuplicateURL(String str, String str2) {
        try {
            String uniqueFilenameForURI = uniqueFilenameForURI(str);
            try {
                DigestInputStream digestInputStream = digestInputStream(new URL(str).openStream());
                writeInputStreamToFile(digestInputStream, uniqueFilenameForURI);
                String bytesToString = HexBin.bytesToString(digestInputStream.getMessageDigest().digest());
                SchemaResource schemaResource = this._resourceForDigest.get(bytesToString);
                if (schemaResource != null) {
                    deleteFile(uniqueFilenameForURI);
                    schemaResource.addSchemaLocation(str);
                    if (!this._resourceForURL.containsKey(str)) {
                        this._resourceForURL.put(str, schemaResource);
                    }
                    return schemaResource;
                }
                warning("Downloaded " + str + " to " + uniqueFilenameForURI);
                DownloadedSchemaEntry addNewEntry = addNewEntry();
                addNewEntry.setFilename(uniqueFilenameForURI);
                addNewEntry.setSha1(bytesToString);
                if (str2 != null) {
                    addNewEntry.setNamespace(str2);
                }
                addNewEntry.addSchemaLocation(str);
                return updateResource(addNewEntry);
            } catch (Exception e) {
                warning("Could not copy remote resource " + str + ":" + e.getMessage());
                return null;
            }
        } catch (IOException e2) {
            warning("Could not create local file for " + str + ":" + e2.getMessage());
            return null;
        } catch (URISyntaxException e3) {
            warning("Invalid URI '" + str + "':" + e3.getMessage());
            return null;
        }
    }

    private void deleteResourcesInSet(Set<SchemaResource> set, boolean z) {
        HashSet hashSet = new HashSet();
        Iterator<SchemaResource> it2 = set.iterator();
        while (it2.hasNext()) {
            hashSet.add(it2.next()._cacheEntry);
        }
        DownloadedSchemasDocument.DownloadedSchemas downloadedSchemas = this._importsDoc.getDownloadedSchemas();
        int i = 0;
        while (i < downloadedSchemas.sizeOfEntryArray()) {
            DownloadedSchemaEntry entryArray = downloadedSchemas.getEntryArray(i);
            if (hashSet.contains(entryArray) == z) {
                SchemaResource schemaResource = this._resourceForCacheEntry.get(entryArray);
                if (schemaResource != null) {
                    warning("Removing obsolete cache entry for " + schemaResource.getFilename());
                    this._resourceForCacheEntry.remove(entryArray);
                    if (schemaResource == this._resourceForFilename.get(schemaResource.getFilename())) {
                        this._resourceForFilename.remove(schemaResource.getFilename());
                    }
                    if (schemaResource == this._resourceForDigest.get(schemaResource.getSha1())) {
                        this._resourceForDigest.remove(schemaResource.getSha1());
                    }
                    if (schemaResource == this._resourceForNamespace.get(schemaResource.getNamespace())) {
                        this._resourceForNamespace.remove(schemaResource.getNamespace());
                    }
                    for (String str : schemaResource.getSchemaLocationArray()) {
                        if (schemaResource == this._resourceForURL.get(str)) {
                            this._resourceForURL.remove(str);
                        }
                    }
                }
                downloadedSchemas.removeEntry(i);
                i--;
            }
            i++;
        }
    }

    private static DigestInputStream digestInputStream(InputStream inputStream) {
        try {
            return new DigestInputStream(inputStream, MessageDigest.getInstance("SHA"));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }

    private SchemaResource fetchFromCache(String str, String str2) {
        SchemaResource schemaResource;
        SchemaResource schemaResource2;
        if (str2 != null && (schemaResource2 = this._resourceForURL.get(str2)) != null) {
            return schemaResource2;
        }
        if (str == null || (schemaResource = this._resourceForNamespace.get(str)) == null) {
            return null;
        }
        return schemaResource;
    }

    private void redownloadEntries(SchemaResource[] schemaResourceArr) {
        for (SchemaResource schemaResource : schemaResourceArr) {
            redownloadResource(schemaResource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void redownloadResource(SchemaResource schemaResource) {
        Set<SchemaResource> set = this._redownloadSet;
        if (set != null) {
            if (set.contains(schemaResource)) {
                return;
            } else {
                this._redownloadSet.add(schemaResource);
            }
        }
        String filename = schemaResource.getFilename();
        String schemaLocation = schemaResource.getSchemaLocation();
        if (schemaLocation == null || filename == null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            URLConnection openConnection = new URL(schemaLocation).openConnection();
            openConnection.addRequestProperty("User-Agent", USER_AGENT);
            openConnection.addRequestProperty("Accept", "application/xml, text/xml, */*");
            DigestInputStream digestInputStream = digestInputStream(openConnection.getInputStream());
            IOUtil.copyCompletely(digestInputStream, byteArrayOutputStream);
            if (HexBin.bytesToString(digestInputStream.getMessageDigest().digest()).equals(schemaResource.getSha1()) && fileExists(filename)) {
                warning("Resource " + filename + " is unchanged from " + schemaLocation + ".");
                return;
            }
            try {
                writeInputStreamToFile(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), filename);
                warning("Refreshed " + filename + " from " + schemaLocation);
            } catch (IOException e) {
                warning("Could not write to file " + filename + " for " + schemaLocation + ":" + e.getMessage());
            }
        } catch (Exception e2) {
            warning("Could not copy remote resource " + schemaLocation + ":" + e2.getMessage());
        }
    }

    private String shaDigestForFile(String str) throws IOException {
        DigestInputStream digestInputStream = digestInputStream(inputStreamForFile(str));
        byte[] bArr = new byte[4096];
        for (int i = 1; i > 0; i = digestInputStream.read(bArr)) {
        }
        digestInputStream.close();
        return HexBin.bytesToString(digestInputStream.getMessageDigest().digest());
    }

    private String uniqueFilenameForURI(String str) throws IOException, URISyntaxException {
        String rawPath = new URI(str).getRawPath();
        int lastIndexOf = rawPath.lastIndexOf(47);
        int i = 1;
        if (lastIndexOf >= 0) {
            rawPath = rawPath.substring(lastIndexOf + 1);
        }
        if (rawPath.endsWith(".xsd")) {
            rawPath = rawPath.substring(0, rawPath.length() - 4);
        }
        if (rawPath.length() == 0) {
            rawPath = "schema";
        }
        String str2 = rawPath;
        while (i < 1000) {
            String str3 = this._defaultCopyDirectory + "/" + str2 + ".xsd";
            if (!fileExists(str3)) {
                return str3;
            }
            i++;
            str2 = rawPath + i;
        }
        throw new IOException("Problem with filename " + rawPath + ".xsd");
    }

    private SchemaResource updateResource(DownloadedSchemaEntry downloadedSchemaEntry) {
        String filename = downloadedSchemaEntry.getFilename();
        if (filename == null) {
            return null;
        }
        SchemaResource schemaResource = new SchemaResource(downloadedSchemaEntry);
        this._resourceForCacheEntry.put(downloadedSchemaEntry, schemaResource);
        if (!this._resourceForFilename.containsKey(filename)) {
            this._resourceForFilename.put(filename, schemaResource);
        }
        String sha1 = schemaResource.getSha1();
        if (sha1 != null && !this._resourceForDigest.containsKey(sha1)) {
            this._resourceForDigest.put(sha1, schemaResource);
        }
        String namespace = schemaResource.getNamespace();
        if (namespace != null && !this._resourceForNamespace.containsKey(namespace)) {
            this._resourceForNamespace.put(namespace, schemaResource);
        }
        for (String str : schemaResource.getSchemaLocationArray()) {
            if (!this._resourceForURL.containsKey(str)) {
                this._resourceForURL.put(str, schemaResource);
            }
        }
        return schemaResource;
    }

    public abstract void deleteFile(String str);

    public abstract boolean fileExists(String str);

    public abstract String[] getAllXSDFilenames();

    public String getDefaultSchemaDir() {
        return "./schema";
    }

    public String getIndexFilename() {
        return "./xsdownload.xml";
    }

    public final void init() {
        if (fileExists(getIndexFilename())) {
            try {
                this._importsDoc = DownloadedSchemasDocument.Factory.parse(inputStreamForFile(getIndexFilename()));
            } catch (IOException unused) {
                this._importsDoc = null;
            } catch (Exception e) {
                throw new IllegalStateException("Problem reading xsdownload.xml: please fix or delete this file", e);
            }
        }
        if (this._importsDoc == null) {
            try {
                this._importsDoc = DownloadedSchemasDocument.Factory.parse("<dls:downloaded-schemas xmlns:dls='http://www.bea.com/2003/01/xmlbean/xsdownload' defaultDirectory='" + getDefaultSchemaDir() + "'/>");
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
        String defaultDirectory = this._importsDoc.getDownloadedSchemas().getDefaultDirectory();
        if (defaultDirectory == null) {
            defaultDirectory = getDefaultSchemaDir();
        }
        this._defaultCopyDirectory = defaultDirectory;
        for (DownloadedSchemaEntry downloadedSchemaEntry : this._importsDoc.getDownloadedSchemas().getEntryArray()) {
            updateResource(downloadedSchemaEntry);
        }
    }

    public abstract InputStream inputStreamForFile(String str) throws IOException;

    @Override // org.apache.xmlbeans.impl.tool.SchemaImportResolver
    public SchemaImportResolver.SchemaResource lookupResource(String str, String str2) {
        SchemaResource fetchFromCache = fetchFromCache(str, str2);
        if (fetchFromCache != null) {
            if (this._redownloadSet != null) {
                redownloadResource(fetchFromCache);
            }
            return fetchFromCache;
        }
        if (str2 != null) {
            SchemaResource copyOrIdentifyDuplicateURL = copyOrIdentifyDuplicateURL(str2, str);
            Set<SchemaResource> set = this._redownloadSet;
            if (set != null) {
                set.add(copyOrIdentifyDuplicateURL);
            }
            return copyOrIdentifyDuplicateURL;
        }
        warning("No cached schema for namespace '" + str + "', and no url specified");
        return null;
    }

    public final void process(String[] strArr, String[] strArr2, boolean z, boolean z2, boolean z3) {
        this._redownloadSet = z2 ? new HashSet() : null;
        if (strArr2.length > 0) {
            syncCacheWithLocalXsdFiles(strArr2, true);
        } else if (z) {
            syncCacheWithLocalXsdFiles(getAllXSDFilenames(), false);
        }
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            SchemaResource schemaResource = (SchemaResource) lookupResource(null, str);
            if (schemaResource != null) {
                hashSet.add(schemaResource);
            }
        }
        for (String str2 : strArr2) {
            SchemaResource schemaResource2 = this._resourceForFilename.get(str2);
            if (schemaResource2 != null) {
                hashSet.add(schemaResource2);
            }
        }
        SchemaResource[] schemaResourceArr = (SchemaResource[]) hashSet.toArray(new SchemaResource[0]);
        if (z2) {
            redownloadEntries(schemaResourceArr);
        }
        if (z3) {
            resolveImports(schemaResourceArr);
        }
        this._redownloadSet = null;
    }

    public final void processAll(boolean z, boolean z2, boolean z3) {
        this._redownloadSet = z2 ? new HashSet() : null;
        String[] allXSDFilenames = getAllXSDFilenames();
        if (z) {
            syncCacheWithLocalXsdFiles(allXSDFilenames, false);
        }
        SchemaResource[] schemaResourceArr = (SchemaResource[]) this._resourceForFilename.values().toArray(new SchemaResource[0]);
        if (z2) {
            redownloadEntries(schemaResourceArr);
        }
        if (z3) {
            resolveImports(schemaResourceArr);
        }
        this._redownloadSet = null;
    }

    @Override // org.apache.xmlbeans.impl.tool.SchemaImportResolver
    public void reportActualNamespace(SchemaImportResolver.SchemaResource schemaResource, String str) {
        SchemaResource schemaResource2 = (SchemaResource) schemaResource;
        String namespace = schemaResource2.getNamespace();
        if (namespace != null && this._resourceForNamespace.get(namespace) == schemaResource2) {
            this._resourceForNamespace.remove(namespace);
        }
        if (!this._resourceForNamespace.containsKey(str)) {
            this._resourceForNamespace.put(str, schemaResource2);
        }
        schemaResource2.setNamespace(str);
    }

    public final void syncCacheWithLocalXsdFiles(String[] strArr, boolean z) {
        String str;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (String str2 : strArr) {
            SchemaResource schemaResource = this._resourceForFilename.get(str2);
            if (schemaResource == null) {
                try {
                    str = shaDigestForFile(str2);
                    try {
                        SchemaResource schemaResource2 = this._resourceForDigest.get(str);
                        if (schemaResource2 != null) {
                            String filename = schemaResource2.getFilename();
                            if (!fileExists(filename)) {
                                warning("File " + str2 + " is a rename of " + filename);
                                schemaResource2.setFilename(str2);
                                hashSet.add(schemaResource2);
                                if (this._resourceForFilename.get(filename) == schemaResource2) {
                                    this._resourceForFilename.remove(filename);
                                }
                                if (this._resourceForFilename.containsKey(str2)) {
                                    this._resourceForFilename.put(str2, schemaResource2);
                                }
                            }
                        }
                    } catch (IOException unused) {
                    }
                } catch (IOException unused2) {
                    str = null;
                }
                DownloadedSchemaEntry addNewEntry = addNewEntry();
                addNewEntry.setFilename(str2);
                warning("Caching information on new local file " + str2);
                if (str != null) {
                    addNewEntry.setSha1(str);
                }
                hashSet.add(updateResource(addNewEntry));
            } else if (fileExists(str2)) {
                hashSet.add(schemaResource);
            } else {
                hashSet2.add(schemaResource);
            }
        }
        if (z) {
            deleteResourcesInSet(hashSet2, true);
        } else {
            deleteResourcesInSet(hashSet, false);
        }
    }

    public abstract void warning(String str);

    public final void writeCache() throws IOException {
        writeInputStreamToFile(this._importsDoc.newInputStream(new XmlOptions().setSavePrettyPrint()), getIndexFilename());
    }

    public abstract void writeInputStreamToFile(InputStream inputStream, String str) throws IOException;
}
