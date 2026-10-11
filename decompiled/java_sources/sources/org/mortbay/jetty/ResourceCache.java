package org.mortbay.jetty;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mortbay.component.AbstractLifeCycle;
import org.mortbay.io.Buffer;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.resource.Resource;
import org.mortbay.resource.ResourceFactory;

/* loaded from: classes13.dex */
public class ResourceCache extends AbstractLifeCycle implements Serializable {
    protected transient Map _cache;
    protected transient int _cachedFiles;
    protected transient int _cachedSize;
    protected transient Content _leastRecentlyUsed;
    private MimeTypes _mimeTypes;
    protected transient Content _mostRecentlyUsed;
    private int _maxCachedFileSize = 1048576;
    private int _maxCachedFiles = 2048;
    private int _maxCacheSize = 16777216;

    /* loaded from: classes13.dex */
    public class Content implements HttpContent {

        /* renamed from: a */
        public String f114778a;

        /* renamed from: b */
        public Resource f114779b;

        /* renamed from: c */
        public long f114780c;

        /* renamed from: f */
        public Buffer f114783f;

        /* renamed from: g */
        public Buffer f114784g;

        /* renamed from: h */
        public Buffer f114785h;

        /* renamed from: e */
        public Content f114782e = this;

        /* renamed from: d */
        public Content f114781d = this;

        public Content(Resource resource) {
            this.f114779b = resource;
            this.f114784g = ResourceCache.this._mimeTypes.getMimeByExtension(this.f114779b.toString());
            this.f114780c = resource.lastModified();
        }

        /* renamed from: a */
        public void m71528a(String str) {
            this.f114778a = str;
            ResourceCache resourceCache = ResourceCache.this;
            Content content = resourceCache._mostRecentlyUsed;
            this.f114782e = content;
            resourceCache._mostRecentlyUsed = this;
            if (content != null) {
                content.f114781d = this;
            }
            this.f114781d = null;
            if (resourceCache._leastRecentlyUsed == null) {
                resourceCache._leastRecentlyUsed = this;
            }
            resourceCache._cache.put(str, this);
            ResourceCache.this._cachedSize += this.f114785h.length();
            ResourceCache.this._cachedFiles++;
            if (this.f114780c != -1) {
                this.f114783f = new ByteArrayBuffer(HttpFields.formatDate(this.f114780c, false));
            }
        }

        /* renamed from: b */
        public boolean m71529b() {
            if (this.f114780c != this.f114779b.lastModified()) {
                invalidate();
                return false;
            }
            ResourceCache resourceCache = ResourceCache.this;
            Content content = resourceCache._mostRecentlyUsed;
            if (content == this) {
                return true;
            }
            Content content2 = this.f114781d;
            Content content3 = this.f114782e;
            this.f114782e = content;
            resourceCache._mostRecentlyUsed = this;
            if (content != null) {
                content.f114781d = this;
            }
            this.f114781d = null;
            if (content2 != null) {
                content2.f114782e = content3;
            }
            if (content3 != null) {
                content3.f114781d = content2;
            }
            if (resourceCache._leastRecentlyUsed != this || content2 == null) {
                return true;
            }
            resourceCache._leastRecentlyUsed = content2;
            return true;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getBuffer() {
            if (this.f114785h == null) {
                return null;
            }
            return new View(this.f114785h);
        }

        @Override // org.mortbay.jetty.HttpContent
        public long getContentLength() {
            if (this.f114785h != null) {
                return r0.length();
            }
            Resource resource = this.f114779b;
            if (resource != null) {
                return resource.length();
            }
            return -1L;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getContentType() {
            return this.f114784g;
        }

        @Override // org.mortbay.jetty.HttpContent
        public InputStream getInputStream() throws IOException {
            return this.f114779b.getInputStream();
        }

        public String getKey() {
            return this.f114778a;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Buffer getLastModified() {
            return this.f114783f;
        }

        @Override // org.mortbay.jetty.HttpContent
        public Resource getResource() {
            return this.f114779b;
        }

        public void invalidate() {
            synchronized (this) {
                ResourceCache.this._cache.remove(this.f114778a);
                this.f114778a = null;
                ResourceCache.this._cachedSize -= this.f114785h.length();
                ResourceCache resourceCache = ResourceCache.this;
                resourceCache._cachedFiles--;
                if (resourceCache._mostRecentlyUsed == this) {
                    resourceCache._mostRecentlyUsed = this.f114782e;
                } else {
                    this.f114781d.f114782e = this.f114782e;
                }
                if (resourceCache._leastRecentlyUsed == this) {
                    resourceCache._leastRecentlyUsed = this.f114781d;
                } else {
                    this.f114782e.f114781d = this.f114781d;
                }
                this.f114781d = null;
                this.f114782e = null;
                Resource resource = this.f114779b;
                if (resource != null) {
                    resource.release();
                }
                this.f114779b = null;
            }
        }

        public boolean isCached() {
            return this.f114778a != null;
        }

        @Override // org.mortbay.jetty.HttpContent
        public void release() {
        }

        public void setBuffer(Buffer buffer) {
            this.f114785h = buffer;
        }

        public void setContentType(Buffer buffer) {
            this.f114784g = buffer;
        }
    }

    public ResourceCache(MimeTypes mimeTypes) {
        this._mimeTypes = mimeTypes;
    }

    private Content load(String str, Resource resource) throws IOException {
        int i;
        if (resource == null || !resource.exists() || resource.isDirectory()) {
            return null;
        }
        long length = resource.length();
        if (length <= 0 || length >= this._maxCachedFileSize || length >= this._maxCacheSize) {
            return null;
        }
        Content content = new Content(resource);
        fill(content);
        synchronized (this._cache) {
            Content content2 = (Content) this._cache.get(str);
            if (content2 != null) {
                content.release();
                return content2;
            }
            int i2 = this._maxCacheSize - ((int) length);
            while (true) {
                if (this._cachedSize <= i2 && ((i = this._maxCachedFiles) <= 0 || this._cachedFiles < i)) {
                    break;
                }
                this._leastRecentlyUsed.invalidate();
            }
            content.m71528a(str);
            return content;
        }
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public synchronized void doStart() throws Exception {
        this._cache = new HashMap();
        this._cachedSize = 0;
        this._cachedFiles = 0;
    }

    @Override // org.mortbay.component.AbstractLifeCycle
    public void doStop() throws InterruptedException {
        flushCache();
    }

    public void fill(Content content) throws IOException {
        try {
            InputStream inputStream = content.getResource().getInputStream();
            int length = (int) content.getResource().length();
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(length);
            byteArrayBuffer.readFrom(inputStream, length);
            inputStream.close();
            content.setBuffer(byteArrayBuffer);
        } finally {
            content.getResource().release();
        }
    }

    public void flushCache() {
        if (this._cache != null) {
            synchronized (this) {
                Iterator it2 = new ArrayList(this._cache.values()).iterator();
                while (it2.hasNext()) {
                    ((Content) it2.next()).invalidate();
                }
                this._cache.clear();
                this._cachedSize = 0;
                this._cachedFiles = 0;
                this._mostRecentlyUsed = null;
                this._leastRecentlyUsed = null;
            }
        }
    }

    public int getCachedFiles() {
        return this._cachedFiles;
    }

    public int getCachedSize() {
        return this._cachedSize;
    }

    public int getMaxCacheSize() {
        return this._maxCacheSize;
    }

    public int getMaxCachedFileSize() {
        return this._maxCachedFileSize;
    }

    public int getMaxCachedFiles() {
        return this._maxCachedFiles;
    }

    public Content lookup(String str, ResourceFactory resourceFactory) throws IOException {
        synchronized (this._cache) {
            Content content = (Content) this._cache.get(str);
            return (content == null || !content.m71529b()) ? load(str, resourceFactory.getResource(str)) : content;
        }
    }

    public void setMaxCacheSize(int i) {
        this._maxCacheSize = i;
        flushCache();
    }

    public void setMaxCachedFileSize(int i) {
        this._maxCachedFileSize = i;
        flushCache();
    }

    public void setMaxCachedFiles(int i) {
        this._maxCachedFiles = i;
    }

    public Content lookup(String str, Resource resource) throws IOException {
        synchronized (this._cache) {
            Content content = (Content) this._cache.get(str);
            return (content == null || !content.m71529b()) ? load(str, resource) : content;
        }
    }
}
