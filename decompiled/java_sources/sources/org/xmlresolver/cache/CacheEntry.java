package org.xmlresolver.cache;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteKey;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.File;
import java.net.URI;
import org.xmlresolver.catalog.entry.Entry;
import org.xmlresolver.catalog.entry.EntryPublic;
import org.xmlresolver.catalog.entry.EntrySystem;
import org.xmlresolver.catalog.entry.EntryUri;
import org.xmlresolver.utils.PublicId;

/* loaded from: classes16.dex */
public class CacheEntry {
    public final Entry entry;
    public boolean expired;
    public final File file;
    public final long time;
    public final URI uri;

    public CacheEntry(EntryUri entryUri, long j) {
        this.entry = entryUri;
        this.uri = entryUri.baseURI.resolve(entryUri.name);
        this.file = new File(entryUri.uri.getPath());
        this.time = j;
    }

    public String contentType() {
        return this.entry.getProperty(CouchFieldKey.KEY_CONTENT_TYPE);
    }

    public String etag() {
        return this.entry.getProperty(BreakpointSQLiteKey.ETAG);
    }

    public URI location() {
        return this.entry.getProperty("redir") != null ? this.uri.resolve(this.entry.getProperty("redir")) : this.uri;
    }

    public String toString() {
        return this.file.getAbsolutePath();
    }

    public CacheEntry(EntrySystem entrySystem, long j) {
        this.entry = entrySystem;
        this.uri = entrySystem.baseURI.resolve(entrySystem.systemId);
        this.file = new File(entrySystem.uri.getPath());
        this.time = j;
    }

    public CacheEntry(EntryPublic entryPublic, long j) {
        this.entry = entryPublic;
        this.uri = PublicId.encodeURN(entryPublic.publicId);
        this.file = new File(entryPublic.uri.getPath());
        this.time = j;
    }
}
