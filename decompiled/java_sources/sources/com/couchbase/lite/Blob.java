package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.core.C4BlobKey;
import com.couchbase.lite.internal.core.C4BlobReadStream;
import com.couchbase.lite.internal.core.C4BlobStore;
import com.couchbase.lite.internal.core.C4BlobWriteStream;
import com.couchbase.lite.internal.fleece.FLEncodable;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.JSONUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes4.dex */
public final class Blob implements FLEncodable {
    private static final LogDomain DOMAIN = LogDomain.DATABASE;
    public static final String ENCODER_ARG_DB = "BLOB.db";
    public static final String ENCODER_ARG_QUERY_PARAM = "BLOB.queryParam";
    private static final int MAX_CACHED_CONTENT_LENGTH = 8192;
    static final String META_PROP_TYPE = "@type";
    private static final String MIME_UNKNOWN = "application/octet-stream";
    static final String PROP_CONTENT_TYPE = "content_type";
    static final String PROP_DATA = "data";
    static final String PROP_DIGEST = "digest";
    static final String PROP_LENGTH = "length";
    static final String PROP_REVPOS = "revpos";
    static final String PROP_STUB = "stub";
    static final String TYPE_BLOB = "blob";

    @Nullable
    private byte[] blobContent;

    @Nullable
    private InputStream blobContentStream;

    @Nullable
    private String blobDigest;
    private long blobLength;

    @NonNull
    private final String contentType;

    @Nullable
    private BaseDatabase database;

    public Blob(@NonNull String str, @NonNull byte[] bArr) {
        Preconditions.assertNotNull(str, CouchFieldKey.KEY_CONTENT_TYPE);
        Preconditions.assertNotNull(bArr, "content");
        this.contentType = str;
        this.blobLength = bArr.length;
        this.blobContent = copyBytes(bArr);
        this.blobContentStream = null;
    }

    @Nullable
    private byte[] copyBytes(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @NonNull
    private C4BlobKey getBlobKey(@NonNull C4BlobStore c4BlobStore) throws LiteCoreException, IOException {
        byte[] bArr = this.blobContent;
        if (bArr != null) {
            return c4BlobStore.create(bArr);
        }
        if (this.blobContentStream != null) {
            return writeDatabaseFromInitStream(c4BlobStore);
        }
        throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("BlobContentNull"));
    }

    @Nullable
    private byte[] getContentFromDatabase() {
        Preconditions.assertNotNull(this.database, "database");
        try {
            C4BlobStore blobStore = this.database.getBlobStore();
            try {
                C4BlobKey create = C4BlobKey.create(this.blobDigest);
                try {
                    FLSliceResult contents = blobStore.getContents(create);
                    try {
                        byte[] content = contents.getContent();
                        contents.close();
                        if (create != null) {
                            create.close();
                        }
                        blobStore.close();
                        if (content != null && content.length < 8192) {
                            this.blobContent = content;
                        }
                        return content;
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (LiteCoreException e) {
            String str = "Failed to read content from database for digest: " + this.blobDigest;
            com.couchbase.lite.internal.logging.Log.m9901e(DOMAIN, str, e);
            throw new CouchbaseLiteError(str, e);
        }
    }

    @NonNull
    private InputStream getStreamFromDatabase(@NonNull BaseDatabase baseDatabase) {
        try {
            return new BlobInputStream(C4BlobKey.create(this.blobDigest), baseDatabase.getBlobStore());
        } catch (LiteCoreException | IllegalArgumentException e) {
            throw new CouchbaseLiteError("Failed opening blobContent stream.", e);
        }
    }

    private void initStream(@NonNull InputStream inputStream) {
        Preconditions.assertNotNull(inputStream, "input stream");
        this.blobLength = 0L;
        this.blobContent = null;
        this.blobContentStream = inputStream;
    }

    public static boolean isBlob(@Nullable Map<String, ?> map) {
        int i;
        if (map == null || !(map.get(PROP_DIGEST) instanceof String) || !TYPE_BLOB.equals(map.get("@type"))) {
            return false;
        }
        if (!map.containsKey("content_type")) {
            i = 2;
        } else {
            if (!(map.get("content_type") instanceof String)) {
                return false;
            }
            i = 3;
        }
        Object obj = map.get("length");
        if (obj != null) {
            if (!(obj instanceof Integer) && !(obj instanceof Long)) {
                return false;
            }
            i++;
        }
        return i == map.size();
    }

    @SuppressFBWarnings({"DE_MIGHT_IGNORE"})
    private void readContentFromInitStream() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                InputStream inputStream = (InputStream) Preconditions.assertNotNull(this.blobContentStream, "content stream");
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read < 0) {
                            inputStream.close();
                            this.blobContentStream = null;
                            this.blobContent = byteArrayOutputStream.toByteArray();
                            this.blobLength = r0.length;
                            return;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                throw new CouchbaseLiteError("Failed reading blob content stream", e);
            }
        } catch (Throwable th3) {
            this.blobContentStream = null;
            throw th3;
        }
    }

    /* JADX WARN: Finally extract failed */
    @NonNull
    @SuppressFBWarnings({"DE_MIGHT_IGNORE"})
    private C4BlobKey writeDatabaseFromInitStream(@NonNull C4BlobStore c4BlobStore) throws LiteCoreException, IOException {
        if (this.blobContentStream == null) {
            throw new CouchbaseLiteError("Blob stream is null");
        }
        try {
            C4BlobWriteStream openWriteStream = c4BlobStore.openWriteStream();
            try {
                byte[] bArr = new byte[8192];
                int i = 0;
                while (true) {
                    int read = this.blobContentStream.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    openWriteStream.write(bArr, read);
                    i += read;
                }
                openWriteStream.install();
                C4BlobKey computeBlobKey = openWriteStream.computeBlobKey();
                openWriteStream.close();
                try {
                    this.blobContentStream.close();
                } catch (IOException unused) {
                }
                this.blobContentStream = null;
                this.blobLength = i;
                byte[] bArr2 = this.blobContent;
                if (bArr2 != null && bArr2.length <= 8192) {
                    this.blobContent = bArr;
                }
                return computeBlobKey;
            } finally {
            }
        } catch (Throwable th) {
            try {
                this.blobContentStream.close();
            } catch (IOException unused2) {
            }
            this.blobContentStream = null;
            throw th;
        }
    }

    @Nullable
    public String digest() {
        return this.blobDigest;
    }

    @Override // com.couchbase.lite.internal.fleece.FLEncodable
    public void encodeTo(@NonNull FLEncoder fLEncoder) {
        boolean z = fLEncoder.getArg(ENCODER_ARG_QUERY_PARAM) != null;
        if (!z) {
            installInDatabase(fLEncoder.getArg(ENCODER_ARG_DB));
        }
        fLEncoder.beginDict(4L);
        fLEncoder.writeKey("@type");
        fLEncoder.writeValue(TYPE_BLOB);
        fLEncoder.writeKey("length");
        fLEncoder.writeValue(Long.valueOf(this.blobLength));
        fLEncoder.writeKey("content_type");
        fLEncoder.writeValue(this.contentType);
        if (this.blobDigest != null) {
            fLEncoder.writeKey(PROP_DIGEST);
            fLEncoder.writeValue(this.blobDigest);
        }
        if (z) {
            fLEncoder.writeKey("data");
            fLEncoder.writeValue(getContent());
        }
        fLEncoder.endDict();
    }

    public boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Blob)) {
            return false;
        }
        Blob blob = (Blob) obj;
        String str2 = this.blobDigest;
        return (str2 == null || (str = blob.blobDigest) == null) ? Arrays.equals(getContent(), blob.getContent()) : str2.equals(str);
    }

    public void finalize() throws Throwable {
        try {
            InputStream inputStream = this.blobContentStream;
            if (inputStream == null) {
                return;
            }
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        } finally {
            super.finalize();
        }
    }

    @Nullable
    public byte[] getContent() {
        if (this.blobContentStream != null) {
            readContentFromInitStream();
        }
        byte[] bArr = this.blobContent;
        if (bArr != null) {
            return copyBytes(bArr);
        }
        if (this.database != null) {
            return getContentFromDatabase();
        }
        if (this.blobDigest != null) {
            return null;
        }
        com.couchbase.lite.internal.logging.Log.m9908w(LogDomain.DATABASE, "Blob has no digest");
        return null;
    }

    @Nullable
    public InputStream getContentStream() {
        if (this.blobContentStream != null) {
            return null;
        }
        if (this.blobContent != null) {
            return new ByteArrayInputStream(this.blobContent);
        }
        BaseDatabase baseDatabase = this.database;
        if (baseDatabase != null) {
            return getStreamFromDatabase(baseDatabase);
        }
        if (this.blobDigest == null) {
            com.couchbase.lite.internal.logging.Log.m9908w(LogDomain.DATABASE, "Blob has no digest");
        }
        return null;
    }

    @NonNull
    public String getContentType() {
        return this.contentType;
    }

    @NonNull
    public Map<String, Object> getProperties() {
        HashMap hashMap = new HashMap();
        hashMap.put(PROP_DIGEST, this.blobDigest);
        hashMap.put("length", Long.valueOf(this.blobLength));
        hashMap.put("content_type", this.contentType);
        return hashMap;
    }

    public int hashCode() {
        return Arrays.hashCode(getContent());
    }

    public void installInDatabase(@Nullable Database database) {
        BaseDatabase baseDatabase = this.database;
        if (baseDatabase != null) {
            if (database != null && !baseDatabase.equals(database)) {
                throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("BlobDifferentDatabase"));
            }
            if (this.blobDigest == null) {
                throw new CouchbaseLiteError("Blob has no digest");
            }
            return;
        }
        this.database = database;
        if (this.blobDigest != null) {
            return;
        }
        try {
            C4BlobStore blobStore = database.getBlobStore();
            try {
                C4BlobKey blobKey = getBlobKey(blobStore);
                try {
                    this.blobDigest = blobKey.toString();
                    blobKey.close();
                    if (blobStore != null) {
                        blobStore.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            this.database = null;
            this.blobDigest = null;
            throw new CouchbaseLiteError("Failed reading blob content from database", e);
        }
    }

    public long length() {
        return this.blobLength;
    }

    @NonNull
    public String toJSON() {
        if (this.blobDigest == null) {
            throw new CouchbaseLiteError("A Blob may be encoded as JSON only after it has been saved in a database");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("@type", TYPE_BLOB);
        hashMap.put(PROP_DIGEST, this.blobDigest);
        hashMap.put("length", Long.valueOf(this.blobLength));
        hashMap.put("content_type", this.contentType);
        try {
            return JSONUtils.toJSON((Map<?, ?>) hashMap).toString();
        } catch (JSONException e) {
            throw new CouchbaseLiteError("Could not parse Blob JSON", e);
        }
    }

    @NonNull
    public String toString() {
        return "Blob{" + ClassUtils.objId(this) + ": " + this.blobDigest + MotionUtils.f31761c + this.contentType + ", " + length() + ")}";
    }

    public long updateSize() {
        BaseDatabase baseDatabase = this.database;
        if (baseDatabase == null) {
            return -1L;
        }
        try {
            C4BlobStore blobStore = baseDatabase.getBlobStore();
            try {
                C4BlobKey create = C4BlobKey.create(this.blobDigest);
                try {
                    long size = blobStore.getSize(create);
                    if (size >= 0) {
                        this.blobLength = size;
                    }
                    if (create != null) {
                        create.close();
                    }
                    blobStore.close();
                    return size;
                } finally {
                }
            } finally {
            }
        } catch (LiteCoreException unused) {
            return -1L;
        }
    }

    /* loaded from: classes4.dex */
    public static final class BlobInputStream extends InputStream {
        private C4BlobReadStream blobStream;
        private final byte[] buf = new byte[1];
        private C4BlobKey key;
        private C4BlobStore store;

        public BlobInputStream(@NonNull C4BlobKey c4BlobKey, @NonNull C4BlobStore c4BlobStore) throws LiteCoreException {
            this.key = (C4BlobKey) Preconditions.assertNotNull(c4BlobKey, "key");
            this.store = (C4BlobStore) Preconditions.assertNotNull(c4BlobStore, "store");
            this.blobStream = c4BlobStore.openReadStream(c4BlobKey);
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return super.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            C4BlobReadStream c4BlobReadStream = this.blobStream;
            if (c4BlobReadStream != null) {
                c4BlobReadStream.close();
                this.blobStream = null;
            }
            C4BlobKey c4BlobKey = this.key;
            if (c4BlobKey != null) {
                c4BlobKey.close();
                this.key = null;
            }
            C4BlobStore c4BlobStore = this.store;
            if (c4BlobStore != null) {
                c4BlobStore.close();
                this.store = null;
            }
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            throw new UnsupportedOperationException("'mark()' not supported for Blob stream");
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.key != null) {
                byte[] bArr = this.buf;
                if (read(bArr, 0, bArr.length) <= 0) {
                    return -1;
                }
                byte[] bArr2 = this.buf;
                int i = bArr2[0] & 255;
                bArr2[0] = 0;
                return i;
            }
            throw new IOException("Stream is closed");
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            throw new UnsupportedOperationException("'reset()' not supported for Blob stream");
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (this.key == null) {
                throw new IOException("Stream is closed");
            }
            try {
                this.blobStream.seek(j);
                return j;
            } catch (LiteCoreException e) {
                throw new IOException(e);
            }
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            Preconditions.assertNotNull(bArr, "buffer");
            if (i < 0) {
                throw new IndexOutOfBoundsException("Read offset < 0: " + i);
            }
            if (i2 >= 0) {
                if (i + i2 > bArr.length) {
                    throw new IndexOutOfBoundsException("off + len > buf.length (" + i + ", " + i2 + ", " + bArr.length + MotionUtils.f31762d);
                }
                if (i2 == 0) {
                    return 0;
                }
                if (this.key != null) {
                    try {
                        int read = this.blobStream.read(bArr, i, i2);
                        if (read <= 0) {
                            return -1;
                        }
                        return read;
                    } catch (LiteCoreException e) {
                        throw new IOException("Failed reading blob", e);
                    }
                }
                throw new IOException("Stream is closed");
            }
            throw new IndexOutOfBoundsException("Read length < 0: " + i2);
        }
    }

    public Blob(@NonNull String str, @NonNull InputStream inputStream) {
        Preconditions.assertNotNull(str, CouchFieldKey.KEY_CONTENT_TYPE);
        this.contentType = str;
        initStream(inputStream);
    }

    public Blob(@NonNull String str, @NonNull URL url) throws IOException {
        Preconditions.assertNotNull(str, CouchFieldKey.KEY_CONTENT_TYPE);
        Preconditions.assertNotNull(url, "fileUrl");
        if ("file".equalsIgnoreCase(url.getProtocol())) {
            this.contentType = str;
            initStream(url.openStream());
            return;
        }
        throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("NotFileBasedURL", url));
    }

    private void installInDatabase(@Nullable Object obj) {
        if (this.database == null && !(obj instanceof Database)) {
            throw new CouchbaseLiteError("No database for Blob save");
        }
        installInDatabase((Database) obj);
    }

    public Blob(@NonNull BaseDatabase baseDatabase, @NonNull Map<String, Object> map) {
        this.database = baseDatabase;
        this.blobDigest = (String) map.get(PROP_DIGEST);
        Object obj = map.get("length");
        if (obj instanceof Number) {
            this.blobLength = ((Number) obj).longValue();
        } else {
            com.couchbase.lite.internal.logging.Log.m9911w(LogDomain.DATABASE, "Blob length unspecified for blob %s: using 0.", this.blobDigest);
        }
        String str = (String) map.get("content_type");
        if (str == null) {
            com.couchbase.lite.internal.logging.Log.m9911w(LogDomain.DATABASE, "Blob type unspecified for blob %s: using '%s'", this.blobDigest, "application/octet-stream");
            str = "application/octet-stream";
        }
        this.contentType = str;
        Object obj2 = map.get("data");
        if (obj2 instanceof byte[]) {
            this.blobContent = (byte[]) obj2;
        }
        if (this.blobDigest == null && this.blobContent == null) {
            com.couchbase.lite.internal.logging.Log.m9908w(DOMAIN, "Blob read from database has neither digest nor data.");
        }
    }
}
